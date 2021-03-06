#include <cassert>
#include <cerrno>
#include <spdlog/logger.h>
#include <spdlog/spdlog.h>
#include <iostream>
#include "RecvManager.h"

static std::shared_ptr<spdlog::logger> Listener_logger_console = nullptr;

static std::shared_ptr<spdlog::logger> Listener_file_logger = nullptr;

RecvManager::RecvManager(ThreadPool *pool, int listen_sockfd) {
  epollfd = epoll_create(MAX_EVENT_NUMBER);
  assert(epollfd!=-1);
  this->pool = pool;
  this->listen_sockfd = listen_sockfd;

  if (Listener_logger_console==nullptr) {
    Listener_logger_console =
        spdlog::stdout_color_mt("Listener_logger");
  }
  if (Listener_file_logger==nullptr) {
    try {
      spdlog::set_async_mode(8192);
      Listener_file_logger = spdlog::rotating_logger_mt(
          "socketManage_file_logger", "Listener_file_logger.log",
          1024*1024*5, 3);
      spdlog::drop_all();
    } catch (const spdlog::spdlog_ex &ex) {
      std::cout << "Log initialization failed: " << ex.what() << std::endl;
    }
  }
}

void RecvManager::run() {
  addfd(this->epollfd, this->listen_sockfd, false);
  ReceFile::rf_epollfd = epollfd;
  while (!this->run_stop) {
    int number = epoll_wait(epollfd, events, MAX_EVENT_NUMBER, -1);
    if ((number < 0) && (errno!=EINTR)) {
      Listener_logger_console->error("epoll failure\n");
      break;
    }
    for (int i = 0; i < number; i++) {
      int sockfd = events[i].data.fd;
      if (sockfd==this->listen_sockfd) {
        struct sockaddr_in client_address{};
        socklen_t client_addrlength = sizeof(client_address);
        int connfd = accept(this->listen_sockfd, (struct sockaddr *) &client_address,
                            &client_addrlength);
        if (connfd < 0) {
          Listener_logger_console->error("errno is: {}\n", errno);
          continue;
        }
        receFiles[connfd].initSocket(connfd, client_address);
        addfd(this->epollfd, connfd, true, false);
      } else if (events[i].events & (EPOLLRDHUP | EPOLLHUP | EPOLLERR)) {

      } else if (events[i].events & EPOLLIN) {
        pool->append(receFiles + sockfd);
      } else if (events[i].events & EPOLLOUT) {

      }
    }
  }
  this->closeListen(this->listen_sockfd);
}

int RecvManager::createListen(char * listen_ip, int port) {
  int listenSockfd;
  struct sockaddr_in listenAddr{};
  // 初始化监听socket
  if ((listenSockfd = socket(AF_INET, SOCK_STREAM, 0))==-1) {
    perror("Creating listenSocket failed");
    return -1;
  }
  struct linger tmp = {1, 0};
  setsockopt(listenSockfd, SOL_SOCKET, SO_LINGER, &tmp, sizeof(tmp));

  bzero(&listenAddr, sizeof(listenAddr));
  listenAddr.sin_family = AF_INET;
  inet_pton(AF_INET, listen_ip, &listenAddr.sin_addr);
  listenAddr.sin_port = htons(static_cast<uint16_t>(port));
  if (bind(listenSockfd, (struct sockaddr *) &listenAddr,
           sizeof(struct sockaddr))==-1) {
    perror("Bind error\n");
    return -1;
  }
  if (listen(listenSockfd, BACKLOG)==-1) {
    perror("listen() error\n");
    return -1;
  }
  return listenSockfd;
}
bool RecvManager::closeListen(int sockfd) {
  if (sockfd!=-1) {
    removefd(this->epollfd, sockfd);
  }
  return true;
}

#ifndef COFLOWSIM_LISTENER_H
#define COFLOWSIM_LISTENER_H

#include <arpa/inet.h>
#include <lib/epollFunctions.h>
#include <lib/threadclass.h>
#include <netinet/in.h>
#include <cstdio>
#include <strings.h>
#include <lib/threadpool.h>
#include "receFile.h"

#define MAX_EVENT_NUMBER 10000
#define BACKLOG 65535
#define RECV_FILE_NUM 65536

class Listener : public ThreadClass {
public:
  Listener(ThreadPool<ThreadClass> *pool, int listen_port);
//  ~Listener(){}
  void run() override;




private:
  bool closeListen(int sockfd);
  int createListen(int port);

  int epollfd;
  epoll_event events[MAX_EVENT_NUMBER];

  ReceFile receFiles[RECV_FILE_NUM];
  ThreadPool<ThreadClass> *pool;
  char serverIP[64] = "127.0.0.1";
  int listen_port;
//  bool run_stop;
};
#endif // !LISTENER_H
//
// Created by he on 4/17/18.
//

#include "receFile.h"
#include <lib/epollFunctions.h>
int ReceFile::rf_epollfd = -1;
void ReceFile::initSocket(int sockfd, const sockaddr_in &addr) {
  m_Sockfd = sockfd;
  int error = 0;
  socklen_t len = sizeof(error);
  getsockopt(m_Sockfd, SOL_SOCKET, SO_ERROR, &error, &len);
  int reuse = 1;
  setsockopt(m_Sockfd, SOL_SOCKET, SO_REUSEADDR, &reuse, sizeof(reuse));
}

void ReceFile::closeConn(bool real_close) {
  if (real_close && (m_Sockfd != -1)) {
    removefd(rf_epollfd, m_Sockfd);
    m_Sockfd = -1;
  }
}

void ReceFile::run() {
  // recv函数接收数据到缓冲区buffer中
  char buffer[RECEFILE_BUFFER_SIZE];
  bzero(buffer, RECEFILE_BUFFER_SIZE);
  char file_name[RECEFILE_FILE_NAME_MAX_SIZE + 1];
  memset(file_name, '\0', RECEFILE_FILE_NAME_MAX_SIZE);
  // 打开文件，准备写入
  int nowTime = clock();
  stringstream ss;
  ss << nowTime;
  ss >> file_name + strlen(file_name);
  ss.clear();
  ss << "_";
  ss >> file_name + strlen(file_name);
  ss.clear();
  ss << m_Sockfd;
  ss >> file_name + strlen(file_name);
  ss.clear();
  ss << ".txt";
  ss >> file_name + strlen(file_name);
  ss.clear();

  // 每接收一段数据，便将其写入文件中，循环直到文件接收完并写完为止
  bzero(buffer, RECEFILE_BUFFER_SIZE);
  int bytes_read = 0;
  while (true) {
    bytes_read =
        static_cast<int>(recv(m_Sockfd, buffer, RECEFILE_BUFFER_SIZE, 0));
    if (bytes_read < 0) {
      perror("ReceFile error: bytes_read < 0 \n");
      break;
    }
    if (bytes_read == 0) {
      this->closeConn();
      break;
    }
    bzero(buffer, RECEFILE_BUFFER_SIZE);
  }
}

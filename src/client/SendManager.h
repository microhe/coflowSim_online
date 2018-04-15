//
// Created by he on 4/12/18.
//

#ifndef COFLOWSIM_SENDMANAGER_H
#define COFLOWSIM_SENDMANAGER_H

#include <list>
#include <lib/locker.h>
#include <lib/threadclass.h>
#include <lib/threadpool.h>
#include "TrafficControlManager.h"
#include "Sender.h"
using namespace std;

#define FILE_NAME_MAX_SIZE 32
#define SEND_WAIT 0
#define SEND_RUNNING 1
#define SEND_END 2
struct SendTask {
  char destination_ip[64] = "";
  int destination_port = 0;
  double flow_size_MB = 0;
  double speed_Mbs = 0;
  char file_name[FILE_NAME_MAX_SIZE] = "";
  int coflow_id = -1;
  int flow_id = -1;
  int send_state;
  Sender *sender;
};

class SendManager : public ThreadClass {
public:
  SendManager(int task_number = 65536,
              int min_port = 1001,
              int max_port = 65535,
              TrafficControlManager *tc_manager,
              ThreadPool<ThreadClass> *pool);
  bool appendTask(char *ins);
  void run();

private:
  bool createSendTask(struct SendTask *send_task);

  int max_task_number;  // 最大任务数量

  list<struct SendTask *> send_task_wait_queue;   // 发送任务等待队列
  locker wait_queue_locker;
  sem wait_queue_sem;

  list<struct SendTask *> send_task_running_queue; // 发送任务正在进行队列
  locker running_queue_locker;

  bool run_stop;  // 运行停止

  int min_port;   // 最小端口号
  int max_port;   // 最大端口号

  TrafficControlManager *tc_manager;
  ThreadPool<ThreadClass> *pool;

};

#endif //COFLOWSIM_SENDMANAGER_H

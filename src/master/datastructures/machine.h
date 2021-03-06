//
// Created by he on 1/20/18.
//

#ifndef MASTER_MACHINE_H
#define MASTER_MACHINE_H

#include <cstring>
#include <queue>
#include <socket/socketManage.h>
using namespace std;
#define TMORECV_MAX_SIZE 4096

struct FlowEndInfo {
  int coflowID;
  int flowID;
  int endTime;
};
class Machine : public SocketManage {
public:
  Machine(int machineID, char *sockip, int sockport);

  ~Machine() {}

  int getMachineID() const;

  void run() override;

  bool createConnect();

  int getRemainBandwidth() const;
  void setRemainBandwidth(int remainBandwidth);

  char *getSocketip();
  void setSocketip(char *socketip);

  int getSocketport() const;
  void setSocketport(int socketport);

  bool
  parseFlowsFinishedInfo(); // 将socketMangage的recvmsgcpoy到flowsFinishedInfo,再解析
  bool
  getOneFlowEndInfo(int &coflowID, int &flowID,
                    int &endtime); //从flowsFinishedInfo中解析出一条flowEndInfo

private:
  const int machineID;

  char socketip[64];
  int socketport;
  int remainBandwidth; // 记录本机的剩余带宽

  queue<FlowEndInfo *> flowsFinishedInfo; // 记录收到的flow完成信息

  char *tmprecv;
  int tmprecvIndex;
};

#endif // MASTER_MACHINE_H

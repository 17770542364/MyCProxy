/*
 * @Author: Jitong Zeng
 * @Date: 2022-07-21 19:44:34
 * @LastEditors: Jitong Zeng
 * @LastEditTime: 2022-07-21 19:55:57
 * @FilePath: /MyCProxy/server/Server.h
 * @Descripttion: 
 */
#pragma once

#include <sys/epoll.h>
#include <functional>
#include <iostream>
#include <mutex>
#include <unordered_map>

#include "Control.h"
#include "Tunnel.h"
#include "lib/CtlConn.h"
#include "lib/EventLoop.h"
#include "lib/EventLoopThread.h"
#include "lib/EventLoopThreadPool.h"
#include "lib/ProxyConn.h"

const int UnclaimedProxyMapLen = 4;
struct UnclaimedProxyMap {
    std::unordered_map<int, SP_ProxyConn> conns;
    std::mutex mutex;
};

class Server : public std::enable_shared_from_this<Server> {
public:
    Server(int threadNum, int ctlPort, int proxyPort);
    void start();
    std::unordered_map<std::string, SP_Control> control_map_;
    SP_EventLoopThreadPool eventLoopThreadPool_;
    SP_EventLoopThread publicListenThread_;
    int getProxyPort() { return proxyPort_; }
    UnclaimedProxyMap* getUncalimedProxyMapByFd(int fd);

private:
    int threadNum_;
    int ctlPort_;
    int proxyPort_;
    int ctlListenFd_;
    int proxyListenFd_;
    SP_EventLoop loop_;
    SP_Channel ctl_acceptor_;
    SP_Channel proxy_acceptor_;
    UnclaimedProxyMap* hashedUnclaimedProxyMaps[UnclaimedProxyMapLen];
    void newCtlConnHandler();
    void newProxyConnHandler();
    void postHandler();
    void claimProxyConn(void*, SP_ProxyConn);
};
/*
 * @Author: Jitong Zeng
 * @Date: 2022-07-21 19:44:21
 * @LastEditors: Jitong Zeng
 * @LastEditTime: 2022-07-21 20:18:26
 * @FilePath: /MyCProxy/server/PublicConn.h
 * @Descripttion: 
 */
#pragma once

#include <sys/epoll.h>
#include <memory>

#include "lib/Channel.h"
#include "lib/EventLoop.h"
#include "lib/EventLoopThread.h"
#include "lib/TranConn.h"

class Tunnel;

class PublicConn : public TranConn, public std::enable_shared_from_this<PublicConn> {
public:
    PublicConn(int fd, SP_EventLoopThread thread, Tunnel* tun, std::string proxy_id)
    : TranConn(fd, thread), tun_(tun), proxy_id_(proxy_id), closing_(false) {
        channel_->setEvents(EPOLLET | EPOLLIN | EPOLLRDHUP);
        channel_->setReadHandler(std::bind(&PublicConn::handleRead, this));
        channel_->setPostHandler(std::bind(&PublicConn::postHandle, this));
        channel_->setNeedCloseWhenDelete(false);
    }
    ~PublicConn() { printf("publicConn killing\n"); }

private:
    Tunnel* tun_;
    std::string proxy_id_;
    bool closing_;
    void handleRead();
    void postHandle();

};

using SP_PublicConn = std::shared_ptr<PublicConn>;
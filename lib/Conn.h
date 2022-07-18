/*
 * @Author: Jitong Zeng
 * @Date: 2022-07-15 17:13:42
 * @LastEditors: Jitong Zeng
 * @LastEditTime: 2022-07-18 20:35:33
 * @FilePath: /MyCProxy/lib/Conn.h
 * @Descripttion: 
 */
#pragma once
#include <memory>

#include "Channel.h"
#include "EventLoop.h"

class Conn : public ChannelOwner {
public:
    Conn(int fd, SP_EventLoop loop) : fd_(fd), loop_(loop), channel_(new Channel(fd)){};
    ~Conn() { loop_->removeFromPoller(channel_); }
    SP_Channel getChannel() { return channel_; }
    int getFd() { return fd_; }

protected:
    int fd_;
    SP_EventLoop loop_;
    SP_Channel channel_;
    bool inBufferEmpty_;
};

typedef std::shared_ptr<Conn> SP_Conn;
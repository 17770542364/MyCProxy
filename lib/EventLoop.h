/*
 * @Author: Jitong Zeng
 * @Date: 2022-07-15 17:13:42
 * @LastEditors: Jitong Zeng
 * @LastEditTime: 2022-07-18 20:36:03
 * @FilePath: /MyCProxy/lib/EventLoop.h
 * @Descripttion: 
 */
#pragma once
#include <memory>
#include <mutex>

#include "Channel.h"
#include "Epoll.h"
#include "Util.h"

class EventLoop {
public:
    EventLoop();
    void loop();
    void addToPoller(SP_Channel channel);
    void updatePoller(SP_Channel channel);
    void removeFromPoller(SP_Channel channel);

private:
    SP_Epoll poller_;
};

typedef std::__shared_ptr<EventLoop> SP_EventLoop;
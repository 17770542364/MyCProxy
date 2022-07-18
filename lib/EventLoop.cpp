/*
 * @Author: Jitong Zeng
 * @Date: 2022-07-15 17:13:42
 * @LastEditors: Jitong Zeng
 * @LastEditTime: 2022-07-18 20:35:59
 * @FilePath: /MyCProxy/lib/EventLoop.cpp
 * @Descripttion: 
 */
#include "EventLoop.h"
#include "Channel.h"
#include "Epoll.h"
#include "Util.h"

#include <sys/eventfd.h>
#include <mutex>
#include <vector>

EventLoop::EventLoop() : poller_(new Epoll()){};

void EventLoop::addToPoller(SP_Channel channel) { poller_->epoll_add(channel);}

void EventLoop::updatePoller(SP_Channel channel) { poller_->epoll_mod(channel);}

void EventLoop::removeFromPoller(SP_Channel channel) { poller_->epoll_del(channel);}

void EventLoop::loop() {
    std::vector<SP_Channel> readyChannels;
    for (; ;) {
        readyChannels.clear();
        readyChannels = poller_->waitForReadyChannels();
        for (SP_Channel chan : readyChannels) {
            chan->handleEvents();
        }
    }
}
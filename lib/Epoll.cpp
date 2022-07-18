/*
 * @Author: Jitong Zeng
 * @Date: 2022-07-15 17:13:42
 * @LastEditors: Jitong Zeng
 * @LastEditTime: 2022-07-18 20:35:51
 * @FilePath: /MyCProxy/lib/Epoll.cpp
 * @Descripttion: 
 */
#include <assert.h>
#include <sys/epoll.h>
#include <iostream>

#include "Channel.h"
#include "Epoll.h"
#include "spdlog/spdlog.h"

const int EPOLLWAIT_TIME = 10000;
const int EVENTSNUM = 4096;

Epoll::Epoll() : epoll_fd_(epoll_create1(EPOLL_CLOEXEC)), epoll_events_(EVENTSNUM) {
    assert(epoll_fd_ > 0);
}

void Epoll::epoll_add(SP_Channel channel) {
    int fd = channel->getFd();
    epoll_event event;
    event.data.fd = fd;
    event.events = channel->getEvents();
    if (epoll_ctl(epoll_fd_, EPOLL_CTL_ADD, fd, &event) < 0) {
        SPDLOG_CRITICAL("epoll_ctl fd: {} err: {}", fd, strerror(errno));
    } else {
        fd2chan_[fd] = channel;
    }
}

void Epoll::epoll_mod(SP_Channel channel) {
    int fd = channel->getFd();
    epoll_event event;
    event.data.fd = fd;
    event.events = channel->getEvents();
    if (epoll_ctl(epoll_fd_, EPOLL_CTL_MOD, fd, &event) < 0) {
        perror("epoll_mod error");
        fd2chan_[fd].reset();
    }
}

void Epoll::epoll_del(SP_Channel channel) {
    int fd = channel->getFd();
    epoll_event event;
    event.data.fd = fd;
    event.events = channel->getEvents();
    if (epoll_ctl(epoll_fd_, EPOLL_CTL_DEL, fd, &event) < 0) {
        perror("epoll_del error");
    }
    fd2chan_[fd].reset();
}

std::vector<SP_Channel> Epoll::waitForReadyChannels() {
    for (;;) {
        int event_count = 
            epoll_wait(epoll_fd_, &*epoll_events_.begin(), epoll_events_.size(), EPOLLWAIT_TIME);
        if (event_count < 0) {
            perror("epoll wait error");
            continue;
        }

        std::vector<SP_Channel> readyChannels = getReadyChannel(event_count);
        if (readyChannels.size() > 0) {
            return readyChannels;
        }
    }
}

std::vector<SP_Channel> Epoll::getReadyChannel(int event_count) {
    std::vector<SP_Channel> ret;
    for (int i=0; i<event_count; i++) {
        epoll_event cur_event = epoll_events_[i];
        int fd = cur_event.data.fd;
        SP_Channel cur_chan = fd2chan_[fd];
        if (cur_chan) {
            cur_chan->setRevents(cur_event.events);
            ret.emplace_back(cur_chan);
        } else {
            std::cout << "fd" << fd << "no exist in fd2chan_" << std::endl;
        }
    }
    return ret;
}
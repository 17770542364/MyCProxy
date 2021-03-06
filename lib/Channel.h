/*
 * @Author: Jitong Zeng
 * @Date: 2022-07-15 17:13:42
 * @LastEditors: Jitong Zeng
 * @LastEditTime: 2022-07-24 15:02:12
 * @FilePath: /MyCProxy/lib/Channel.h
 * @Descripttion: 
 */
#pragma once
#include <unistd.h>
#include <functional>
#include <memory>

class ChannelOwner {};
typedef std::shared_ptr<ChannelOwner> SP_ChannelOwer;

class Channel {
public:
    typedef std::function<void()> EventHandler;
    Channel(int fd) : fd_(fd), needCloseWhenDelete(true){};
    ~Channel() {
        if (needCloseWhenDelete) {
            close(fd_);
        }
    }
    void setFd(int fd) {fd_ = fd; }
    int getFd() { return fd_; }
    void setEvents(__uint32_t events) { events_ = events; }
    void setRevents(__uint32_t events) { revents_ = events; }
    void addEvents(__uint32_t events) { events_ |= events; }
    __uint32_t getEvents() { return events_; }
    __uint32_t getRevents() { return revents_; }
    void setReadHandler(EventHandler handler) { readHandler_ = handler; }
    void setWriteHandler(EventHandler handler) { writeHandler_ = handler; }
    void setErrorHandler(EventHandler handler) { errorHandler_ = handler; }
    void setPostHandler(EventHandler handler) { postHandler_ = handler; }
    void setChannelWoner(SP_ChannelOwer owner) { belong_to_ = owner; }
    void handleEvents();
    bool isPeerClosed() { return peerClosed_; }
    void setNeedCloseWhenDelete(bool needClose) { needCloseWhenDelete = needClose; }
    

private:
    int fd_;
    bool needCloseWhenDelete;
    __uint32_t events_;
    __uint32_t revents_;
    EventHandler readHandler_ = []() {};
    EventHandler errorHandler_ = []() {};
    EventHandler writeHandler_ = []() {};
    // 每次事件处理后，对当前channel的事件更新或将当前channel从epoll中去掉
    EventHandler postHandler_ = []() {};
    SP_ChannelOwer belong_to_;
    bool peerClosed_;
};

typedef std::shared_ptr<Channel> SP_Channel;

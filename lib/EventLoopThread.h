/*
 * @Author: Jitong Zeng
 * @Date: 2022-07-15 17:13:42
 * @LastEditors: Jitong Zeng
 * @LastEditTime: 2022-07-18 20:36:08
 * @FilePath: /MyCProxy/lib/EventLoopThread.h
 * @Descripttion: 
 */
#pragma once
#include <condition_variable>
#include <functional>
#include <memory>
#include <mutex>
#include <thread>

#include "Conn.h"
#include "EventLoop.h"

class EventLoopThread {
public:
    EventLoopThread()
        : loop_(new EventLoop()),
        thread_(std::bind(&EventLoopThread::threadFunc, this)),
        mutex_(),
        cond_(){};
    ~EventLoopThread();
    void startLoop();
    void threadFunc();
    void addChannel(SP_Channel);
    void addConn(SP_Conn);
    SP_EventLoop getLoop() { return loop_; }

private:
    SP_EventLoop loop_;
    bool started_;
    std::thread thread_;
    std::mutex mutex_;
    std::condition_variable cond_;
};

using SP_EventLoopThread = std::shared_ptr<EventLoopThread>;
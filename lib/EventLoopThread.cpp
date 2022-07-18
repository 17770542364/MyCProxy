/*
 * @Author: Jitong Zeng
 * @Date: 2022-07-15 17:13:42
 * @LastEditors: Jitong Zeng
 * @LastEditTime: 2022-07-18 20:36:06
 * @FilePath: /MyCProxy/lib/EventLoopThread.cpp
 * @Descripttion: 
 */
#include <assert.h>
#include <exception>
#include <iostream>
#include <mutex>
#include <thread>

#include "Conn.h"
#include "EventLoopThread.h"
#include "spdlog/spdlog.h"

EventLoopThread::~EventLoopThread() {
    // 等待线程退出
    if (started_) {
        thread_.join();
    }
}

void EventLoopThread::threadFunc() try {
    if (!loop_) {
        throw "loop_ is null";
    }

    {
        std::unique_lock<std::mutex> lock(mutex_);
        started_ = true;
        cond_.notify_all();
    }
    loop_->loop();
} catch (std::exception& e) {
    SPDLOG_CRITICAL("EventLoopThread::threadFunc exception: {}", e.what());
    abort();
}

void EventLoopThread::startLoop() {
    std::unique_lock<std::mutex> lock(mutex_);
    while (!started_) cond_.wait(lock);
}

void EventLoopThread::addChannel(SP_Channel chan) { loop_->addToPoller(chan); }

void EventLoopThread::addConn(SP_Conn conn) { loop_->addToPoller(conn->getChannel()); }
/*
 * @Author: Jitong Zeng
 * @Date: 2022-07-15 17:13:42
 * @LastEditors: Jitong Zeng
 * @LastEditTime: 2022-07-18 20:36:11
 * @FilePath: /MyCProxy/lib/EventLoopThreadPool.cpp
 * @Descripttion: 
 */
#include "EventLoopThreadPool.h"
#include "EventLoopThread.h"

void EventLoopThreadPool::start() {
    for (int i=0; i<numThreads_; i++) {
        SP_EventLoopThread t(new EventLoopThread());
        t->startLoop();
        threads_.emplace_back(t);
    }
}

SP_EventLoopThread EventLoopThreadPool::pickRandThread() {
    SP_EventLoopThread t;
    {
        std::unique_lock<std::mutex> lock(thread_mutex_);
        t = threads_[nextWorkThreadIdx_];
        nextWorkThreadIdx_ = (nextWorkThreadIdx_+1) % numThreads_;
    }
    return t;
}
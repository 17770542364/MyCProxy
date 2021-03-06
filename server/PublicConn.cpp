/*
 * @Author: Jitong Zeng
 * @Date: 2022-07-21 19:44:14
 * @LastEditors: Jitong Zeng
 * @LastEditTime: 2022-07-22 20:39:36
 * @FilePath: /MyCProxy/server/PublicConn.cpp
 * @Descripttion: 
 */
#include "PublicConn.h"
#include <fcntl.h>
#include <string.h>
#include <unistd.h>
#include "Tunnel.h"
#include "spdlog/spdlog.h"

void PublicConn::handleRead() {
    try {
        int bs = splice(fd_, NULL, pipe_fds_[1], NULL, 2048, SPLICE_F_MOVE | SPLICE_F_NONBLOCK);
        if (bs < 0) {
            SPDLOG_CRITICAL("public_id: {} -> pipe_fd: {} splice err: {}", fd_, pipe_fds_[1], strerror(errno));
            return;
        }
        // 添加closing_判断的原因详看localConn.cpp
        if (bs == 0 && !closing_) {
            // 收到fin包，通知proxy 
            tun_->shutdownFromPublic(proxy_id_, getTranCount());
            closing_ = true;
            return;
        }
        bs = splice(pipe_fds_[0], NULL, peer_conn_fd_, NULL, bs, SPLICE_F_MOVE | SPLICE_F_NONBLOCK);
        if (bs < 0) {
            SPDLOG_CRITICAL("proxy_id {} pipe {} -> proxy_fd: {} splice err: {}", proxy_id_, pipe_fds_[0], peer_conn_fd_, strerror(errno));
            return;
        }
        incrTranCount(bs);
    } catch (const std::exception& e) {
        SPDLOG_CRITICAL("read public except: {}", e.what());
    }
}

void PublicConn::postHandle() {
    if (closing_) {
        return;
    }
    channel_->setEvents(EPOLLET | EPOLLIN | EPOLLRDHUP);
    loop_->updatePoller(channel_);
}
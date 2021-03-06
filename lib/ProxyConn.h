/*
 * @Author: Jitong Zeng
 * @Date: 2022-07-15 17:13:42
 * @LastEditors: Jitong Zeng
 * @LastEditTime: 2022-07-18 21:29:53
 * @FilePath: /MyCProxy/lib/ProxyConn.h
 * @Descripttion: 
 */

#pragma once

#include <memory>
#include <mutex>
#include "Buffer.h"
#include "Conn.h"
#include "EventLoop.h"
#include "TranConn.h"

const int MAX_MSG_LEN = 2048;

enum ProxyCtlMsgType { ProxyMetaSet, StartProxyConnReq, StartProxyConnRsp };

struct ProxyCtlMsg {
    u_int32_t len;
    ProxyCtlMsgType type;
    char data[MAX_MSG_LEN];
};

struct ProxyMetaSetMsg {
    char ctl_id[10];
    char tun_id[10];
    char proxy_id[10];
};

struct StartProxyConnReqMsg {
    u_int32_t public_fd;
    char proxy_id[10];
};

struct StartProxyConnRspMsg {
    u_int32_t public_fd;
    char proxy_id[10];
};

class ProxyConn : public TranConn, public std::enable_shared_from_this<ProxyConn> {
public:
    typedef std::shared_ptr<ProxyConn> SP_ProxyConn;
    typedef std::function<void(void*, SP_ProxyConn)> MsgHandler;
    ProxyConn(int fd, SP_EventLoopThread thread) 
        : TranConn{fd, thread},
          close_mutex_(),
          out_buffer_(new Buffer(1024, 65536)),
          is_start_(false),
          half_close_(false) {
        channel_->setEvents(EPOLLET | EPOLLIN | EPOLLOUT | EPOLLRDHUP);
        channel_->setReadHandler(std::bind(&ProxyConn::handleRead, this));
        channel_->setWriteHandler(std::bind(&ProxyConn::handleWrite, this));
        channel_->setPostHandler(std::bind(&ProxyConn::postHandle, this));
    }

    ~ProxyConn() { printf("proxyConn killing\n"); }

    void setProxyMetaSetHandler_(MsgHandler handler) { proxyMetaSetHandler_ = handler; }
    void setStartProxyConnReqHandler_(MsgHandler handler) { startProxyConnReqHandler_ = handler; }
    void setStartProxyConnRspHandler_(MsgHandler handler) { startProxyConnRspHandler_ = handler; }
    void setCloseHandler_(std::function<void(SP_ProxyConn conn)> handler) { closeHandler_ = handler; }
    void setCloseLocalPeerConnHandler_(std::function<void(SP_ProxyConn conn)> handler) {
        closeLocalPeerConnHandler_ = handler;
    }
    void send_msg(ProxyCtlMsg& msg);
    int send_msg_dirct(ProxyCtlMsg& msg);
    void start(SP_TranConn conn) {
        is_start_ = true;
        peerConn_ = conn;
        setPeerConnFd(conn->getFd());
        conn->setPeerConnFd(fd_);
        // ????????????conn???????????????????????????????????????
        (conn->getThread())->addConn(conn);
    }
    bool shutdownFromRemote();
    bool shutdownFromLocal();
    void resetConn();
    int getPeerConnFd() { return peerConn_->getFd(); }
    void setProxyID(std::string proxy_id) { proxy_id_ = proxy_id; }
    std::string getProxyID() { return proxy_id_; }
    bool is_start() { return is_start_; }

private:
    std::mutex close_mutex_;
    SP_Buffer out_buffer_;
    bool is_start_;
    bool half_close_;
    SP_Conn peerConn_;
    std::string proxy_id_;
    void handleRead();
    void handleWrite();
    void postHandle();
    MsgHandler proxyMetaSetHandler_ = [](void*, SP_ProxyConn) {};
    MsgHandler startProxyConnReqHandler_ = [](void*, SP_ProxyConn) {};
    MsgHandler startProxyConnRspHandler_ = [](void*, SP_ProxyConn) {};
    std::function<void(SP_ProxyConn conn)> closeHandler_ = [](SP_ProxyConn) {};
    std::function<void(SP_ProxyConn conn)> closeLocalPeerConnHandler_ = [](SP_ProxyConn) {};
};

ProxyCtlMsg make_proxy_ctl_msg(ProxyCtlMsgType type, char* data, size_t data_len);

size_t get_proxy_ctl_msg_body_size(const ProxyCtlMsg& msg);

using SP_ProxyConn = std::shared_ptr<ProxyConn>;

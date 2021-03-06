#ifndef WINGCHUN_MDENGINEBITFINEX_H
#define WINGCHUN_MDENGINEBITFINEX_H

#include "IMDEngine.h"
#include "longfist/LFConstants.h"
#include "CoinPairWhiteList.h"
#include "PriceBook20Assembler.h"
#include <document.h>
#include <map>
#include <vector>
#include <websocket.h>
WC_NAMESPACE_START

using rapidjson::Document;


struct SubscribeChannel
{
    int channelId;
    string exchange_coinpair;
    //book or trade or ...
    string subType;
};


class MDEngineBitfinex: public IMDEngine,public common::CWebsocketCallBack
{
public:
    /** load internal information from config json */
    virtual void load(const json& j_config);
    virtual void connect(long timeout_nsec);
    virtual void login(long timeout_nsec);
    virtual void logout();
    virtual void release_api();
    virtual void subscribeMarketData(const vector<string>& instruments, const vector<string>& markets);
    virtual bool is_connected() const { return connected; };
    virtual bool is_logged_in() const { return logged_in; };
    virtual string name() const { return "MDEngineBitfinex"; };

public:
    MDEngineBitfinex();

    void on_lws_data(struct lws* conn, const char* data, size_t len);
    void on_lws_connection_error(struct lws* conn);
    int lws_write_subscribe(struct lws* conn);

private:
    virtual void OnConnected(const common::CWebsocket* instance);
    virtual void OnReceivedMessage(const common::CWebsocket* instance,const std::string& msg);
    virtual void OnDisconnected(const common::CWebsocket* instance);

    inline int64_t getTimestamp();

    void onPing(Document& json);
    void onInfo(Document& json);
    void onSubscribed(Document& json);

    void onBook(SubscribeChannel& channel, Document& json);
    void onTrade(SubscribeChannel& channel, Document& json);

    SubscribeChannel findByChannelID(int channelId);

    std::string parseJsonToString(Document &d);
    std::string createBookJsonString(std::string exchange_coinpair);
    std::string createTradeJsonString(std::string exchange_coinpair);

    void loop();


    virtual void set_reader_thread() override;
    void debug_print(std::vector<std::string> &subJsonString);
    void debug_print(std::vector<SubscribeChannel> &websocketSubscribeChannel);


    void makeWebsocketSubscribeJsonString();
private:
    ThreadPtr rest_thread;
    bool connected = false;
    bool logged_in = false;
    bool is_ws_disconnectd = false;
    int book_depth_count = 25;
    int level_threshold=20;/*FXW's edits*/
    int refresh_normal_check_book_s = 120;/*quest2 fxw's edits v3 starts here*/
    int refresh_normal_check_trade_s = 120;
    /*quest3 fxw v4 starts{*/
    int once = 1;
    int GetSnapShotAndRtn(std::string ticker);
    /*quest3 fxw v4 starts}*/
    int64_t timer;/*quest2 fxw's edits v3 ends here*/
    int trade_count = 10;
    int rest_get_interval_ms = 500;

    static constexpr int scale_offset = 1e8;

    struct lws_context *context = nullptr;
    void setContextNull() { context = nullptr; };/*quest2 fxw's edits v2*/
    size_t subscribe_index = 0;

    //subscribe_channel
    std::vector<SubscribeChannel> websocketSubscribeChannel;
    SubscribeChannel EMPTY_CHANNEL = {0};

    std::string trade_channel = "trades";
    std::string book_channel = "book";

    PriceBook20Assembler priceBook20Assembler;

    std::vector<std::string> websocketSubscribeJsonString;

    std::vector<std::string> websocketPendingSendMsg;


    CoinPairWhiteList coinPairWhiteList_websocket;
	CoinPairWhiteList coinPairWhiteList_rest;

    std::map<std::string, int64_t> control_trade_map;
    std::map<std::string, int64_t> control_book_map;

    common::CWebsocket websocket;
};


DECLARE_PTR(MDEngineBitfinex);

WC_NAMESPACE_END

#endif

#ifndef WINGCHUN_MDENGINEKRAKENF_H
#define WINGCHUN_MDENGINEKRAKENF_H

#include "IMDEngine.h"
#include "longfist/LFConstants.h"
#include "CoinPairWhiteList.h"
#include "PriceBook20Assembler.h"
#include <libwebsockets.h>
#include <document.h>
#include <map>
#include <vector>
#include <mutex>

WC_NAMESPACE_START

using rapidjson::Document;


struct SubscribeChannel
{
    int channelId;
    string exchange_coinpair;
    //book or trade or ...
    string subType;
};


class MDEngineKrakenF: public IMDEngine
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
    virtual string name() const { return "MDEngineKrakenF"; };

public:
    MDEngineKrakenF();

    void on_lws_data(struct lws* conn, const char* data, size_t len);
    void on_lws_connection_error(struct lws* conn);
    int lws_write_subscribe(struct lws* conn);

private:
    inline int64_t getTimestamp();

    void onBook(Document& json);
    void onTrade(Document& json);

    std::string parseJsonToString(Document &d);
    std::string createBookJsonString(std::string exchange_coinpair);
    std::string createTradeJsonString(std::string exchange_coinpair);

    void loop();
    virtual void set_reader_thread() override;
    void debug_print(std::vector<std::string> &subJsonString);
    void makeWebsocketSubscribeJsonString();
private:
    ThreadPtr rest_thread;
    bool connected = false;
    bool logged_in = false;
    int level_threshold = 5;
    int refresh_normal_check_book_s = 120;
    int refresh_normal_check_trade_s = 120;
    int64_t timer;
    int book_depth_count = 20;
    int rest_get_interval_ms = 500;
    std::string baseUrl;

    static constexpr int scale_offset = 1e8;

    struct lws_context *context = nullptr;

    size_t subscribe_index = 0;

    PriceBook20Assembler priceBook20Assembler;
    std::map<std::string,LFPriceBook20Field> priceBook;

    std::vector<std::string> websocketSubscribeJsonString;

    std::vector<std::string> websocketPendingSendMsg;


    CoinPairWhiteList coinPairWhiteList;
    std::map<std::string, int64_t> control_book_map;
    std::map<std::string, int64_t> control_trade_map;
};

DECLARE_PTR(MDEngineKrakenF);

WC_NAMESPACE_END

#endif

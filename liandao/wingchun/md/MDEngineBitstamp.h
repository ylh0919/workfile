#ifndef WINGCHUN_MDENGINEBITSTAMP_H
#define WINGCHUN_MDENGINEBITSTAMP_H

#include "IMDEngine.h"
#include "longfist/LFConstants.h"
#include "CoinPairWhiteList.h"
#include "PriceBook20Assembler.h"
#include <libwebsockets.h>
#include <document.h>
#include <map>
#include <vector>

WC_NAMESPACE_START

using rapidjson::Document;
struct BookMsg
{
    std::string InstrumentID;
    int64_t time;
    uint64_t sequence;
};

struct SubscribeChannel
{
    int channelId;
    string exchange_coinpair;
    //book or trade or ...
    string subType;
};


class MDEngineBitstamp: public IMDEngine
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
    virtual string name() const { return "MDEngineBitstamp"; };

public:
    MDEngineBitstamp();


    void on_lws_data(struct lws* conn, const char* data, size_t len);
    void on_lws_connection_error(struct lws* conn);
    int lws_write_subscribe(struct lws* conn);

private:
    inline int64_t getTimestamp();

    //void onPing(struct lws* conn, Document& json);
    //void onInfo(Document& json);
   // void onSubscribed(Document& json);

    void onBook(Document& json);
    void onTrade(Document& json);
    //SubscribeChannel findByChannelID(int channelId);

    std::string parseJsonToString(Document &d);
    std::string createOrderJsonString(std::string exchange_coinpair);
    std::string createTradeJsonString(std::string exchange_coinpair);
    void loop();


    virtual void set_reader_thread() override;
    void debug_print(std::vector<std::string> &subJsonString);
    void debug_print(std::vector<SubscribeChannel> &websocketSubscribeChannel);


    void makeWebsocketSubscribeJsonString();
    void check_snapshot();
    void get_snapshot_via_rest();
    void rest_loop();
    void check_loop();
private:
    ThreadPtr rest_thread;
    ThreadPtr ws_thread;
    ThreadPtr check_thread;
    int level_threshold = 15;
    int refresh_normal_check_book_s = 120;
    int refresh_normal_check_trade_s = 120;
    bool connected = false;
    bool logged_in = false;

    int book_depth_count = 20;
    int trade_count = 10;
    int rest_get_interval_ms = 500;
    int snapshot_check_s = 20;

    static constexpr int scale_offset = 1e8;

    struct lws_context *context = nullptr;

    size_t subscribe_index = 0;

    //subscribe_channel
    std::vector<SubscribeChannel> websocketSubscribeChannel;
    SubscribeChannel EMPTY_CHANNEL = {0};

    std::string trade_channel = "trades";
    std::string book_channel = "book";

    PriceBook20Assembler priceBook20Assembler;

    std::vector<std::string> websocketSubscribeJsonString;

    std::vector<std::string> websocketPendingSendMsg;
    std::map<std::string, std::map<uint64_t, int64_t>> ws_book_map;
    std::vector<BookMsg> rest_book_vec;


    std::map<std::string, int64_t> control_trade_map;
    std::map<std::string, int64_t> control_book_map;
    CoinPairWhiteList coinPairWhiteList;
 };

DECLARE_PTR(MDEngineBitstamp);

WC_NAMESPACE_END

#endif

#ifndef WINGCHUN_MDENGINEBINANCE2_H
#define WINGCHUN_MDENGINEBINANCE2_H

#include "IMDEngine.h"
#include "longfist/LFConstants.h"
#include "CoinPairWhiteList.h"
#include <libwebsockets.h>
#include <map>
#include <unordered_map>

WC_NAMESPACE_START

class MDEngineBinance2: public IMDEngine
{
public:
	
	enum lws_event
	{
		trade,
		depth5,
		depth20,
        kline1m
	};

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
    virtual string name() const { return "MDEngineBinance2"; };

public:
    MDEngineBinance2();
	
	void on_lws_data(struct lws* conn, const char* data, size_t len);
	
	void on_lws_connection_error(struct lws* conn);

private:
    void GetAndHandleDepthResponse(const std::string& symbol, int limit);

    void GetAndHandleTradeResponse(const std::string& symbol, int limit);
	
	void connect_lws(std::string t, lws_event e);
    
	void on_lws_market_trade(const char* data, size_t len);

	void on_lws_book_update(const char* data, size_t len, const std::string& ticker);

    void on_lws_kline(const char* data, size_t len);
    void loop();

    virtual void set_reader_thread() override;

    CoinPairWhiteList coinPairWhiteList;
    /*:quest3 edited by fxw,starts here*/
    int Get_refresh_normal_check_book_s();
    int Get_refresh_normal_check_kline_s();
    inline int64_t getTimestamp();
        /*quest3 edited by fxw,ends here*/

private:
    ThreadPtr rest_thread;
    bool connected = false;
    bool logged_in = false;

    int book_depth_count = 5;
    /*quest3 edited by fxw,starts here*/
    int level_threshold = 15;
    int refresh_normal_check_book_s = 120;
    int refresh_normal_check_trade_s = 120;
    int refresh_normal_check_kline_s = 240;
    int64_t timer[3];
    /*quest3 edited by fxw ends here*/
    int trade_count = 10;
    int rest_get_interval_ms = 500;

    uint64_t last_rest_get_ts = 0;
    uint64_t last_trade_id = 0;
    static constexpr int scale_offset = 1e8;

    struct lws_context *context = nullptr;
	std::map<std::string,LFPriceBook20Field> priceBook;
	
	std::unordered_map<struct lws *,std::pair<std::string, lws_event> > lws_handle_map;

    std::map<std::string,int64_t> control_orderbook_map;
    std::map<std::string,int64_t> control_trade_map;
    std::map<std::string,int64_t> control_kline_map;
};

DECLARE_PTR(MDEngineBinance2);


WC_NAMESPACE_END

#endif

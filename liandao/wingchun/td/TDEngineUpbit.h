#ifndef PROJECT_TDENGINEUPBIT_H
#define PROJECT_TDENGINEUPBIT_H

#include "ITDEngine.h"
#include "longfist/LFConstants.h"
#include "CoinPairWhiteList.h"
#include <vector>
#include <algorithm>
#include <iomanip>
#include <iostream>
#include <sstream>
#include <map>
#include <mutex>
#include "Timer.h"
#include <document.h>
#include "../base/ThreadPool.h"

using rapidjson::Document;
 
WC_NAMESPACE_START
 
/**
 * account information unit extra is here.
 */

struct PendingUpbitOrderStatus
{
    char_31 InstrumentID;   //合约代码
    char_21  OrderRef;       //报单引用
    LfOrderStatusType OrderStatus;  //报单状态
    uint64_t VolumeTraded;  //今成交数量
     // the trade id that has been called on_rtn_trade. Do not send it again.
    std::vector<std::string> sentTradeIds;
};

struct SendOrderFilter
{
    char_31 InstrumentID;   //合约代码
    int nBidTickSize= 8;
    std::string strBidCurrency; 
    long long nBidMinTotal;
    int nAskTickSize = 8;
    std::string strAskCurrency;
    long long nAskMinTotal;
    long long nMaxTotal;
    std::string strState;
    //...other
};

struct OrderInfo
{
    int64_t nRequestID = -1;
    std::string strRemoteUUID = "";
    int64_t timestamp;//quest5v5
};

struct Trademsg
{
    std::string uuid;
    std::string trade_uuid;
};

struct AccountUnitUpbit
{
    std::string api_key;
    std::string secret_key;
    // internal flags
    bool    logged_in;
    std::vector<PendingUpbitOrderStatus> newOrderStatus;
    std::vector<PendingUpbitOrderStatus> pendingOrderStatus;
    std::map<std::string,OrderInfo> mapNewCancelOrders;
    std::map<std::string,OrderInfo> mapCancelOrders;
    std::map<std::string, SendOrderFilter> sendOrderFilters;
    
    CoinPairWhiteList coinPairWhiteList;
    CoinPairWhiteList positionWhiteList;

    //std::map<std::string,OrderInfo> mapOrderRef2OrderInfo;
};

/**
 * CTP trade engine
 */
class TDEngineUpbit: public ITDEngine
{
public:
    /** init internal journal writer (both raw and send) */
    virtual void init();
    /** for settleconfirm and authenticate setting */
    virtual void pre_load(const json& j_config);
    virtual TradeAccount load_account(int idx, const json& j_account);
    virtual void resize_accounts(int account_num);
    /** connect && login related */
    virtual void connect(long timeout_nsec);
    virtual void login(long timeout_nsec);
    virtual void logout();
    virtual void release_api();
    virtual bool is_connected() const;
    virtual bool is_logged_in() const;
    virtual string name() const { return "TDEngineUpbit"; };

    // req functions
    virtual void req_investor_position(const LFQryPositionField* data, int account_index, int requestId);
    virtual void req_qry_account(const LFQryAccountField* data, int account_index, int requestId);
    virtual void req_order_insert(const LFInputOrderField* data, int account_index, int requestId, long rcv_time);
    virtual void req_order_action(const LFOrderActionField* data, int account_index, int requestId, long rcv_time);
    virtual void req_get_kline_via_rest(const GetKlineViaRest* data, int account_index, int requestId, long rcv_time) override;
public:
    TDEngineUpbit();
    ~TDEngineUpbit();
private:
    // journal writers
    yijinjing::JournalWriterPtr raw_writer;
    vector<AccountUnitUpbit> account_units;

    std::string GetSide(const LfDirectionType& input);
    LfDirectionType GetDirection(std::string input);
    std::string GetType(const LfOrderPriceTypeType& input);
    LfOrderPriceTypeType GetPriceType(std::string input);
    std::string GetTimeInForce(const LfTimeConditionType& input);
    LfTimeConditionType GetTimeCondition(std::string input);
    LfOrderStatusType GetOrderStatus(std::string input);
    
    virtual void set_reader_thread() override;
    void loop();
    std::vector<std::string> split(std::string str, std::string token);
    void GetAndHandleOrderTradeResponse();
    void addNewQueryOrdersAndTrades(AccountUnitUpbit& unit, const char_31 InstrumentID,
                                        const char_21 OrderRef, const LfOrderStatusType OrderStatus, const uint64_t VolumeTraded, LfDirectionType Direction, int64_t UpbitOrderId);

    inline void onRspNewOrderACK(const LFInputOrderField* data, AccountUnitUpbit& unit, Document& result, int requestId);
    inline void onRspNewOrderRESULT(const LFInputOrderField* data, AccountUnitUpbit& unit, Document& result, int requestId);
    inline void onRspNewOrderFULL(const LFInputOrderField* data, AccountUnitUpbit& unit, Document& result, int requestId);

    void retrieveOrderStatus(AccountUnitUpbit& unit);
    void retrieveTradeStatus(AccountUnitUpbit& unit,Document& d,std::vector<std::string>& sentTradeIds);
    void retrieveOrderAndTradesStatus(AccountUnitUpbit& unit);
    void moveNewtoPending(AccountUnitUpbit& unit);
    //bool isExistSymbolInPendingTradeStatus(AccountUnitUpbit& unit, const char_31 InstrumentID);
    bool isExistSymbolInPendingUpbitOrderStatus(AccountUnitUpbit& unit, const char_31 InstrumentID, const char_21 OrderRef);
    bool removeUpbitOrderIdFromPendingOnRtnTrades(AccountUnitUpbit& unit, const std::string& UpbitOrderId);

    int64_t fixPriceTickSize(int keepPrecisionBid, int keepPrecisionAsk,int64_t price, bool isBuy);

    inline int64_t getTimestamp();
    int64_t getTimeDiffOfExchange(AccountUnitUpbit& unit);

private:
    int HTTP_RESPONSE_OK = 200; 
    std::int32_t  send_order(AccountUnitUpbit& unit, const char *symbol,
                    const char *side,
                    const char *type,
                    const char *timeInForce,
                    string quantity,
                    string price,
                    const char *newClientOrderId,
                    double stopPrice,
                    double icebergQty,
                    Document& json);

    void dealnum(string pre_num,string& fix_num);
    int64_t RoundPrice(int64_t price,std::string derection);
    std::int32_t  get_order(AccountUnitUpbit& unit, const char *origClientOrderId, Document& json);
    std::int32_t  cancel_order(AccountUnitUpbit& unit, const char *symbol,
                       const char *origClientOrderId,  Document &doc);
    std::int32_t  get_kline(AccountUnitUpbit& unit, const std::string&  symbol,const std::string& strPeriod,const std::string&  strTimeUTC,  Document &doc);
    void get_open_orders(AccountUnitUpbit& unit, Document &doc);
    void getChanceResponce(const AccountUnitUpbit& unit, const std::string& strMarket,Document& d);
    std::int32_t getAccountResponce(const AccountUnitUpbit& unit,Document& d);
    void getAllMarkets(std::vector<std::string>& vstrMarkets);
    bool loadMarketsInfo(AccountUnitUpbit& unit, const std::vector<std::string>& vstrMarkets);
    std::string getEncode(const std::string& str);
    std::string getUUID();
    std::string getAuthorization(const AccountUnitUpbit& unit,const std::string& strQuery = std::string());
    void get_exchange_time(AccountUnitUpbit& unit, Document &doc);
    void getResponse(int http_status_code, std::string responseText, std::string errorMsg, Document& doc);
    void printResponse(const Document& d);
    inline std::string getTimestampString();
    LfOrderStatusType convertOrderStatus(const std::string& strStatus,int64_t nTrades);
    void filterMarkets(std::vector<std::string>& vstrMarkets);
    OrderInfo findValue(const std::map<std::string,OrderInfo>& mapSrc,const std::string& strKey);
    std::string findKey(const std::map<std::string,OrderInfo>& mapSrc,const std::string& strValue);
    void debug_print(std::map<std::string, SendOrderFilter> &sendOrderFilters);

    SendOrderFilter getSendOrderFilter(AccountUnitUpbit& unit, const char *symbol);
    void handle_order_insert(AccountUnitUpbit& unit,const LFInputOrderField data,int requestId,const std::string& ticker);
    void handle_order_action(AccountUnitUpbit& unit,const LFOrderActionField data, int requestId,const std::string& ticker);

    bool shouldRetry(int http_status_code, std::string errorMsg, std::string text);
private:
    static constexpr int scale_offset = 1e8;
    ThreadPtr rest_thread;
    uint64_t last_rest_get_ts = 0;
    uint64_t rest_get_interval_ms = 500;

    uint64_t order_insert_recvwindow_ms = 5000;
    uint64_t order_action_recvwindow_ms = 5000;
    std::mutex* mutex_order_and_trade = nullptr;
    std::mutex* m_mutexOrder = nullptr;
    std::mutex* m_mutexCancel = nullptr;

    int SYNC_TIME_DEFAULT_INTERVAL = 10000;
    int sync_time_interval;
    int64_t timeDiffOfExchange = 0;
    int exchange_shift_ms = 0;

    std::map<string,LFRtnOrderField> ordermap;
    std::map<std::string,int> update_map;
    std::vector<Trademsg> Trademsg_vec;
    std::vector<Trademsg> Trademsg_vec1;
    std::vector<std::string> Trade_uuid_vec;
    std::map<std::string,OrderInfo> mapOrderRef2OrderInfo;

    int max_rest_retry_times = 3;
    int retry_interval_milliseconds = 1000;
    int time_to_wait_before_cancel_ms=0;
    ThreadPool* m_ThreadPoolPtr = nullptr;

    // get_kline
    int remaining; 
};

WC_NAMESPACE_END

#endif //PROJECT_TDENGINEUpbit_H



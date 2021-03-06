
#ifndef PROJECT_TDENGINEPRBIT_H
#define PROJECT_TDENGINEPRBIT_H

#include "ITDEngine.h"
#include "longfist/LFConstants.h"
#include "CoinPairWhiteList.h"
#include <vector>
#include <sstream>
#include <map>
#include <atomic>
#include "Timer.h"
#include <document.h>
#include <libwebsockets.h>
#include <list>
using rapidjson::Document;

WC_NAMESPACE_START

struct SendOrderFilter
{
    std::string InstrumentID;   //合约代码
    int ticksize; //for price round.
    int stepsize;
    int costsize;
};
enum class AccountStatus
{
    AS_AUTH,
    AS_WAITING,
    AS_OPEN_ORDER,
    AS_OVER
};
struct OrderFieldEx:public LFRtnOrderField
{
    double      preFilledCost = 0.0;
    double      preFilledQuantity = 0.0;
    std::string remoteOrderRef {};
    bool        isSentNotTouched = false;

};
struct AccountUnitProbit
{
    string                  api_key;
    string                  secret_key;
    string                  baseUrl;
	string                  authUrl;
	string                  wsUrl;
    volatile bool           logged_in;
    bool                    is_connecting = false;
    CoinPairWhiteList       coinPairWhiteList;
    CoinPairWhiteList       positionWhiteList;
    struct lws*             websocketConn;
    volatile  AccountStatus status;
    std::map<std::string/*client_order_id*/, OrderFieldEx> ordersMap;
    std::map<std::string, SendOrderFilter> sendOrderFilters;
};
struct CancelOrderReq
{
    LFOrderActionField data {};
    int account_index;
    int requestId;
    long rcv_time;
    std::string remoteOrderRef {};
    uint64_t cancelVolume = 0;
};

class TDEngineProbit: public ITDEngine
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
    virtual string name() const { return "TDEngineProbit"; };
    // req functions
    virtual void req_investor_position(const LFQryPositionField* data, int account_index, int requestId);
    virtual void req_qry_account(const LFQryAccountField* data, int account_index, int requestId);
    virtual void req_order_insert(const LFInputOrderField* data, int account_index, int requestId, long rcv_time);
    virtual void req_order_action(const LFOrderActionField* data, int account_index, int requestId, long rcv_time);
public:
    TDEngineProbit();
    ~TDEngineProbit();
    //websocket
    void on_lws_data(struct lws* conn, const char* data, size_t len);
    void on_lws_connection_error(struct lws* conn);
    void lws_write_subscribe(struct lws* conn);
    void lws_login(AccountUnitProbit& unit, long timeout_nsec);
    int Round(std::string tickSizeStr);
		//2018-01-01T00:00:00.000Z
    std::string TimeToFormatISO8601(int64_t timestamp);
	bool PostRequest(const std::string& url,const std::string& auth, const std::string& body,Document& json);
private:
    void sendMessage(std::string&& msg,struct lws * conn);
    void genUniqueKey();
    std::string m_uniqueKey;
    std::string genClinetid(const std::string& orderRef);
    std::string getOrderRef(const std::string& clinetID);
private:
    // journal writers
    yijinjing::JournalWriterPtr raw_writer;
    vector<AccountUnitProbit> account_units;
    virtual void set_reader_thread() override;
    std::string GetSide(const LfDirectionType& input);
    LfDirectionType GetDirection(const std::string&);
    std::string GetType(const LfOrderPriceTypeType&);
    LfOrderPriceTypeType GetPriceType(const std::string& );
    LfOrderStatusType GetOrderStatus(const std::string&);
	LfTimeConditionType GetTimeCondition(const std::string&);
	//websocket
    AccountUnitProbit& findAccountUnitByWebsocketConn(struct lws * websocketConn);
    void onOrder(struct lws* websocketConn, Document& json);
    void onTrade(struct lws* conn, const char* orderRef, const char* api_key, const char* instrumentID, LfDirectionType direction, uint64_t volume, int64_t price,int requestid);
    void wsloop();
    std::string getAuthToken(const AccountUnitProbit& unit );
    int                 m_restIntervalms  = 500;
    int64_t             m_tokenExpireTime = 0;
    std::string         m_authToken {};
    struct lws_context* context = nullptr;
    ThreadPtr           m_wsLoopThread = nullptr;
    ThreadPtr                   m_requestThread = nullptr;
    std::list<CancelOrderReq>   m_cancelOrders {};
    std::map<std::string, SendOrderFilter> m_sendOrderFilters;
private:
    void getCancelOrder(std::vector<CancelOrderReq>& requests);
    void pushCancelTask(CancelOrderReq&&);
    void doCancelOrder(const CancelOrderReq&);
    void get_account(const AccountUnitProbit& unit,  Document& json);
    void get_products(const AccountUnitProbit& unit, Document& json);
    void send_order(const AccountUnitProbit& unit, const char *code,const char *side, const char *type, double size, double price,double cost, const std::string& orderRef, Document& json);
    void cancel_order(const AccountUnitProbit& unit, const std::string& orderId, const std::string& marketID, double quantity, Document& json);
    void get_exchange_infos(AccountUnitProbit& unit, Document &json);
    void getResponse(int http_status_code, const std::string& responseText, const std::string& errorMsg, Document& json);
    void printResponse(const Document& d);
    inline int64_t getTimestamp();
//    int64_t fixPriceTickSize(const std::string& ticker, int64_t price, bool isBuy);

    int64_t fixPrice(int keepPrecision, int64_t price, bool isBuy);
    int64_t fixVolume(int keepPrecision,int64_t volume, bool isBuy);
    int64_t fixCost(int keepPrecision, int64_t price, bool isBuy);
    int64_t convert(const std::string& ticker, double price);
    bool loadExchangeOrderFilters(AccountUnitProbit& unit, Document &doc);
    void debug_print(const std::map<std::string, SendOrderFilter>&);
    SendOrderFilter getSendOrderFilter1(AccountUnitProbit& unit, const char *symbol);
    SendOrderFilter getSendOrderFilter(const std::string& symbol);
	bool OpenOrderToLFOrder(AccountUnitProbit& unit, rapidjson::Value& json, LFRtnOrderField& order);
private:
    LFRtnOrderField convert(const OrderFieldEx&);
    int m_retryCounts = 1;
    int m_retryIntervalMs = 500;
};

WC_NAMESPACE_END

#endif //PROJECT_TDENGINEPRBIT_H




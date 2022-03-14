
#ifndef PROJECT_TDENGINEHITBTC_H
#define PROJECT_TDENGINEHITBTC_H

#include "ITDEngine.h"
#include "longfist/LFConstants.h"
#include "CoinPairWhiteList.h"
#include <vector>
#include <queue>
#include <sstream>
#include <map>
#include <atomic>
#include <mutex>
#include "Timer.h"
#include <document.h>
#include <libwebsockets.h>
#include <cpr/cpr.h>
using rapidjson::Document;

WC_NAMESPACE_START

/**
 * account information unit extra is here.
 */

        struct PendingOrderStatus
        {
            int64_t nVolume = 0;
            int64_t nPrice = 0;
            char_31 InstrumentID = {0};   //合约代码
            char_21 OrderRef = {0};   //报单引用
            int nRequestID = -1;   
            std::string strUserID;
            LfOrderStatusType OrderStatus = LF_CHAR_NotTouched;  //报单状态
            uint64_t VolumeTraded = 0;  //成交数量
            LfDirectionType Direction;  //买卖方向
            LfOrderPriceTypeType OrderPriceType; //报单价格条件
            std::string remoteOrderId;// sender_order response order id://{"orderId":19319936159776,"result":true}
            std::string strClientId;
        };

        struct OrderActionSentTime
        {
            LFOrderActionField data;
            int requestId;
            int64_t sentNameTime;
        };

        struct OrderInsertSentTime
        {
            LFInputOrderField data;
            int requestId;
            int64_t sentNameTime;
        };

        struct ResponsedOrderStatus
        {
            int64_t averagePrice = 0;
            std::string ticker;
            int64_t createdDate = 0;


            //今成交数量
            uint64_t VolumeTraded;
            int id = 0;
            uint64_t openVolume = 0;
            std::string orderId;
            std::string orderType;
            //报单价格条件
            LfOrderPriceTypeType OrderPriceType;
            int64_t price = 0;
            //买卖方向
            LfDirectionType Direction;

            //报单状态
            LfOrderStatusType OrderStatus;
            uint64_t trunoverVolume = 0;
            uint64_t volume = 0;
        };

        struct PriceIncrement
        {
            int64_t nBaseMinSize = 0;
            int64_t nPriceIncrement = 1;
            int64_t nQuoteIncrement = 1;
        };

        struct AccountUnitHitBTC
        {
            string api_key;//uid
            string secret_key;
            string passphrase;

            string baseUrl;
            string wsUrl;
            // internal flags
            bool    logged_in;
            std::map<std::string,PriceIncrement> mapPriceIncrement;
            CoinPairWhiteList coinPairWhiteList;
            CoinPairWhiteList positionWhiteList;

        };

    struct ServerInfo
    {
    int nPingInterval = 0;
    int nPingTimeOut = 0;
    std::string strEndpoint ;
    std::string strProtocol ;
    bool bEncrypt = true;
    };
      
/**
 * CTP trade engine
 */
        class TDEngineHitBTC: public ITDEngine
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
            virtual string name() const { return "TDEngineHitBTC"; };

            // req functions
            virtual void req_investor_position(const LFQryPositionField* data, int account_index, int requestId);
            virtual void req_qry_account(const LFQryAccountField* data, int account_index, int requestId);
            virtual void req_order_insert(const LFInputOrderField* data, int account_index, int requestId, long rcv_time);
            virtual void req_order_action(const LFOrderActionField* data, int account_index, int requestId, long rcv_time);


        public:
            TDEngineHitBTC();
            ~TDEngineHitBTC();

        private:
            // journal writers
            yijinjing::JournalWriterPtr raw_writer;
            vector<AccountUnitHitBTC> account_units;

            std::string GetSide(const LfDirectionType& input);
            LfDirectionType GetDirection(std::string input);
            std::string GetType(const LfOrderPriceTypeType& input);
            LfOrderPriceTypeType GetPriceType(std::string input);
            inline int64_t getTimestamp();


            virtual void set_reader_thread() override;
            std::vector<std::string> split(std::string str, std::string token);

            //void handlerResponseOrderStatus(AccountUnitHitBTC& unit, std::vector<PendingOrderStatus>::iterator orderStatusIterator, ResponsedOrderStatus& responsedOrderStatus);
            void addResponsedOrderStatusNoOrderRef(ResponsedOrderStatus &responsedOrderStatus, Document& json);
            void getPriceIncrement(AccountUnitHitBTC& unit);
            void dealPriceVolume(AccountUnitHitBTC& unit,const std::string& symbol,int64_t nPrice,int64_t nVolume,double& dDealPrice,double& dDealVome,bool Isbuy);

            std::string parseJsonToString(Document &d);

            void addRemoteOrderIdOrderActionSentTime(const LFOrderActionField* data, int requestId, const std::string& remoteOrderId);
            void addRemoteOrderIdOrderInsertSentTime(const LFInputOrderField* data, int requestId, const std::string& remoteOrderId);

            void loopOrderActionNoResponseTimeOut();
            void orderActionNoResponseTimeOut();
            void loopOrderInsertNoResponseTimeOut();
            void orderInsertNoResponseTimeOut();
        private:
            void get_account(AccountUnitHitBTC& unit, Document& json);
            void send_order(const char *code,const char* strClientId,const char *side, const char *type, double& size, double& price, int Id);

            void cancel_all_orders();
            void cancel_order(std::string orderId);
            void printResponse(const Document& d);


            std::string createInsertOrderString(const char *code,const char* strClientId,const char *side, const char *type, double& size, double& price, int Id);
            std::string createCancelOrderString(const char* strOrderId = nullptr);
        public:
            void writeErrorLog(std::string strError);
            void on_lws_data(struct lws* conn, const char* data, size_t len);
            void onOrderChange( Document& d);
            void onerror(Document& msg);
            int lws_write_msg(struct lws* conn);
            void on_lws_connection_error(struct lws* conn);
        private:     
            std::string makeSubscribeChannelString(AccountUnitHitBTC& unit);
            std::string makeSubscribetradeString(AccountUnitHitBTC& unit);
            std::string sign(const AccountUnitHitBTC& unit,const std::string& method,const std::string& timestamp,const std::string& endpoint);
            std::string getTimestampStr();
            int64_t getMSTime();
            void loopwebsocket();
            void genUniqueKey();
            std::string genClinetid(const std::string& orderRef);
        private:
            bool istrade = false;
            bool m_isSub = false; 
            bool m_isSubOK = false;   
            bool is_connecting = false;
            struct lws_context *context = nullptr;
            std::queue<std::string> m_vstMsg;
            std::string m_strToken;
            struct lws* m_conn;
            int m_CurrentTDIndex = 0;
            std::mutex* m_mutexOrder = nullptr;
            std::map<std::string,LFRtnOrderField> m_mapOrder;
            std::map<std::string,LFRtnOrderField> m_mapNewOrder;
            std::map<std::string,LFInputOrderField> m_mapInputOrder;
            std::map<std::string,LFOrderActionField> m_mapOrderAction;
            std::map<std::string,int64_t> m_mapCanceledOrder;
            std::map<int,LFInputOrderField> errormap;
            std::map<int,LFRtnOrderField> errormap1;
        private:
            std::string m_uniqueKey;
            int HTTP_RESPONSE_OK = 200;
            static constexpr int scale_offset = 1e8;

            ThreadPtr rest_thread;
            ThreadPtr orderaction_timeout_thread;
            ThreadPtr orderinsert_timeout_thread;

            uint64_t last_rest_get_ts = 0;
            uint64_t rest_get_interval_ms = 500;

            std::mutex* mutex_order_and_trade = nullptr;
            std::mutex* mutex_response_order_status = nullptr;
            std::mutex* mutex_orderaction_waiting_response = nullptr;
            std::mutex* mutex_orderinsert_waiting_response = nullptr;

            std::map<std::string, std::string> localOrderRefRemoteOrderId;

            //对于每个撤单指令发出后30秒（可配置）内，如果没有收到回报，就给策略报错（撤单被拒绝，pls retry)
            std::map<std::string, OrderActionSentTime> remoteOrderIdOrderActionSentTime;
            std::map<std::string, OrderInsertSentTime> remoteOrderIdOrderInsertSentTime;            

            std::vector<ResponsedOrderStatus> responsedOrderStatusNoOrderRef;
            int max_rest_retry_times = 3;
            int retry_interval_milliseconds = 1000;
            int orderaction_max_waiting_seconds = 30;
            int orderinsert_max_waiting_seconds = 30;

        };

WC_NAMESPACE_END

#endif //PROJECT_TDENGINEHITBTC_H





/*****************************************************************************
 * Copyright [2017] [taurus.ai]
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *****************************************************************************/

/**
 * ITDEngine: base class of all trade engine.
 * @Author cjiang (changhao.jiang@taurus.ai)
 * @since   April, 2017
 */

#ifndef WINGCHUN_ITDENGINE_H
#define WINGCHUN_ITDENGINE_H

#include "IEngine.h"
#include "PosHandler.hpp"
#include "Timer.h"
#include "TDUserStruct.h"
#include "longfist/LFDataStruct.h"

#define ORDER_MISC_INFO_SIZE 29

WC_NAMESPACE_START

using kungfu::yijinjing::PosHandlerPtr;
using kungfu::yijinjing::FeeHandlerPtr;
using kungfu::yijinjing::PosHandler;
using kungfu::yijinjing::FeeHandler;

/**
 * client info, store in trade engine
 */
struct ClientInfoUnit
{
    bool is_alive;
    int  journal_index;
    int  account_index;
    int  rid_start;
    int  rid_end;
    PosHandlerPtr pos_handler;
};

/**
 * Trade account information,
 * used when connect or login
 */
struct TradeAccount
{
    char BrokerID[19];
    char UserID[16];
    char InvestorID[19];
    char BusinessUnit[21];
    char Password[21];
    FeeHandlerPtr fee_handler;
};

/**
 * Base class of all trade engines
 */
class ITDEngine: public IEngine
{
protected:
    /** writer on td_send records all messages to send */
    yijinjing::JournalWriterPtr send_writer;
    /** information about all existing clients. */
    map<string, ClientInfoUnit > clients; // clientName: (exist, idx)
    /** trade account */
    vector<TradeAccount> accounts;
    /** -1 if do not accept unregistered account, else return index of accounts */
    int default_account_index;
    /** default handler, will be utilized if user do not assign fee structure in account info */
    FeeHandlerPtr default_fee_handler;
    /** trade engine user info helper */
    TDUserInfoHelperPtr user_helper;
    /** trade engine user info helper */
    TDEngineInfoHelperPtr td_helper;
    /** request_id, incremental*/
    int request_id;
    /** local id, incremental */
    int local_id;
    /** current nano time */
    long cur_time;
    /** need cancel all order in remove_client */
    bool cancel_all_on_strategy_disconnect = true;

protected:
    // add strategy, return true if added successfully.
    bool add_client(const string& name, const json& j_request);
    // remove strategy
    bool remove_client(const string& name, const json& j_request);

protected:
    /** default constructor */
    ITDEngine(int source);
    /** setup reader thread */
    virtual void set_reader_thread();
    /** keep listening to system journal */
    void listening();
    /** load config information */
    virtual void load(const json& j_config);
    /** init reader and writer */
    virtual void init();
    /** load TradeAccount from json */
    virtual TradeAccount load_account(int idx, const json& j_account);

public:
    // config and account related
    /** resize account number */
    virtual void resize_accounts(int account_num) = 0;
    /** connect each account and api with timeout as wait interval*/
    virtual void connect(long timeout_nsec) = 0;
    /** login all account and api with timeout as wait interval */
    virtual void login(long timeout_nsec) = 0;
    /** send logout request for each api */
    virtual void logout() = 0;
    /** release api items */
    virtual void release_api() = 0;
    /** is every accounts connected? */
    virtual bool is_connected() const = 0;
    /** is every accounts logged in? */
    virtual bool is_logged_in() const = 0;

public:
    /** some clean up when day switch */
    virtual void on_switch_day() {};
    /** on market data */
    virtual void on_market_data(const LFMarketDataField* data, long rcv_time) {};

    // virtual interfaces for all trade engines
    /** request investor's existing position */
    virtual void req_investor_position(const LFQryPositionField* data, int account_index, int requestId) = 0;
    /** request account info */
    virtual void req_qry_account(const LFQryAccountField* data, int account_index, int requestId) = 0;
    /** insert order */
    virtual void req_order_insert(const LFInputOrderField* data, int account_index, int requestId, long rcv_time) = 0;
    /** insert quote */
    virtual void req_quote_insert(const LFInputQuoteField* data, int account_index, int requestId, long rcv_time);
    /** request cancel quote*/
    virtual void req_quote_action(const LFQuoteActionField* data, int account_index, int requestId, long rcv_time);
    /** request order action (only cancel is accomplished) */
    virtual void req_order_action(const LFOrderActionField* data, int account_index, int requestId, long rcv_time) = 0;
    /** cancel list of orders(only for binancef) */
    virtual void req_batch_cancel_orders(const LFBatchCancelOrderField* data, int account_index, int requestId, long rcv_time);
    /** get serial of bar via restful api (only for binance and binancef) */
    virtual void req_get_kline_via_rest(const GetKlineViaRest* data, int account_index, int requestId, long rcv_time);
    /** request withdraw currency */
    virtual void req_withdraw_currency(const LFWithdrawField* data, int account_index, int requestId);
    /** request innser transfer */
    virtual void req_inner_transfer(const LFTransferField* data, int account_index, int requestId);
    /** request_transfer_history */
    virtual void req_transfer_history(const LFTransferHistoryField* data, int account_index, int requestId, bool isWithdraw) ;  //false for deposit , true for withdraw
    /** on investor position, engine (on_data) */
    void on_rsp_position(const LFRspPositionField* pos, bool isLast, int requestId,
                         int errorId=0, const char* errorMsg=nullptr);
    /** on rsp order insert, engine (on_data) */
    void on_rsp_order_insert(const LFInputOrderField* order, int requestId,int errorId=0, const char* errorMsg=nullptr);
    void on_rsp_quote_insert(const LFInputQuoteField* order, int requestId,int errorId=0, const char* errorMsg=nullptr);
    /** on rsp order action, engine (on_data) */
    void on_rsp_order_action(const LFOrderActionField* action, int requestId,int errorId=0, const char* errorMsg=nullptr);
    void on_rsp_quote_action(const LFQuoteActionField* action, int requestId,int errorId=0, const char* errorMsg=nullptr);
    /** on rsp withdraw, engine (on_data) */
    void on_rsp_withdraw(const LFWithdrawField* data, int requestId,int errorId=0, const char* errorMsg=nullptr);
    /** on rsp transfer, engine (on_data) */
    void on_rsp_transfer(const LFTransferField* data, int requestId,int errorId=0, const char* errorMsg=nullptr);
    /** on rsp account info, engine (on_data) */
    void on_rsp_account(const LFRspAccountField* account, bool isLast, int requestId,
                        int errorId=0, const char* errorMsg=nullptr);
    /** on rsp transfer history info,engine (on_data) */
    void on_rsp_transfer_history(const LFTransferHistoryField* history, bool is_withdraw, bool isLast,int requestId,int errorId=0, const char* errorMsg=nullptr);
    /** on rtn order, engine (on_data) */
    void on_rtn_order(const LFRtnOrderField* rtn_order);
    /** on new quote, engine (on_data) */
    void on_rtn_quote(const LFRtnQuoteField* rtn_quote);
    /** on rtn trade, engine (on_data) */
    void on_rtn_trade(const LFRtnTradeField* rtn_trade);
    /** get serial of bar via restful api (only for binance and binancef) */
    void on_bar_serial1000(const LFBarSerial1000Field* data, int rid);
    /** check is_post_only from misc_info in LFInputOrderField */
    bool is_post_only(const LFInputOrderField* data);
    /** write errormsg to journal */
    void write_errormsg(int errorid,string errormsg);
    /** send td_strategy to monitor */
    void sendMessagetoMonitor(const json& j_config, const json& j_clients);
};

DECLARE_PTR(ITDEngine);

WC_NAMESPACE_END

#endif //PROJECT_ITDENGINE_H

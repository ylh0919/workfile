#pragma once
#ifndef PROJECT_TDENGINEPOLONIEX_H
#define PROJECT_TDENGINEPOLONIEX_H

#include "ITDEngine.h"
#include "longfist/LFConstants.h"
#include "CoinPairWhiteList.h"
#include "../base/ThreadPool.h"
#include<iostream>
#include <vector>
#include <sstream>
#include <map>
#include <atomic>
#include <mutex>
#include "Timer.h"
#include <libwebsockets.h>
#include <cpr/cpr.h>
//#include <document.h>
/*using rapidjson::Document;*/

WC_NAMESPACE_START
/*
命名格式基本采用xxx_xxx
命名名称基本采用交易所对应名词
*/
/*
需要更改解析和orderinfo结构体内容，以及根据交易所的接口功能修改函数实现
*/
/*
对交易所接口返回的错误进行分类，设置自己的错误码可能有利于后续处理
*/
struct PositionSetting
{
    string ticker;
    bool isLong;
    uint64_t amount;
};
struct OrderInfo
{
	int64_t order_number;
	string order_ref;
	string timestamp;
    string currency_pair;
	uint64_t volume_total_original;
	int64_t tradeID;//订单的最新trade
	bool is_open;
};
struct AccountUnitPoloniex
{
    string api_key;
    string secret_key;
    string baseUrl;
    // internal flags
    bool    logged_in;

    CoinPairWhiteList coinPairWhiteList;
    CoinPairWhiteList positionWhiteList;

    map<string, OrderInfo> map_new_order;//order_ref,order_info
    std::vector<PositionSetting> positionHolder;//记录每种持仓币种的情况，需要函数来更新
};
class TDEnginePoloniex : public ITDEngine
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
    virtual string name() const { return "TDEnginePoloniex"; };

    // req functions  //this exchanger has no account_index ,just ignore
    virtual void req_investor_position(const LFQryPositionField* data, int account_index, int requestId);
    virtual void req_qry_account(const LFQryAccountField* data, int account_index, int requestId);
    virtual void req_order_insert(const LFInputOrderField* data, int account_index, int requestId, long rcv_time);
    virtual void req_order_action(const LFOrderActionField* data, int account_index, int requestId, long rcv_time);


public:
    TDEnginePoloniex();
    ~TDEnginePoloniex();

private:
    // journal writers
    yijinjing::JournalWriterPtr raw_writer;
    vector<AccountUnitPoloniex> account_units;

    //inline int64_t get_timestamp();
    int64_t get_timestamp();
    string get_order_type(LfOrderPriceTypeType type);
    string get_order_side(LfDirectionType type);
    int get_response_parsed_position(cpr::Response r);

    cpr::Response rest_withoutAuth(string& method, string& command);
    cpr::Response rest_withAuth(AccountUnitPoloniex& unit, string& method, string& command);

    cpr::Response return_orderbook(string& currency_pair,int level);//可用来测试接口实现是否有问题
   
	cpr::Response return_order_status(int64_t& order_number);
	cpr::Response return_order_trades(int64_t& order_number);
	//void updating_order_status(LFRtnOrderField* data);//弃置
	void updating_order_status();//订单状态追踪
    void dealnum(string pre_num,string& fix_num);
    void handle_order_insert(AccountUnitPoloniex& unit,const LFInputOrderField data,int requestId,const std::string& ticker);
    void handle_order_action(AccountUnitPoloniex& unit,const LFOrderActionField data, int requestId,const std::string& ticker);

private:

    static constexpr int scale_offset = 1e8;
    int retry_interval_milliseconds;
	int max_retry_times;
	string url_public_point;
    ThreadPtr rest_thread;

	map<string, LFRtnOrderField> map_order;
    map<string, string> cancel_map;
    std::map<int64_t,int> update_map;
    std::map<int64_t,int> Tradeid_map;
    std::vector<int64_t> Tradeid_vec;

    std::mutex* mutex_order_and_trade = nullptr;
    std::mutex* mutex_response_order_status = nullptr;
    std::mutex* mutex_orderaction_waiting_response = nullptr;
	std::mutex* mutex_new_order = nullptr;
	std::mutex* mutex_order = nullptr;
    ThreadPool* m_ThreadPoolPtr = nullptr;
};

WC_NAMESPACE_END

#endif //PROJECT_TDENGINEPOLONIEX_H





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
 * WCStrategyUtil: utility functions for strategy.
 * @Author cjiang (changhao.jiang@taurus.ai)
 * @since   September, 2017
 */

#ifndef WINGCHUN_WCSTRATEGYUTIL_H
#define WINGCHUN_WCSTRATEGYUTIL_H

#include "WC_DECLARE.h"
#include "StrategyUtil.h"
#include "longfist/LFConstants.h"
#include <queue>
#include <boost/function.hpp>

WC_NAMESPACE_START

using kungfu::yijinjing::StrategyUtil;

typedef boost::function<void ()> BLCallback;

struct BLCallbackUnit
{
    long nano;
    BLCallback func;
    BLCallbackUnit(): nano() {}
    BLCallbackUnit(long nano, const BLCallback& func): nano(nano), func(func) {}
    bool operator() (BLCallbackUnit& i, BLCallbackUnit& j) { return i.nano > j.nano; }
};

typedef std::priority_queue<BLCallbackUnit, vector<BLCallbackUnit>, BLCallbackUnit> BLCallbackMinHeap;

#define WC_STRATEGY_TD_FAILED       0
#define WC_STRATEGY_TD_ACK          1
#define WC_STRATEGY_TD_READY        2
/**
 * utilities includes:
 *  1. all journal writing (insert order, req pos, etc)
 *  2. request id related
 *  3. call back insert / process
 */
class WCStrategyUtil: public StrategyUtil
{
private:
    long md_nano;
    long cur_nano;
    string strategy_name;
    BLCallbackMinHeap callback_heap;

public:
    WCStrategyUtil(const string& strategyName);

    /** subscribe */
    /** subscribe md with MARKET_DATA flag */
    bool subscribe_market_data(boost::python::list tickers, int source);

    /** take actions */
    int insert_market_order(int source, string instrument_id, string exchange_id, uint64_t volume, LfDirectionType direction, LfOffsetFlagType offset,string misc_info = "",int64_t expect_price = 0);
    int insert_limit_order(int source, string instrument_id, string exchange_id, int64_t price, uint64_t volume, LfDirectionType direction, LfOffsetFlagType offset,string misc_info = "");
    int insert_fok_order(int source, string instrument_id, string exchange_id, int64_t price, uint64_t volume, LfDirectionType direction, LfOffsetFlagType offset,string misc_info = "");
    int insert_fak_order(int source, string instrument_id, string exchange_id, int64_t price, uint64_t volume, LfDirectionType direction, LfOffsetFlagType offset,string misc_info = "");
    int req_position(int source,string account_type="",string account_name="");
    int cancel_order(int source, int order_id,string misc_info = "");
    int batch_cancel_order(int source, vector<int> order_id_list, vector<string> misc_info_list);
    int req_get_kline_via_rest(int source, string instrument_id, string Interval = "15m", int Limit = 1000, bool IgnoreStartTime = false, int64_t StartTime = 0, int64_t EndTime = 0, string misc_info = "");
    int withdraw_currency(int source, string currency,int64_t volume,string address,string tag);
    int req_inner_transfer(int source,string currency,int64_t volume,string from,string to,string from_name = "",string to_name="",string ticker="");
    int transfer_history(int source, bool flag, string currency, int status, string start_Time, string end_Time, string from_id);    //false for deposit , true for withdraw
    int write_errormsg(int source, string name, int errorId, string errorMsg);
    int insert_quote_request(int source, string instrument_id,string expiry, string exchange_id, uint64_t volume, LfDirectionType direction, int64_t price = 0, bool is_hide_limit_price = true,string misc_info = "");
    int cancel_quote_request(int source, int quote_request_id,string misc_info = "");
    int insert_quote(int source, string instrument_id,int quote_request_id, int64_t price,string misc_info = "");
    int cancel_quote(int source, int quote_id,string misc_info = "");
    int accept_quote(int source, int quote_id,string misc_info = "");
    /** callback */
    /** process callback functions that match time, return number of functions that executed */
    int process_callback(long cur_time);
    /** insert callback functions */
    bool insert_callback(long nano, BLCallback& callback);
    /** insert python callback functions */
    bool insert_callback_py(long nano, boost::python::object func);
    /** set md nano time */
    void set_md_nano(long cur_time) { md_nano = cur_time; };
    /** set pos back */
    void set_pos_back(int source, const char* pos_str);

    /** basic utilities */
    /** nano time */
    long   get_nano();
    /** get string time with format "%Y-%m-%d %H:%M:%S" */
    string get_time();
    /** parse time */
    long   parse_time(string time_str);
    /** parse nano */
    string parse_nano(long nano);
    /* generate a tag with info*/
    string gen_md_trigger_tag(long time,int source,bool is_hedge = false,bool is_post_only = false);
    string gen_trade_trigger_tag(long time,int source,bool is_hedge = false,bool is_post_only = false);
    string gen_cancel_trigger_tag(long time,int source,int order_ref,int request_id,bool is_hedge = false,bool is_post_only = false);
    string gen_timeout_trigger_tag(long time,int source,bool is_hedge = false,bool is_post_only = false);
};

DECLARE_PTR(WCStrategyUtil);

WC_NAMESPACE_END

#endif //WINGCHUN_WCSTRATEGYUTIL_H

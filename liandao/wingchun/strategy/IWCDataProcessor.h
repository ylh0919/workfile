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
 * IWCDataProcessor: processor for data wrapper usage.
 * @Author cjiang (changhao.jiang@taurus.ai)
 * @since   September, 2017
 */

#ifndef WINGCHUN_IWCDATAPROCESSOR_H
#define WINGCHUN_IWCDATAPROCESSOR_H

#include "WC_DECLARE.h"
#include "PosHandler.hpp"
#include "longfist/LFDataStruct.h"

WC_NAMESPACE_START

using kungfu::yijinjing::PosHandler;
using kungfu::yijinjing::PosHandlerPtr;

typedef map<string, LFBarMarketDataField> BarMdMap;

class IWCDataProcessor
{
public:
    /* market data */
    virtual void on_market_data(const LFMarketDataField* data, int source, long rcv_time) = 0;
    virtual void on_market_bar_data(const LFBarMarketDataField* data, int source, long rcv_time) = 0;
    virtual void on_price_book_update(const LFPriceBook20Field* data, int source, long rcv_time) = 0;
    virtual void on_funding_update(const LFFundingField* data, int source, long rcv_time) = 0;
    virtual void on_quote_requests(const LFQuoteRequestsField* data, int source, long rcv_time) = 0;
    virtual void on_market_data_level2(const LFL2MarketDataField* data, int source, long rcv_time) = 0;
    virtual void on_l2_index(const LFL2IndexField* data, int source, long rcv_time) = 0;
    virtual void on_l2_order(const LFL2OrderField* data, int source, long rcv_time) = 0;
    virtual void on_l2_trade(const LFL2TradeField* data, int source, long rcv_time) = 0;
    virtual void on_priceindex(const LFPriceIndex* data, int source, long rcv_time) = 0;
    virtual void on_markprice(const LFMarkPrice* data, int source, long rcv_time) = 0;
    virtual void on_perpetual(const LFPerpetual* data, int source, long rcv_time) = 0;
    virtual void on_ticker(const LFTicker* data, int source, long rcv_time) = 0;
    virtual void on_trends_data(const GoogleTrendsData* data, int source, long rcv_time) = 0;
    /* market bar data */
    virtual void on_market_bar(const BarMdMap& data, int min_interval, int source, long rcv_time) = 0;
    /* trade data */
    virtual void on_rtn_order(const LFRtnOrderField* data, int request_id, int source, long rcv_time) = 0;
    virtual void on_rtn_trade(const LFRtnTradeField* data, int request_id, int source, long rcv_time) = 0;
    virtual void on_rtn_quote(const LFRtnQuoteField* data, int request_id, int source, long rcv_time) = 0;
    virtual void on_rsp_order(const LFInputOrderField* data, int request_id, int source, long rcv_time, int errorId=0, const char* errorMsg=nullptr) = 0;
    virtual void on_rsp_quote(const LFInputQuoteField* data, int request_id, int source, long rcv_time, int errorId=0, const char* errorMsg=nullptr) = 0;
    virtual void on_rsp_order_action(const LFOrderActionField* data, int request_id, int source, long rcv_time, int errorId=0, const char* errorMsg=nullptr) = 0;
    virtual void on_rsp_quote_action(const LFQuoteActionField* data, int request_id, int source, long rcv_time, int errorId=0, const char* errorMsg=nullptr) = 0;
    virtual void on_rsp_position(const PosHandlerPtr posMap, int request_id, int source, long rcv_time) = 0;
    virtual void on_rsp_transfer_history(const LFTransferHistoryField* data,int request_id,int source,long rcv_time,bool is_last,bool is_withdraw, int errorId=0, const char* errorMsg=nullptr) = 0;
    virtual void on_withdraw(const LFWithdrawField* data, int request_id, int source, long rcv_time, int errorId=0, const char* errorMsg=nullptr) = 0;
    virtual void on_transfer(const LFTransferField* data, int request_id, int source, long rcv_time, int errorId=0, const char* errorMsg=nullptr) = 0;
    virtual void on_bar_serial1000(const LFBarSerial1000Field* data, int request_id, int source, long rcv_time) = 0;
    /* system utilities */
    virtual void on_switch_day(long rcv_time) = 0;
    virtual void on_time(long cur_time) = 0;
    virtual void on_td_login(bool ready, const json& js, int source) = 0;
    /* on log */
    virtual void debug(const char* msg) = 0;
    /* get name */
    virtual string get_name() const = 0;
    /* signal received */
    static volatile int signal_received;
    /* signal handler */
    static volatile int signal_received1;
    static void signal_handler(int signum) { signal_received = signum; }
};

WC_NAMESPACE_END
#endif //WINGCHUN_IWCDATAPROCESSOR_H

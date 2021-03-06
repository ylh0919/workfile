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
 * TDEngineCTP: CTP's trade engine adapter.
 * @Author cjiang (changhao.jiang@taurus.ai)
 * @since   April, 2017
 */

#ifndef PROJECT_TDENGINECTP_H
#define PROJECT_TDENGINECTP_H

#include "ITDEngine.h"
#include "longfist/LFConstants.h"
#include "ThostFtdcTraderApi.h"
#include "CoinPairWhiteList.h"

WC_NAMESPACE_START

/**
 * account information unit extra for CTP is here.
 */
struct AccountUnitCTP
{
    // api
    CThostFtdcTraderApi* api;
    // extra information
    string  app_id;
    string  user_product_info;
    string  auth_code;
    int     front_id;
    int     session_id;
    // internal flags
    bool    initialized;
    bool    connected;
    bool    authenticated;
    bool    settle_confirmed;
    bool    logged_in;
    // some rids
    int     auth_rid;
    int     settle_rid;
    int     login_rid;

    CoinPairWhiteList coinPairWhiteList;
    CoinPairWhiteList positionWhiteList;
};

/**
 * CTP trade engine
 */
class TDEngineCTP: public ITDEngine, public CThostFtdcTraderSpi
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
    virtual string name() const { return "TDEngineCTP"; };

    // req functions
    virtual void req_investor_position(const LFQryPositionField* data, int account_index, int requestId);
    virtual void req_qry_account(const LFQryAccountField* data, int account_index, int requestId);
    virtual void req_order_insert(const LFInputOrderField* data, int account_index, int requestId, long rcv_time);
    virtual void req_order_action(const LFOrderActionField* data, int account_index, int requestId, long rcv_time);

public:
    TDEngineCTP();

private:
    // journal writers
    yijinjing::JournalWriterPtr raw_writer;
    // from config
    string front_uri;
    bool need_settleConfirm;
    bool need_authenticate;
    int curAccountIdx;
    vector<string> markets;
    vector<AccountUnitCTP> account_units;
    static constexpr int scale_offset = 1e8;

public:
    // SPI
    ///????????????????????????????????????????????????????????????????????????????????????????????????
    virtual void OnFrontConnected();

    ///???????????????????????????????????????????????????????????????????????????????????????????????????API???????????????????????????????????????????????????
    ///@param nReason ????????????
    ///        0x1001 ???????????????
    ///        0x1002 ???????????????
    ///        0x2001 ??????????????????
    ///        0x2002 ??????????????????
    ///        0x2003 ??????????????????
    virtual void OnFrontDisconnected(int nReason);

    ///?????????????????????
    virtual void OnRspAuthenticate(CThostFtdcRspAuthenticateField *pRspAuthenticateField,
                                   CThostFtdcRspInfoField *pRspInfo, int nRequestID, bool bIsLast);

    ///??????????????????
    virtual void OnRspUserLogin(CThostFtdcRspUserLoginField *pRspUserLogin, CThostFtdcRspInfoField *pRspInfo,
                                int nRequestID, bool bIsLast);

    ///?????????????????????????????????
    virtual void OnRspSettlementInfoConfirm(CThostFtdcSettlementInfoConfirmField *pSettlementInfoConfirm,
                                            CThostFtdcRspInfoField *pRspInfo, int nRequestID, bool bIsLast);

    ///??????????????????
    virtual void OnRspUserLogout(CThostFtdcUserLogoutField *pUserLogout, CThostFtdcRspInfoField *pRspInfo,
                                 int nRequestID, bool bIsLast);

    ///???????????????????????? (cjiang: this only be called when there is error)
    virtual void OnRspOrderInsert(CThostFtdcInputOrderField *pInputOrder, CThostFtdcRspInfoField *pRspInfo,
                                  int nRequestID, bool bIsLast);

    ///????????????????????????
    virtual void OnRspOrderAction(CThostFtdcInputOrderActionField *pInputOrderAction,
                                  CThostFtdcRspInfoField *pRspInfo, int nRequestID, bool bIsLast);

    ///?????????????????????????????????
    virtual void OnRspQryInvestorPosition(CThostFtdcInvestorPositionField *pInvestorPosition,
                                          CThostFtdcRspInfoField *pRspInfo, int nRequestID, bool bIsLast);

    ///????????????
    virtual void OnRtnOrder(CThostFtdcOrderField *pOrder);

    ///????????????
    virtual void OnRtnTrade(CThostFtdcTradeField *pTrade);

    ///??????????????????????????????
    virtual void OnRspQryTradingAccount(CThostFtdcTradingAccountField *pTradingAccount, CThostFtdcRspInfoField *pRspInfo, int nRequestID, bool bIsLast);
};

WC_NAMESPACE_END

#endif //PROJECT_TDENGINECTP_H

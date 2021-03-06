# -*- coding: utf-8 -*-
'''
Copyright [2017] [taurus.ai]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
'''
class SOURCE:
    CTP = 1
    XTP = 15
    BINANCE = 16
    OKEX = 18
    COINMEX = 19
    MOCK = 20
    ASCENDEX = 21
    BITFINEX = 22
    BITMEX = 23
    HITBTC = 24
    OCEANEX = 25
    HUOBI = 26
    OCEANEXB = 27
    PROBIT = 28
    BITHUMB = 29
    UPBIT = 30
    DAYBIT = 31
    KUCOIN = 32
    BITFLYER = 33
    KRAKEN = 34
    IB = 35
    BITTREX = 36
    POLONIEX = 37
    BITSTAMP = 38
    DERIBIT = 39
    EMX = 40
    COINFLEX = 41
    COINFLOOR = 42
    MOCKKUCOIN = 43
    MOCKBITMEX = 44
    ERISX = 45
    HBDM = 46
    KUMEX = 47
    BINANCEF = 48
    BEQUANT = 49
    COINCHECK = 50
    KRAKENF = 51
    OKEXF = 52
    FTX = 53
    GOOGLETRENDS = 57
    QDP = 58
    BINANCED = 59

    MOCKHBDM = 153
    MOCKCOINFLEX = 154
    MOCKBINANCE = 155
    MOCKDERIBIT = 156

class EXCHANGE:
    SSE = 'SSE' #上海证券交易所
    SZE = 'SZE' #深圳证券交易所
    CFFEX = 'CFFEX' #中国金融期货交易所
    SHFE = 'SHFE' #上海期货交易所
    DCE = 'DCE' #大连商品交易所
    CZCE = 'CZCE' #郑州商品交易所

###################################
# LfDirectionType: 买卖方向
###################################
class DIRECTION:
    Buy = '0' #买
    Sell = '1' #卖

###################################
# LfOffsetFlagType: 开平标志
###################################
class OFFSET:
    Open = '0' #开仓
    Close = '1' #平仓
    CloseToday = '3' #平今
    CloseYesterday = '4' #平昨

###################################
# LfOrderPriceTypeType: 报单价格条件
###################################
class PRICE_TYPE:
    AnyPrice = '1' #任意价
    LimitPrice = '2' #限价
    BestPrice = '3' #最优价

###################################
# LfOrderStatusType: 报单状态
###################################
class ORDER_STATUS:
    AllTraded = '0' #全部成交（最终状态）
    PartTradedQueueing = '1' #部分成交还在队列中
    PartTradedNotQueueing = '2' #部分成交不在队列中（部成部撤， 最终状态）
    NoTradeQueueing = '3' #未成交还在队列中
    NoTradeNotQueueing = '4' #未成交不在队列中（被拒绝，最终状态）
    Canceled = '5' #撤单
    AcceptedNoReply = '6' #订单已报入交易所未应答
    Unknown = 'a' #未知
    NotTouched = 'b' #尚未触发
    Touched = 'c' #已触发
    Error = 'd' #废单错误（最终状态）
    OrderInserted = 'i' #订单已写入
    OrderAccepted = 'j' #前置已接受

###################################
# LfPosiDirectionType: 持仓多空方向
###################################
class POS_DIRECTION:
    Net = '1' #净
    Long = '2' #多头
    Short = '3' #空头

###################################
# LfVolumeConditionType: 成交量类型
###################################
class VOLUME_TYPE:
    AV = '1' #任何数量
    MV = '2' #最小数量
    CV = '3' #全部数量

###################################
# LfTimeConditionType: 有效期类型
###################################
class TIME_CONDITION:
    IOC = '1' #立即完成，否则撤销
    GFS = '2' #本节有效
    GFD = '3' #当日有效
    GTD = '4' #指定日期前有效
    GTC = '5' #撤销前有效
    GFA = '6' #集合竞价有效


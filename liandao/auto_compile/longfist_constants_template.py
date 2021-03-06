#!/usr/bin/env python
# -*- coding: utf-8 -*-
# auto generated by struct_info_parser.py, please DO NOT edit!!!

class SOURCE:
{0}

class EXCHANGE:
    SSE = 'SSE' #上海证券交易所
    SZE = 'SZE' #深圳证券交易所
    CFFEX = 'CFFEX' #中国金融期货交易所
    SHFE = 'SHFE' #上海期货交易所
    DCE = 'DCE' #大连商品交易所
    CZCE = 'CZCE' #郑州商品交易所
{1}

class EXCHANGE_ID:
    SSE = 1 #上海证券交易所
    SZE = 2 #深圳证券交易所
    CFFEX = 11 #中国金融期货交易所
    SHFE = 12 #上海期货交易所
    DCE = 13 #大连商品交易所
    CZCE = 14 #郑州商品交易所
{0}

class MsgTypes:
    MD = 101
    L2_MD = 102
    L2_INDEX = 103
    L2_ORDER = 104
    L2_TRADE = 105
    PRICE_BOOK_20 = 106
    PRICE_BOOK_REST = 107
    BAR_MD = 110
    FUNDING = 111
    PRICE_INDEX = 112
    MARKPRICE = 113
    PERPETUAL = 114
    TICKER = 115
    QRY_POS = 201
    RSP_POS = 202
    ORDER = 204
    RTN_ORDER = 205
    RTN_TRADE = 206
    ORDER_ACTION = 207
    QRY_ACCOUNT = 208
    RSP_ACCOUNT = 209
    WITHDRAW = 210
    INNER_TRANSFER = 211
    TRANSFER_HISTORY = 212  

    ERRORMSG = 15

{2}


###################################
# LfActionFlagType: 报单操作标志
###################################
class LfActionFlagType:
    Delete = '0' #删除
    Suspend = '1' #挂起
    Active = '2' #激活
    Modify = '3' #修改

###################################
# LfContingentConditionType: 触发条件
###################################
class LfContingentConditionType:
    Immediately = '1' #立即
    Touch = '2' #止损
    TouchProfit = '3' #止赢
    ParkedOrder = '4' #预埋单
    LastPriceGreaterThanStopPrice = '5' #最新价大于条件价
    LastPriceGreaterEqualStopPrice = '6' #最新价大于等于条件价
    LastPriceLesserThanStopPrice = '7' #最新价小于条件价
    LastPriceLesserEqualStopPrice = '8' #最新价小于等于条件价
    AskPriceGreaterThanStopPrice = '9' #卖一价大于条件价
    AskPriceGreaterEqualStopPrice = 'A' #卖一价大于等于条件价
    AskPriceLesserThanStopPrice = 'B' #卖一价小于条件价
    AskPriceLesserEqualStopPrice = 'C' #卖一价小于等于条件价
    BidPriceGreaterThanStopPrice = 'D' #买一价大于条件价
    BidPriceGreaterEqualStopPrice = 'E' #买一价大于等于条件价
    BidPriceLesserThanStopPrice = 'F' #买一价小于条件价
    BidPriceLesserEqualStopPrice = 'H' #买一价小于等于条件价

###################################
# LfDirectionType: 买卖方向
###################################
class LfDirectionType:
    Buy = '0' #买
    Sell = '1' #卖

###################################
# LfForceCloseReasonType: 强平原因
###################################
class LfForceCloseReasonType:
    NotForceClose = '0' #非强平
    LackDeposit = '1' #资金不足
    ClientOverPositionLimit = '2' #客户超仓
    MemberOverPositionLimit = '3' #会员超仓
    NotMultiple = '4' #持仓非整数倍
    Violation = '5' #违规
    Other = '6' #其它
    PersonDeliv = '7' #自然人临近交割

###################################
# LfHedgeFlagType: 投机套保标志
###################################
class LfHedgeFlagType:
    Speculation = '1' #投机
    Argitrage = '2' #套利
    Hedge = '3' #套保
    MarketMaker = '4' #做市商(femas)
    AllValue = '9' #匹配所有的值(femas)

###################################
# LfOffsetFlagType: 开平标志
###################################
class LfOffsetFlagType:
    Open = '0' #开仓
    Close = '1' #平仓
    ForceClose = '2' #强平
    CloseToday = '3' #平今
    CloseYesterday = '4' #平昨
    ForceOff = '5' #强减
    LocalForceClose = '6' #本地强平
    Non = 'N' #不分开平

###################################
# LfOrderPriceTypeType: 报单价格条件
###################################
class LfOrderPriceTypeType:
    AnyPrice = '1' #任意价
    LimitPrice = '2' #限价
    BestPrice = '3' #最优价

###################################
# LfOrderStatusType: 报单状态
###################################
class LfOrderStatusType:
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
    PendingCancel = 'k'

###################################
# LfPosiDirectionType: 持仓多空方向
###################################
class LfPosiDirectionType:
    Net = '1' #净
    Long = '2' #多头
    Short = '3' #空头

###################################
# LfPositionDateType: 持仓日期
###################################
class LfPositionDateType:
    Today = '1' #今日持仓
    History = '2' #历史持仓
    Both = '3' #两种持仓

###################################
# LfTimeConditionType: 有效期类型
###################################
class LfTimeConditionType:
    IOC = '1' #立即完成，否则撤销
    GFS = '2' #本节有效
    GFD = '3' #当日有效
    GTD = '4' #指定日期前有效
    GTC = '5' #撤销前有效
    GFA = '6' #集合竞价有效
    FAK = 'A' #FAK或IOC(yisheng)
    FOK = 'O' #FOK(yisheng)

###################################
# LfVolumeConditionType: 成交量类型
###################################
class LfVolumeConditionType:
    AV = '1' #任何数量
    MV = '2' #最小数量
    CV = '3' #全部数量

###################################
# LfYsHedgeFlagType: 易盛投机保值类型
###################################
class LfYsHedgeFlagType:
    YsB = 'B' #保值
    YsL = 'L' #套利
    YsNon = 'N' #无
    YsT = 'T' #投机

###################################
# LfYsOrderStateType: 易盛委托状态类型
###################################
class LfYsOrderStateType:
    YsSubmit = '0' #终端提交
    YsAccept = '1' #已受理
    YsTriggering = '2' #策略待触发
    YsExctriggering = '3' #交易所待触发
    YsQueued = '4' #已排队
    YsPartFinished = '5' #部分成交
    YsFinished = '6' #完全成交
    YsCanceling = '7' #待撤消(排队临时状态)
    YsModifying = '8' #待修改(排队临时状态)
    YsCanceled = '9' #完全撤单
    YsLeftDeleted = 'A' #已撤余单
    YsFail = 'B' #指令失败
    YsDeleted = 'C' #策略删除
    YsSuppended = 'D' #已挂起
    YsDeletedForExpire = 'E' #到期删除
    YsEffect = 'F' #已生效——询价成功
    YsApply = 'G' #已申请——行权、弃权、套利等申请成功

###################################
# LfYsOrderTypeType: 易盛委托类型
###################################
class LfYsOrderTypeType:
    YsMarket = '1' #市价
    YsLimit = '2' #限价

###################################
# LfYsPositionEffectType: 易盛开平类型
###################################
class LfYsPositionEffectType:
    YsClose = 'C' #平仓
    YsNon = 'N' #不分开平
    YsOpen = 'O' #开仓
    YsCloseToday = 'T' #平当日

###################################
# LfYsSideTypeType: 易盛买卖类型
###################################
class LfYsSideTypeType:
    YsAll = 'A' #双边
    YsBuy = 'B' #买入
    YsNon = 'N' #无
    YsSell = 'S' #卖出

###################################
# LfYsTimeConditionType: 易盛委托有效类型
###################################
class LfYsTimeConditionType:
    YsGFD = '0' #当日有效
    YsGTC = '1' #撤销前有效
    YsGTD = '2' #指定日期前有效
    YsFAK = '3' #FAK或IOC
    YsFOK = '4' #FOK

LfActionFlagTypeMap = {{
    '0': 'Delete',
    '1': 'Suspend',
    '2': 'Active',
    '3': 'Modify',
}}

LfContingentConditionTypeMap = {{
    '1': 'Immediately',
    '2': 'Touch',
    '3': 'TouchProfit',
    '4': 'ParkedOrder',
    '5': 'LastPriceGreaterThanStopPrice',
    '6': 'LastPriceGreaterEqualStopPrice',
    '7': 'LastPriceLesserThanStopPrice',
    '8': 'LastPriceLesserEqualStopPrice',
    '9': 'AskPriceGreaterThanStopPrice',
    'A': 'AskPriceGreaterEqualStopPrice',
    'B': 'AskPriceLesserThanStopPrice',
    'C': 'AskPriceLesserEqualStopPrice',
    'D': 'BidPriceGreaterThanStopPrice',
    'E': 'BidPriceGreaterEqualStopPrice',
    'F': 'BidPriceLesserThanStopPrice',
    'H': 'BidPriceLesserEqualStopPrice',
}}

LfDirectionTypeMap = {{
    '0': 'Buy',
    '1': 'Sell',
}}

LfForceCloseReasonTypeMap = {{
    '0': 'NotForceClose',
    '1': 'LackDeposit',
    '2': 'ClientOverPositionLimit',
    '3': 'MemberOverPositionLimit',
    '4': 'NotMultiple',
    '5': 'Violation',
    '6': 'Other',
    '7': 'PersonDeliv',
}}

LfHedgeFlagTypeMap = {{
    '1': 'Speculation',
    '2': 'Argitrage',
    '3': 'Hedge',
    '4': 'MarketMaker',
    '9': 'AllValue',
}}

LfOffsetFlagTypeMap = {{
    '0': 'Open',
    '1': 'Close',
    '2': 'ForceClose',
    '3': 'CloseToday',
    '4': 'CloseYesterday',
    '5': 'ForceOff',
    '6': 'LocalForceClose',
    'N': 'Non',
}}

LfOrderPriceTypeTypeMap = {{
    '1': 'AnyPrice',
    '2': 'LimitPrice',
    '3': 'BestPrice',
}}

LfOrderStatusTypeMap = {{
    '0': 'AllTraded',
    '1': 'PartTradedQueueing',
    '2': 'PartTradedNotQueueing',
    '3': 'NoTradeQueueing',
    '4': 'NoTradeNotQueueing',
    '5': 'Canceled',
    '6': 'AcceptedNoReply',
    'a': 'Unknown',
    'b': 'NotTouched',
    'c': 'Touched',
    'd': 'Error',
    'i': 'OrderInserted',
    'j': 'OrderAccepted',
    'k': 'PendingCancel',
}}

LfPosiDirectionTypeMap = {{
    '1': 'Net',
    '2': 'Long',
    '3': 'Short',
}}

LfPositionDateTypeMap = {{
    '1': 'Today',
    '2': 'History',
    '3': 'Both',
}}

LfTimeConditionTypeMap = {{
    '1': 'IOC',
    '2': 'GFS',
    '3': 'GFD',
    '4': 'GTD',
    '5': 'GTC',
    '6': 'GFA',
    'A': 'FAK',
    'O': 'FOK',
}}

LfVolumeConditionTypeMap = {{
    '1': 'AV',
    '2': 'MV',
    '3': 'CV',
}}

LfYsHedgeFlagTypeMap = {{
    'B': 'YsB',
    'L': 'YsL',
    'N': 'YsNon',
    'T': 'YsT',
}}

LfYsOrderStateTypeMap = {{
    '0': 'YsSubmit',
    '1': 'YsAccept',
    '2': 'YsTriggering',
    '3': 'YsExctriggering',
    '4': 'YsQueued',
    '5': 'YsPartFinished',
    '6': 'YsFinished',
    '7': 'YsCanceling',
    '8': 'YsModifying',
    '9': 'YsCanceled',
    'A': 'YsLeftDeleted',
    'B': 'YsFail',
    'C': 'YsDeleted',
    'D': 'YsSuppended',
    'E': 'YsDeletedForExpire',
    'F': 'YsEffect',
    'G': 'YsApply',
}}

LfYsOrderTypeTypeMap = {{
    '1': 'YsMarket',
    '2': 'YsLimit',
}}

LfYsPositionEffectTypeMap = {{
    'C': 'YsClose',
    'N': 'YsNon',
    'O': 'YsOpen',
    'T': 'YsCloseToday',
}}

LfYsSideTypeTypeMap = {{
    'A': 'YsAll',
    'B': 'YsBuy',
    'N': 'YsNon',
    'S': 'YsSell',
}}

LfYsTimeConditionTypeMap = {{
    '0': 'YsGFD',
    '1': 'YsGTC',
    '2': 'YsGTD',
    '3': 'YsFAK',
    '4': 'YsFOK',
}}


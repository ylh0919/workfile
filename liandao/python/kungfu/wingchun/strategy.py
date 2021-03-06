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

import os, sys, importlib, ctypes
import kungfu.longfist.longfist_constants as lf
import kungfu.longfist.longfist_structs as structs
from functools import partial
import libwingchunstrategy
from wc_configs import context
from wc_configs import context_usage
from constants import ORDER_STATUS

class Strategy:

    def __init__(self, strategy_name, file_name):
        self.strategy = libwingchunstrategy.Strategy(strategy_name)
        context.data_wrapper = self.strategy.get_data_wrapper()
        context.strategy_util = self.strategy.get_strategy_util()
        for func_name, transfer_func, comment, params in context_usage:
            context[func_name] = transfer_func(self.strategy)
        sys.path.append(os.path.dirname(file_name))
        self.module = self.get_module(file_name)
        self.setup_functions()

    def get_module(self, file_name):
        tmp_folder = '/shared/kungfu/runtime/'
        module_name = os.path.splitext(os.path.basename(file_name))[0] + '_kungfu'
        fout = open('{}{}.py'.format(tmp_folder, module_name), 'w')
        fout.write('''from kungfu.wingchun.constants import *\n''')
        fout.write(open(file_name).read())
        fout.close()
        sys.path.append(tmp_folder)
        module = importlib.import_module(module_name)
        sys.path.remove(tmp_folder)
        return module

    def run(self):
        self.strategy.init()
        self.strategy.start()
        self.strategy.block()

    def set_func(self, msg_type, func_name):
        func = getattr(self.module, func_name, None)
        if func != None:
            def func_parse(func, msg_type, raw_data, source, nano):
                data = ctypes.cast(raw_data, ctypes.POINTER(structs.MsgType2LFStruct[msg_type])).contents
                return func(context, data, source, nano)
            self.strategy.set_on_data(msg_type, partial(func_parse, func, msg_type))

    def set_func_rid(self, msg_type, func_name):
        func = getattr(self.module, func_name, None)
        if func != None:
            def func_parse(func, msg_type, raw_data, request_id, source, nano):
                data = ctypes.cast(raw_data, ctypes.POINTER(structs.MsgType2LFStruct[msg_type])).contents
                return func(context, data, request_id, source, nano)
            self.strategy.set_on_data(msg_type, partial(func_parse, func, msg_type))

    def set_bar(self, func_name):
        bar_func = getattr(self.module, func_name, None)
        if bar_func is not None:
            def func_parse(func, raw_dict, min_interval, source, nano):
                new_dict = {}
                for ticker, raw_data in raw_dict.items():
                    new_dict[ticker] = ctypes.cast(raw_data, ctypes.POINTER(structs.MsgType2LFStruct[lf.MsgTypes.BAR_MD])).contents
                return func(context, new_dict, min_interval, source, nano)
            self.strategy.set_on_data(lf.MsgTypes.BAR_MD, partial(func_parse, bar_func))

    def set_price_book20(self, func_name):
        price_func = getattr(self.module, func_name, None)
        if price_func is not None:
            def func_parse(func, raw_data, source, nano):
                data = ctypes.cast(raw_data, ctypes.POINTER(structs.MsgType2LFStruct[lf.MsgTypes.PRICE_BOOK_20])).contents
                return func(context, data, source, nano)
            self.strategy.set_on_data(lf.MsgTypes.PRICE_BOOK_20, partial(func_parse, price_func))
    def set_funding(self, func_name):
        funding_func = getattr(self.module, func_name, None)
        if funding_func is not None:
            def func_parse(func, raw_data, source, nano):
                data = ctypes.cast(raw_data, ctypes.POINTER(structs.MsgType2LFStruct[lf.MsgTypes.FUNDING])).contents
                return func(context, data, source, nano)
            self.strategy.set_on_data(lf.MsgTypes.FUNDING, partial(func_parse, funding_func))
    def set_withdraw(self,func_name):
        withdraw_func = getattr(self.module, func_name, None)
        if withdraw_func is not None:
            def func_parse(func, raw_data, request_id, source, nano):
                data = ctypes.cast(raw_data, ctypes.POINTER(structs.MsgType2LFStruct[lf.MsgTypes.WITHDRAW])).contents
                return func(context, data, request_id, source, nano)
            self.strategy.set_on_data(lf.MsgTypes.WITHDRAW, partial(func_parse, withdraw_func))
    def set_trends_data(self,func_name):
        trends_data_func = getattr(self.module, func_name, None)
        if trends_data_func is not None:
            def func_parse(func, raw_data, request_id, source, nano):
                data = ctypes.cast(raw_data, ctypes.POINTER(structs.MsgType2LFStruct[lf.MsgTypes.TRENDS_DATA])).contents
                return func(context, data, request_id, source, nano)
            self.strategy.set_on_data(lf.MsgTypes.TRENDS_DATA, partial(func_parse, trends_data_func))
    def set_bar_serial1000(self,func_name):
        bar_serial1000_func = getattr(self.module, func_name, None)
        if bar_serial1000_func is not None:
            def func_parse(func, raw_data, request_id, source, nano):
                data = ctypes.cast(raw_data, ctypes.POINTER(structs.MsgType2LFStruct[lf.MsgTypes.BAR_SERIAL1000])).contents
                return func(context, data, request_id, source, nano)
            self.strategy.set_on_data(lf.MsgTypes.BAR_SERIAL1000, partial(func_parse, bar_serial1000_func))
    def set_transfer(self,func_name):
        transfer_func = getattr(self.module, func_name, None)
        if transfer_func is not None:
            def func_parse(func, raw_data, request_id, source, nano):
                data = ctypes.cast(raw_data, ctypes.POINTER(structs.MsgType2LFStruct[lf.MsgTypes.INNER_TRANSFER])).contents
                return func(context, data, request_id, source, nano)
            self.strategy.set_on_data(lf.MsgTypes.INNER_TRANSFER, partial(func_parse, transfer_func))
    def set_transfer_history(self,func_name):
        transfer_history_func = getattr(self.module, func_name, None)
        if transfer_history_func is not None:
            def func_parse(func, raw_data, request_id, source, nano, is_Last, flag):
                data = ctypes.cast(raw_data, ctypes.POINTER(structs.MsgType2LFStruct[lf.MsgTypes.TRANSFER_HISTORY])).contents   
                return func(context, data, request_id, source, nano, is_Last, flag)        
            self.strategy.set_on_data(lf.MsgTypes.TRANSFER_HISTORY, partial(func_parse, transfer_history_func))
    def set_priceindex(self,func_name):
        priceindex_func = getattr(self.module, func_name, None)
        if priceindex_func is not None:
            def func_parse(func, raw_data, source, nano):
                data = ctypes.cast(raw_data, ctypes.POINTER(structs.MsgType2LFStruct[lf.MsgTypes.PRICE_INDEX])).contents
                return func(context, data, source, nano)
            self.strategy.set_on_data(lf.MsgTypes.PRICE_INDEX, partial(func_parse, priceindex_func))
    def set_markprice(self,func_name):
        markprice_func = getattr(self.module, func_name, None)
        if markprice_func is not None:
            def func_parse(func, raw_data, source, nano):
                data = ctypes.cast(raw_data, ctypes.POINTER(structs.MsgType2LFStruct[lf.MsgTypes.MARKPRICE])).contents
                return func(context, data, source, nano)
            self.strategy.set_on_data(lf.MsgTypes.MARKPRICE, partial(func_parse, markprice_func))
    def set_perpetual(self,func_name):
        perpetual_func = getattr(self.module, func_name, None)
        if perpetual_func is not None:
            def func_parse(func, raw_data, source, nano):
                data = ctypes.cast(raw_data, ctypes.POINTER(structs.MsgType2LFStruct[lf.MsgTypes.PERPETUAL])).contents
                return func(context, data, source, nano)
            self.strategy.set_on_data(lf.MsgTypes.PERPETUAL, partial(func_parse, perpetual_func))
    def set_quote_requests(self,func_name):
        quote_requests_func = getattr(self.module, func_name, None)
        if quote_requests_func is not None:
            def func_parse(func, raw_data, source, nano):
                data = ctypes.cast(raw_data, ctypes.POINTER(structs.MsgType2LFStruct[lf.MsgTypes.QUOTE_REQUESTS])).contents
                return func(context, data, source, nano)
            self.strategy.set_on_data(lf.MsgTypes.QUOTE_REQUESTS, partial(func_parse, quote_requests_func))
    def set_ticker(self,func_name):
        ticker_func = getattr(self.module, func_name, None)
        if ticker_func is not None:
            def func_parse(func, raw_data, source, nano):
                data = ctypes.cast(raw_data, ctypes.POINTER(structs.MsgType2LFStruct[lf.MsgTypes.TICKER])).contents
                return func(context, data, source, nano)
            self.strategy.set_on_data(lf.MsgTypes.TICKER, partial(func_parse, ticker_func))
    def set_bar_data(self, func_name):
        bar_func = getattr(self.module, func_name, None)
        if bar_func is not None:
            def func_parse(func, raw_data, source, nano):
                data = ctypes.cast(raw_data, ctypes.POINTER(structs.MsgType2LFStruct[lf.MsgTypes.BAR_MD])).contents
                return func(context, data, source, nano)
            self.strategy.set_on_data(lf.MsgTypes.BAR_MD, partial(func_parse, bar_func))
    def set_func_l2_trade(self,func_name):
        trade_func = getattr(self.module, func_name, None)
        if trade_func is not None:
            def func_parse(func, raw_data, source, nano):
                data = ctypes.cast(raw_data, ctypes.POINTER(structs.MsgType2LFStruct[lf.MsgTypes.L2_TRADE])).contents
                return func(context, data, source, nano)
            self.strategy.set_on_data(lf.MsgTypes.L2_TRADE, partial(func_parse, trade_func))

    def set_func_error(self, func_name):
        bar_func = getattr(self.module, func_name, None)
        if bar_func is not None:
            self.strategy.set_on_error(partial(bar_func, context))

    def set_func_pos(self, func_name):
        pos_func = getattr(self.module, func_name, None)
        if pos_func is not None:
            self.strategy.set_on_pos(partial(pos_func, context))

    def set_func_switch_day(self, func_name):
        switch_day_func = getattr(self.module, func_name, None)
        if switch_day_func is not None:
            self.strategy.set_on_switch_day(partial(switch_day_func, context))

    def setup_functions(self):
        init_func = getattr(self.module, 'initialize', None)
        if init_func is None:
            raise Exception('No \"initialize\" function')
        self.strategy.set_init(partial(init_func, context))

        self.set_bar('on_bar')
        self.set_bar_data('on_bar_data')
        self.set_price_book20('on_price_book')
        self.set_funding('on_funding')
        self.set_func(lf.MsgTypes.MD, 'on_tick')
        self.set_func_rid(lf.MsgTypes.RTN_ORDER, 'on_rtn_order')
        self.set_func_rid(lf.MsgTypes.RTN_TRADE, 'on_rtn_trade')
        self.set_func_rid(lf.MsgTypes.RTN_QUOTE, 'on_rtn_quote')
        self.set_func_error('on_error')
        self.set_func_pos('on_pos')
        self.set_func_switch_day('on_switch_day')
        self.set_withdraw('on_withdraw')
        self.set_trends_data('on_trends_data')
        self.set_bar_serial1000('on_bar_serial1000')
        self.set_func_l2_trade('on_l2_trade')
        self.set_transfer('on_transfer')
        self.set_transfer_history('on_transfer_history')
        self.set_priceindex('on_priceindex')
        self.set_markprice('on_markprice')
        self.set_perpetual('on_perpetual')
        self.set_ticker('on_ticker')
        self.set_quote_requests('on_quote_requests')

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

'''
test limit order and order cancelling for new wingchun strategy system.
you may run this program by:
wingchun strategy -n my_test -p binance_order_cancel_test.py
'''

def initialize(context):
    context.set_ws_url("127.0.0.1:4567")
    context.add_md(source=SOURCE.BINANCE)
    context.ticker = 'btc_usdt'
    context.exchange_id = EXCHANGE.SHFE
    context.buy_price = -1
    context.sell_price = -1
    context.order_rid = -1
    context.cancel_id = -1
    context.add_td(source=SOURCE.DERIBIT)
    context.subscribe(tickers=[context.ticker], source=SOURCE.DERIBIT)

def on_price_book(context, price_book, source, rcv_time):
    context.write_errormsg(source,301,"ada_usd_211231-pair_short_close-999999")
    print 'symbol' , price_book.InstrumentID
    #print 'ExchangeID' , price_book.ExchangeID
    #print 'BidLevels' , price_book.BidLevels
    #print 'AskLevels' , price_book.BidLevels
    #file_name="/code/binance.txt"
    #with open(file_name,'a') as file_object:
    #    file_object.write('symbol '+ str(price_book.InstrumentID)+'\n')
    #    file_object.write('ExchangeID '+str(price_book.ExchangeID)+'\n')
    #    file_object.write('BidLevels '+str(price_book.BidLevels)+'\n')
    #    file_object.write('AskLevels '+str(price_book.BidLevels)+'\n')



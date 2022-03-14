def initialize(context):
    context.add_md(source=SOURCE.COINFLEX)
    context.exchange_id = EXCHANGE.SHFE
    context.subscribe(tickers=['btc_usdt_aug','btc_usdt'], source=SOURCE.COINFLEX)
count =1
start = 1
last_time = 0
f = open("./coinflex_data.txt","w")
def on_price_book(context, price_book, source, rcv_time):
    global count
    global start
    global last_time
    global f
    if(count == 1): start = rcv_time
    delta = rcv_time - last_time
    f.write(str(rcv_time) + " ")
    f.write(str(delta)+"\n")
    print 'start:'+ str(start)
    print 'the time delta:' + str(delta)
    print 'symbol:'+ price_book.InstrumentID+',time:'+str(rcv_time)+',count:' +str(count)
    count+=1
    last_time = rcv_time

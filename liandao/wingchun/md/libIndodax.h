#include <iostream>
#include<ctime>
using namespace std;

class libIndodax{
public:
    libIndodax();
    libIndodax(string _k, string _s);
    ~libIndodax();

    string getTickerC(string _t);
    string getTradesC(string _t);
    string getDepthC(string _t);
    
    string getInfoC();
    string transHistoryC();
    string tradeHistoryC(string _pair);
    string openOrdersC();
    string orderHistoryC(string _pair);
    string getOrderC(string _pair, string _orderid);

    int tradeC(string _pair, string _type, string _price, string _amount);
    int cancelOrderC(string _pair, string _orderid, string _type);

    int withdrawCoinC();
private:
    string secret;
    string key;
    clock_t start;
    clock_t end;
};
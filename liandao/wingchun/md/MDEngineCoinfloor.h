#ifndef WINGCHUN_MDEngineCoinfloor_H
#define WINGCHUN_MDEngineCoinfloor_H

#include "IMDEngine.h"
#include "longfist/LFConstants.h"
#include "CoinPairWhiteList.h"
#include "PriceBook20Assembler.h"
#include <libwebsockets.h>
#include <document.h>
#include <map>
#include <vector>

WC_NAMESPACE_START

using rapidjson::Document;


struct CoinBaseQuote
{
	int base;
	int quote;
};


struct PriceAndVolume
{
	int64_t price;
	int64_t volume;
};

struct SubscribeChannel
{
	int channelId;
	string exchange_coinpair;
	//book or trade or ...
	string subType;
	string channelname;
};


class MDEngineCoinfloor : public IMDEngine
{
public:
	/** load internal information from config json */
	virtual void load(const json& j_config);
	virtual void connect(long timeout_nsec);
	virtual void login(long timeout_nsec);
	virtual void logout();
	virtual void release_api();
	virtual void subscribeMarketData(const vector<string>& instruments, const vector<string>& markets);
	virtual bool is_connected() const { return connected; };
	virtual bool is_logged_in() const { return logged_in; };
	virtual string name() const { return "MDEngineCoinfloor"; };

public:
	MDEngineCoinfloor();

	void on_lws_data(struct lws* conn, const char* data, size_t len);
	void on_lws_connection_error(struct lws* conn);
	int lws_write_subscribe(struct lws* conn);

private:
	/*    inline int64_t getTimestamp();

		void onPing(struct lws* conn, Document& json);
		void onInfo(Document& json);
		void onSubscribed(Document& json);*/

	void onBook(Document& json);
	void onTrade(Document& json);
	//    void kline(Document& json);

	 /*   SubscribeChannel findByChannelID(int channelId);
		SubscribeChannel findByChannelNAME(string channelname);*/

	std::string parseJsonToString(Document &d);
	std::string createBookJsonString(int num, int base, int quote);;

	void split(std::string str, std::string token, CoinBaseQuote& sub);

	void loop();


	virtual void set_reader_thread() override;
	void debug_print(std::vector<std::string> &subJsonString);
	void debug_print(std::vector<SubscribeChannel> &websocketSubscribeChannel);


	void makeWebsocketSubscribeJsonString();
private:
	ThreadPtr rest_thread;
	bool connected = false;
	bool logged_in = false;

	int book_depth_count = 25;
	int trade_count = 10;
	int rest_get_interval_ms = 500;

	static constexpr int scale_offset = 1e6;

	struct lws_context *context = nullptr;

	size_t subscribe_index = 0;
	uint64_t last_rest_get_ts = 0;
	//subscribe_channel
	std::vector<SubscribeChannel> websocketSubscribeChannel;
	SubscribeChannel EMPTY_CHANNEL = { 0 };

	std::string btc_jpy = "lightning_board_snapshot_BTC_JPY";
	std::string fx_btc_jpy = "lightning_board_snapshot_FX_BTC_JPY";
	std::string eth_btc = "lightning_board_snapshot_ETH_BTC";

	std::string trade_channel = "trades";
	std::string book_channel = "book";
	std::string executions_channel = "executions";

	PriceBook20Assembler priceBook20Assembler;

	std::vector<std::string> websocketSubscribeJsonString;

	std::vector<std::string> websocketPendingSendMsg;

	std::map<int, CoinBaseQuote> currency;
	std::map<int64_t, PriceAndVolume> PriceId;
	CoinPairWhiteList coinPairWhiteList;

	std::vector<CoinBaseQuote> coinBaseQuotes;
};

DECLARE_PTR(MDEngineCoinfloor);

WC_NAMESPACE_END

#endif



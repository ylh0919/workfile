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
 * Journal Finder
 * @Author kdong (keren.dong@taurus.ai)
 * @since  Feb, 2018
 * Find journal names and folders from longfist meta data.
 */

#include "JournalFinder.h"

#include "PageUtil.h"

#include <boost/unordered_set.hpp>

USING_YJJ_NAMESPACE

JournalPair getSystemJournalPair(int source) {
    return {PAGED_JOURNAL_FOLDER, PAGED_JOURNAL_NAME};
}

void JournalFinder::addJournalInfo(std::string name, std::string folder) {
    all_journal[name] = folder;
    all_journal_names.push_back(name);

    vector<short> pageNums = PageUtil::GetPageNums(folder, name);
    if (!pageNums.empty()) {
        avaliable_journal_names.push_back(name);
        avaliable_journal_folders.push_back(folder);
    }
}

void JournalFinder::loadJournalInfo(int source, JournalPair (*getJournalPair)(int)) {
    JournalPair pair = getJournalPair(source);
    if (pair.first.length() > 0) {
        all_journal[pair.second] = pair.first;
        all_journal_names.push_back(pair.second);

        vector<short> pageNums = PageUtil::GetPageNums(pair.first, pair.second);
        if (!pageNums.empty()) {
            avaliable_journal_names.push_back(pair.second);
            avaliable_journal_folders.push_back(pair.first);
        }
    }
}

void JournalFinder::loadJournalInfo(int source) {
    loadJournalInfo(source, getMdJournalPair);
    loadJournalInfo(source, getMdRawJournalPair);
    loadJournalInfo(source, getTdJournalPair);
    loadJournalInfo(source, getTdRawJournalPair);
    loadJournalInfo(source, getTdSendJournalPair);
    loadJournalInfo(source, getTdQJournalPair);
}

JournalFinder::JournalFinder() {
    loadJournalInfo(SOURCE_CTP);
    loadJournalInfo(SOURCE_XTP);
    loadJournalInfo(SOURCE_BINANCE);
    loadJournalInfo(SOURCE_COINMEX);
    loadJournalInfo(SOURCE_MOCK);
    loadJournalInfo(SOURCE_ASCENDEX);
    loadJournalInfo(SOURCE_BITFINEX);
    loadJournalInfo(SOURCE_BITMEX);
    loadJournalInfo(SOURCE_HITBTC);
    loadJournalInfo(SOURCE_OCEANEX);
    loadJournalInfo(SOURCE_OKEX);
    loadJournalInfo(SOURCE_HUOBI);
	loadJournalInfo(SOURCE_OCEANEXB);
    loadJournalInfo(SOURCE_PROBIT);
    loadJournalInfo(SOURCE_BITHUMB);
    loadJournalInfo(SOURCE_UPBIT);
    loadJournalInfo(SOURCE_DAYBIT);
    loadJournalInfo(SOURCE_BITFLYER);
    loadJournalInfo(SOURCE_KUCOIN);
    loadJournalInfo(SOURCE_KRAKEN);
    loadJournalInfo(SOURCE_IB);
    loadJournalInfo(SOURCE_BITTREX);
    loadJournalInfo(SOURCE_POLONIEX);
    loadJournalInfo(SOURCE_BITSTAMP);
    loadJournalInfo(SOURCE_DERIBIT);
    loadJournalInfo(SOURCE_EMX);
    loadJournalInfo(SOURCE_COINFLEX);
    loadJournalInfo(SOURCE_COINFLOOR);
    loadJournalInfo(SOURCE_MOCKKUCOIN);
    loadJournalInfo(SOURCE_MOCKBITMEX);
    loadJournalInfo(SOURCE_BINANCEF);
    loadJournalInfo(SOURCE_HBDM);
    loadJournalInfo(SOURCE_KUMEX);
    loadJournalInfo(SOURCE_ERISX);
    loadJournalInfo(SOURCE_BEQUANT);
    loadJournalInfo(SOURCE_KRAKENF);
    loadJournalInfo(SOURCE_COINCHECK);
    loadJournalInfo(SOURCE_OKEXF);
    loadJournalInfo(SOURCE_FTX);
    loadJournalInfo(SOURCE_MOCKHBDM);
    loadJournalInfo(SOURCE_MOCKCOINFLEX);
    loadJournalInfo(SOURCE_MOCKBINANCE);
    loadJournalInfo(SOURCE_MOCKDERIBIT);
    loadJournalInfo(SOURCE_GOOGLETRENDS);
    loadJournalInfo(SOURCE_QDP);
    loadJournalInfo(SOURCE_BINANCED);
    loadJournalInfo(0, getSystemJournalPair);

    boost::filesystem::path bl_journal_folder(BL_BASE_FOLDER);
    boost::regex pattern(JOURNAL_NAME_PATTERN);
    vector<short> res;
    boost::unordered_set<string> strategy_names;
    for (auto &file : boost::filesystem::directory_iterator(bl_journal_folder)) {
        std::string filename = file.path().filename().string();
        boost::smatch result;
        if (boost::regex_match(filename, result, pattern)) {
            std::string journal_name(result[1].first, result[1].second);
            if (strategy_names.find(journal_name) == strategy_names.end()) {
                addJournalInfo(journal_name, BL_BASE_FOLDER);
                strategy_names.insert(journal_name);
            }
        }
    }
}


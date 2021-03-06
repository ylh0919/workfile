#ifndef INTERFACE_MANAGER_H
#define INTERFACE_MANAGER_H

#include <algorithm>
#include <cctype>
#include <cstdint>
#include <string>
#include <vector>
#include <mutex>


struct HostInterface
{
	bool enable;
	std::string host;
	int64_t beginTime;
};

class InterfaceMgr   {
public:
  	InterfaceMgr();
	~InterfaceMgr();
  	void init(const std::string& interfaces);
	void init(const std::string& interfaces, int timeout);

	void disable(const std::string& interface);
	std::string getActiveInterface();
	void print();
	std::vector<std::string> getInterface(const std::string &src);
	
private: 
	inline int64_t getTimestamp();
	void initArray(const std::string &Interface);
	std::vector<std::string> split(const std::string& src, const std::string& delimiter);

private:
	std::vector<HostInterface> m_vector;
	int m_timeout;
	std::mutex* m_mutex = nullptr;
	int m_index;
};


#endif



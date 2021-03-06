# Copyright [2017] [taurus.ai]
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
CMAKE_MINIMUM_REQUIRED(VERSION 3.7)
PROJECT(monitordaemon)

INCLUDE_DIRECTORIES(${CMAKE_SOURCE_DIR}/utils/rapidjson/include/ ${CMAKE_SOURCE_DIR}/utils/uwebsockets/include/)
INCLUDE_DIRECTORIES(../../yijinjing/log)
INCLUDE_DIRECTORIES(../../yijinjing/utils)
INCLUDE_DIRECTORIES(../../yijinjing/journal)
INCLUDE_DIRECTORIES(../../utils)
INCLUDE_DIRECTORIES(../../wingchun/base)
INCLUDE_DIRECTORIES(../../longfist)
INCLUDE_DIRECTORIES(../common)
INCLUDE_DIRECTORIES(${CMAKE_SOURCE_DIR}/utils/cpr/include/cpr)

SET(MONITORAPI_SOURCE_FILES DaemonWrapper.h DaemonWrapper.cpp Daemon.h Daemon.cpp Smtp.h Smtp.cpp SingleSendMail.h SingleSendMail.cpp)
ADD_LIBRARY(${PROJECT_NAME} SHARED ${MONITORAPI_SOURCE_FILES})

SET(DAEMON_LIBRARIES ${CMAKE_SOURCE_DIR}/utils/cpr/lib/libssl.so.10 ${CMAKE_SOURCE_DIR}/utils/poco/lib/libPocoNet.so ${CMAKE_SOURCE_DIR}/utils/uwebsockets/lib/libuWS.so ${CMAKE_SOURCE_DIR}/utils/zlib/lib/libz.so.1.2.11 ${CMAKE_SOURCE_DIR}/utils/cpr/lib/libcpr.so ${CMAKE_SOURCE_DIR}//utils/cpr/lib/libssl.so 
${CMAKE_SOURCE_DIR}/utils/cpr/lib/libcrypto.so)
TARGET_LINK_LIBRARIES(${PROJECT_NAME} python kflog journal ${Boost_LIBRARIES}  ${DAEMON_LIBRARIES})

INSTALL(TARGETS ${PROJECT_NAME} DESTINATION "lib/wingchun")
INSTALL(FILES ${DAEMON_LIBRARIES} DESTINATION "lib/wingchun")
INSTALL(DIRECTORY ${CMAKE_SOURCE_DIR}/utils/poco/lib/ DESTINATION "lib/wingchun")
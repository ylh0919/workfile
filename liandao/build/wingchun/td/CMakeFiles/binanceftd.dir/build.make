# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /shared/liandao

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /shared/liandao/build

# Include any dependencies generated for this target.
include wingchun/td/CMakeFiles/binanceftd.dir/depend.make

# Include the progress variables for this target.
include wingchun/td/CMakeFiles/binanceftd.dir/progress.make

# Include the compile flags for this target's objects.
include wingchun/td/CMakeFiles/binanceftd.dir/flags.make

wingchun/td/CMakeFiles/binanceftd.dir/ITDEngine.cpp.o: wingchun/td/CMakeFiles/binanceftd.dir/flags.make
wingchun/td/CMakeFiles/binanceftd.dir/ITDEngine.cpp.o: ../wingchun/td/ITDEngine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object wingchun/td/CMakeFiles/binanceftd.dir/ITDEngine.cpp.o"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/binanceftd.dir/ITDEngine.cpp.o -c /shared/liandao/wingchun/td/ITDEngine.cpp

wingchun/td/CMakeFiles/binanceftd.dir/ITDEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binanceftd.dir/ITDEngine.cpp.i"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/wingchun/td/ITDEngine.cpp > CMakeFiles/binanceftd.dir/ITDEngine.cpp.i

wingchun/td/CMakeFiles/binanceftd.dir/ITDEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binanceftd.dir/ITDEngine.cpp.s"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/wingchun/td/ITDEngine.cpp -o CMakeFiles/binanceftd.dir/ITDEngine.cpp.s

wingchun/td/CMakeFiles/binanceftd.dir/ITDEngine.cpp.o.requires:

.PHONY : wingchun/td/CMakeFiles/binanceftd.dir/ITDEngine.cpp.o.requires

wingchun/td/CMakeFiles/binanceftd.dir/ITDEngine.cpp.o.provides: wingchun/td/CMakeFiles/binanceftd.dir/ITDEngine.cpp.o.requires
	$(MAKE) -f wingchun/td/CMakeFiles/binanceftd.dir/build.make wingchun/td/CMakeFiles/binanceftd.dir/ITDEngine.cpp.o.provides.build
.PHONY : wingchun/td/CMakeFiles/binanceftd.dir/ITDEngine.cpp.o.provides

wingchun/td/CMakeFiles/binanceftd.dir/ITDEngine.cpp.o.provides.build: wingchun/td/CMakeFiles/binanceftd.dir/ITDEngine.cpp.o


wingchun/td/CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.o: wingchun/td/CMakeFiles/binanceftd.dir/flags.make
wingchun/td/CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.o: ../wingchun/base/IEngine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object wingchun/td/CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.o"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.o -c /shared/liandao/wingchun/base/IEngine.cpp

wingchun/td/CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.i"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/wingchun/base/IEngine.cpp > CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.i

wingchun/td/CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.s"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/wingchun/base/IEngine.cpp -o CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.s

wingchun/td/CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.o.requires:

.PHONY : wingchun/td/CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.o.requires

wingchun/td/CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.o.provides: wingchun/td/CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.o.requires
	$(MAKE) -f wingchun/td/CMakeFiles/binanceftd.dir/build.make wingchun/td/CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.o.provides.build
.PHONY : wingchun/td/CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.o.provides

wingchun/td/CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.o.provides.build: wingchun/td/CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.o


wingchun/td/CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.o: wingchun/td/CMakeFiles/binanceftd.dir/flags.make
wingchun/td/CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.o: ../wingchun/base/TDUserStruct.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object wingchun/td/CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.o"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.o -c /shared/liandao/wingchun/base/TDUserStruct.cpp

wingchun/td/CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.i"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/wingchun/base/TDUserStruct.cpp > CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.i

wingchun/td/CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.s"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/wingchun/base/TDUserStruct.cpp -o CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.s

wingchun/td/CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.o.requires:

.PHONY : wingchun/td/CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.o.requires

wingchun/td/CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.o.provides: wingchun/td/CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.o.requires
	$(MAKE) -f wingchun/td/CMakeFiles/binanceftd.dir/build.make wingchun/td/CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.o.provides.build
.PHONY : wingchun/td/CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.o.provides

wingchun/td/CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.o.provides.build: wingchun/td/CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.o


wingchun/td/CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.o: wingchun/td/CMakeFiles/binanceftd.dir/flags.make
wingchun/td/CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.o: ../wingchun/td/TDEngineBinanceF.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object wingchun/td/CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.o"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.o -c /shared/liandao/wingchun/td/TDEngineBinanceF.cpp

wingchun/td/CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.i"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/wingchun/td/TDEngineBinanceF.cpp > CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.i

wingchun/td/CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.s"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/wingchun/td/TDEngineBinanceF.cpp -o CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.s

wingchun/td/CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.o.requires:

.PHONY : wingchun/td/CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.o.requires

wingchun/td/CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.o.provides: wingchun/td/CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.o.requires
	$(MAKE) -f wingchun/td/CMakeFiles/binanceftd.dir/build.make wingchun/td/CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.o.provides.build
.PHONY : wingchun/td/CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.o.provides

wingchun/td/CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.o.provides.build: wingchun/td/CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.o


wingchun/td/CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.o: wingchun/td/CMakeFiles/binanceftd.dir/flags.make
wingchun/td/CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.o: ../wingchun/base/CoinPairWhiteList.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object wingchun/td/CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.o"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.o -c /shared/liandao/wingchun/base/CoinPairWhiteList.cpp

wingchun/td/CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.i"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/wingchun/base/CoinPairWhiteList.cpp > CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.i

wingchun/td/CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.s"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/wingchun/base/CoinPairWhiteList.cpp -o CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.s

wingchun/td/CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.o.requires:

.PHONY : wingchun/td/CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.o.requires

wingchun/td/CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.o.provides: wingchun/td/CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.o.requires
	$(MAKE) -f wingchun/td/CMakeFiles/binanceftd.dir/build.make wingchun/td/CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.o.provides.build
.PHONY : wingchun/td/CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.o.provides

wingchun/td/CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.o.provides.build: wingchun/td/CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.o


wingchun/td/CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.o: wingchun/td/CMakeFiles/binanceftd.dir/flags.make
wingchun/td/CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.o: ../wingchun/base/InterfaceMgr.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object wingchun/td/CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.o"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.o -c /shared/liandao/wingchun/base/InterfaceMgr.cpp

wingchun/td/CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.i"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/wingchun/base/InterfaceMgr.cpp > CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.i

wingchun/td/CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.s"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/wingchun/base/InterfaceMgr.cpp -o CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.s

wingchun/td/CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.o.requires:

.PHONY : wingchun/td/CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.o.requires

wingchun/td/CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.o.provides: wingchun/td/CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.o.requires
	$(MAKE) -f wingchun/td/CMakeFiles/binanceftd.dir/build.make wingchun/td/CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.o.provides.build
.PHONY : wingchun/td/CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.o.provides

wingchun/td/CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.o.provides.build: wingchun/td/CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.o


# Object files for target binanceftd
binanceftd_OBJECTS = \
"CMakeFiles/binanceftd.dir/ITDEngine.cpp.o" \
"CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.o" \
"CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.o" \
"CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.o" \
"CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.o" \
"CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.o"

# External object files for target binanceftd
binanceftd_EXTERNAL_OBJECTS =

wingchun/td/libbinanceftd.so: wingchun/td/CMakeFiles/binanceftd.dir/ITDEngine.cpp.o
wingchun/td/libbinanceftd.so: wingchun/td/CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.o
wingchun/td/libbinanceftd.so: wingchun/td/CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.o
wingchun/td/libbinanceftd.so: wingchun/td/CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.o
wingchun/td/libbinanceftd.so: wingchun/td/CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.o
wingchun/td/libbinanceftd.so: wingchun/td/CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.o
wingchun/td/libbinanceftd.so: wingchun/td/CMakeFiles/binanceftd.dir/build.make
wingchun/td/libbinanceftd.so: yijinjing/journal/libjournal.so.1.1
wingchun/td/libbinanceftd.so: monitor/monitor_api/libmonitorapi.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_locale.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_date_time.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_filesystem.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_system.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_thread.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_serialization.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_math_tr1.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_python.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_chrono.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_regex.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_program_options.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_iostreams.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_atomic.so
wingchun/td/libbinanceftd.so: ../utils/cpr/lib/libcpr.so
wingchun/td/libbinanceftd.so: ../utils/cpr/lib/libcurl.so
wingchun/td/libbinanceftd.so: ../utils/cpr/lib/libcrypto.so
wingchun/td/libbinanceftd.so: ../utils/cpr/lib/libssl.so
wingchun/td/libbinanceftd.so: yijinjing/log/libkflog.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_locale.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_date_time.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_filesystem.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_system.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_thread.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_serialization.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_math_tr1.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_python.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_chrono.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_regex.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_program_options.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_iostreams.so
wingchun/td/libbinanceftd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_atomic.so
wingchun/td/libbinanceftd.so: ../utils/poco/lib/libPocoFoundation.a
wingchun/td/libbinanceftd.so: ../utils/libwebsockets/lib/libwebsockets.so
wingchun/td/libbinanceftd.so: wingchun/td/CMakeFiles/binanceftd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX shared library libbinanceftd.so"
	cd /shared/liandao/build/wingchun/td && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/binanceftd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
wingchun/td/CMakeFiles/binanceftd.dir/build: wingchun/td/libbinanceftd.so

.PHONY : wingchun/td/CMakeFiles/binanceftd.dir/build

wingchun/td/CMakeFiles/binanceftd.dir/requires: wingchun/td/CMakeFiles/binanceftd.dir/ITDEngine.cpp.o.requires
wingchun/td/CMakeFiles/binanceftd.dir/requires: wingchun/td/CMakeFiles/binanceftd.dir/__/base/IEngine.cpp.o.requires
wingchun/td/CMakeFiles/binanceftd.dir/requires: wingchun/td/CMakeFiles/binanceftd.dir/__/base/TDUserStruct.cpp.o.requires
wingchun/td/CMakeFiles/binanceftd.dir/requires: wingchun/td/CMakeFiles/binanceftd.dir/TDEngineBinanceF.cpp.o.requires
wingchun/td/CMakeFiles/binanceftd.dir/requires: wingchun/td/CMakeFiles/binanceftd.dir/__/base/CoinPairWhiteList.cpp.o.requires
wingchun/td/CMakeFiles/binanceftd.dir/requires: wingchun/td/CMakeFiles/binanceftd.dir/__/base/InterfaceMgr.cpp.o.requires

.PHONY : wingchun/td/CMakeFiles/binanceftd.dir/requires

wingchun/td/CMakeFiles/binanceftd.dir/clean:
	cd /shared/liandao/build/wingchun/td && $(CMAKE_COMMAND) -P CMakeFiles/binanceftd.dir/cmake_clean.cmake
.PHONY : wingchun/td/CMakeFiles/binanceftd.dir/clean

wingchun/td/CMakeFiles/binanceftd.dir/depend:
	cd /shared/liandao/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /shared/liandao /shared/liandao/wingchun/td /shared/liandao/build /shared/liandao/build/wingchun/td /shared/liandao/build/wingchun/td/CMakeFiles/binanceftd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : wingchun/td/CMakeFiles/binanceftd.dir/depend

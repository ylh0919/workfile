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
include wingchun/td/CMakeFiles/coinflextd.dir/depend.make

# Include the progress variables for this target.
include wingchun/td/CMakeFiles/coinflextd.dir/progress.make

# Include the compile flags for this target's objects.
include wingchun/td/CMakeFiles/coinflextd.dir/flags.make

wingchun/td/CMakeFiles/coinflextd.dir/ITDEngine.cpp.o: wingchun/td/CMakeFiles/coinflextd.dir/flags.make
wingchun/td/CMakeFiles/coinflextd.dir/ITDEngine.cpp.o: ../wingchun/td/ITDEngine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object wingchun/td/CMakeFiles/coinflextd.dir/ITDEngine.cpp.o"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/coinflextd.dir/ITDEngine.cpp.o -c /shared/liandao/wingchun/td/ITDEngine.cpp

wingchun/td/CMakeFiles/coinflextd.dir/ITDEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/coinflextd.dir/ITDEngine.cpp.i"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/wingchun/td/ITDEngine.cpp > CMakeFiles/coinflextd.dir/ITDEngine.cpp.i

wingchun/td/CMakeFiles/coinflextd.dir/ITDEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/coinflextd.dir/ITDEngine.cpp.s"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/wingchun/td/ITDEngine.cpp -o CMakeFiles/coinflextd.dir/ITDEngine.cpp.s

wingchun/td/CMakeFiles/coinflextd.dir/ITDEngine.cpp.o.requires:

.PHONY : wingchun/td/CMakeFiles/coinflextd.dir/ITDEngine.cpp.o.requires

wingchun/td/CMakeFiles/coinflextd.dir/ITDEngine.cpp.o.provides: wingchun/td/CMakeFiles/coinflextd.dir/ITDEngine.cpp.o.requires
	$(MAKE) -f wingchun/td/CMakeFiles/coinflextd.dir/build.make wingchun/td/CMakeFiles/coinflextd.dir/ITDEngine.cpp.o.provides.build
.PHONY : wingchun/td/CMakeFiles/coinflextd.dir/ITDEngine.cpp.o.provides

wingchun/td/CMakeFiles/coinflextd.dir/ITDEngine.cpp.o.provides.build: wingchun/td/CMakeFiles/coinflextd.dir/ITDEngine.cpp.o


wingchun/td/CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.o: wingchun/td/CMakeFiles/coinflextd.dir/flags.make
wingchun/td/CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.o: ../wingchun/base/IEngine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object wingchun/td/CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.o"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.o -c /shared/liandao/wingchun/base/IEngine.cpp

wingchun/td/CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.i"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/wingchun/base/IEngine.cpp > CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.i

wingchun/td/CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.s"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/wingchun/base/IEngine.cpp -o CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.s

wingchun/td/CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.o.requires:

.PHONY : wingchun/td/CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.o.requires

wingchun/td/CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.o.provides: wingchun/td/CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.o.requires
	$(MAKE) -f wingchun/td/CMakeFiles/coinflextd.dir/build.make wingchun/td/CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.o.provides.build
.PHONY : wingchun/td/CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.o.provides

wingchun/td/CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.o.provides.build: wingchun/td/CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.o


wingchun/td/CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.o: wingchun/td/CMakeFiles/coinflextd.dir/flags.make
wingchun/td/CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.o: ../wingchun/base/TDUserStruct.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object wingchun/td/CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.o"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.o -c /shared/liandao/wingchun/base/TDUserStruct.cpp

wingchun/td/CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.i"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/wingchun/base/TDUserStruct.cpp > CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.i

wingchun/td/CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.s"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/wingchun/base/TDUserStruct.cpp -o CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.s

wingchun/td/CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.o.requires:

.PHONY : wingchun/td/CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.o.requires

wingchun/td/CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.o.provides: wingchun/td/CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.o.requires
	$(MAKE) -f wingchun/td/CMakeFiles/coinflextd.dir/build.make wingchun/td/CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.o.provides.build
.PHONY : wingchun/td/CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.o.provides

wingchun/td/CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.o.provides.build: wingchun/td/CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.o


wingchun/td/CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.o: wingchun/td/CMakeFiles/coinflextd.dir/flags.make
wingchun/td/CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.o: ../wingchun/td/TDEngineCoinflex.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object wingchun/td/CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.o"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.o -c /shared/liandao/wingchun/td/TDEngineCoinflex.cpp

wingchun/td/CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.i"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/wingchun/td/TDEngineCoinflex.cpp > CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.i

wingchun/td/CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.s"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/wingchun/td/TDEngineCoinflex.cpp -o CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.s

wingchun/td/CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.o.requires:

.PHONY : wingchun/td/CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.o.requires

wingchun/td/CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.o.provides: wingchun/td/CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.o.requires
	$(MAKE) -f wingchun/td/CMakeFiles/coinflextd.dir/build.make wingchun/td/CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.o.provides.build
.PHONY : wingchun/td/CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.o.provides

wingchun/td/CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.o.provides.build: wingchun/td/CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.o


wingchun/td/CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.o: wingchun/td/CMakeFiles/coinflextd.dir/flags.make
wingchun/td/CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.o: ../wingchun/base/CoinPairWhiteList.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object wingchun/td/CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.o"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.o -c /shared/liandao/wingchun/base/CoinPairWhiteList.cpp

wingchun/td/CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.i"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/wingchun/base/CoinPairWhiteList.cpp > CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.i

wingchun/td/CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.s"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/wingchun/base/CoinPairWhiteList.cpp -o CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.s

wingchun/td/CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.o.requires:

.PHONY : wingchun/td/CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.o.requires

wingchun/td/CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.o.provides: wingchun/td/CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.o.requires
	$(MAKE) -f wingchun/td/CMakeFiles/coinflextd.dir/build.make wingchun/td/CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.o.provides.build
.PHONY : wingchun/td/CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.o.provides

wingchun/td/CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.o.provides.build: wingchun/td/CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.o


wingchun/td/CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.o: wingchun/td/CMakeFiles/coinflextd.dir/flags.make
wingchun/td/CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.o: ../utils/libecp/include/libecp/ecp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object wingchun/td/CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.o"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.o -c /shared/liandao/utils/libecp/include/libecp/ecp.cpp

wingchun/td/CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.i"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/utils/libecp/include/libecp/ecp.cpp > CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.i

wingchun/td/CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.s"
	cd /shared/liandao/build/wingchun/td && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/utils/libecp/include/libecp/ecp.cpp -o CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.s

wingchun/td/CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.o.requires:

.PHONY : wingchun/td/CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.o.requires

wingchun/td/CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.o.provides: wingchun/td/CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.o.requires
	$(MAKE) -f wingchun/td/CMakeFiles/coinflextd.dir/build.make wingchun/td/CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.o.provides.build
.PHONY : wingchun/td/CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.o.provides

wingchun/td/CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.o.provides.build: wingchun/td/CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.o


# Object files for target coinflextd
coinflextd_OBJECTS = \
"CMakeFiles/coinflextd.dir/ITDEngine.cpp.o" \
"CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.o" \
"CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.o" \
"CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.o" \
"CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.o" \
"CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.o"

# External object files for target coinflextd
coinflextd_EXTERNAL_OBJECTS =

wingchun/td/libcoinflextd.so: wingchun/td/CMakeFiles/coinflextd.dir/ITDEngine.cpp.o
wingchun/td/libcoinflextd.so: wingchun/td/CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.o
wingchun/td/libcoinflextd.so: wingchun/td/CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.o
wingchun/td/libcoinflextd.so: wingchun/td/CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.o
wingchun/td/libcoinflextd.so: wingchun/td/CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.o
wingchun/td/libcoinflextd.so: wingchun/td/CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.o
wingchun/td/libcoinflextd.so: wingchun/td/CMakeFiles/coinflextd.dir/build.make
wingchun/td/libcoinflextd.so: yijinjing/journal/libjournal.so.1.1
wingchun/td/libcoinflextd.so: monitor/monitor_api/libmonitorapi.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_locale.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_date_time.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_filesystem.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_system.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_thread.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_serialization.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_math_tr1.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_python.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_chrono.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_regex.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_program_options.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_iostreams.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_atomic.so
wingchun/td/libcoinflextd.so: ../utils/cpr/lib/libcpr.so
wingchun/td/libcoinflextd.so: ../utils/cpr/lib/libcurl.so
wingchun/td/libcoinflextd.so: ../utils/cpr/lib/libcrypto.so
wingchun/td/libcoinflextd.so: ../utils/cpr/lib/libssl.so
wingchun/td/libcoinflextd.so: ../utils/libwebsockets/lib/libwebsockets.so
wingchun/td/libcoinflextd.so: yijinjing/log/libkflog.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_locale.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_date_time.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_filesystem.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_system.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_thread.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_serialization.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_math_tr1.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_python.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_chrono.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_regex.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_program_options.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_iostreams.so
wingchun/td/libcoinflextd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_atomic.so
wingchun/td/libcoinflextd.so: ../utils/poco/lib/libPocoFoundation.a
wingchun/td/libcoinflextd.so: ../utils/libwebsockets/lib/libwebsockets.so
wingchun/td/libcoinflextd.so: wingchun/td/CMakeFiles/coinflextd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX shared library libcoinflextd.so"
	cd /shared/liandao/build/wingchun/td && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/coinflextd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
wingchun/td/CMakeFiles/coinflextd.dir/build: wingchun/td/libcoinflextd.so

.PHONY : wingchun/td/CMakeFiles/coinflextd.dir/build

wingchun/td/CMakeFiles/coinflextd.dir/requires: wingchun/td/CMakeFiles/coinflextd.dir/ITDEngine.cpp.o.requires
wingchun/td/CMakeFiles/coinflextd.dir/requires: wingchun/td/CMakeFiles/coinflextd.dir/__/base/IEngine.cpp.o.requires
wingchun/td/CMakeFiles/coinflextd.dir/requires: wingchun/td/CMakeFiles/coinflextd.dir/__/base/TDUserStruct.cpp.o.requires
wingchun/td/CMakeFiles/coinflextd.dir/requires: wingchun/td/CMakeFiles/coinflextd.dir/TDEngineCoinflex.cpp.o.requires
wingchun/td/CMakeFiles/coinflextd.dir/requires: wingchun/td/CMakeFiles/coinflextd.dir/__/base/CoinPairWhiteList.cpp.o.requires
wingchun/td/CMakeFiles/coinflextd.dir/requires: wingchun/td/CMakeFiles/coinflextd.dir/__/__/utils/libecp/include/libecp/ecp.cpp.o.requires

.PHONY : wingchun/td/CMakeFiles/coinflextd.dir/requires

wingchun/td/CMakeFiles/coinflextd.dir/clean:
	cd /shared/liandao/build/wingchun/td && $(CMAKE_COMMAND) -P CMakeFiles/coinflextd.dir/cmake_clean.cmake
.PHONY : wingchun/td/CMakeFiles/coinflextd.dir/clean

wingchun/td/CMakeFiles/coinflextd.dir/depend:
	cd /shared/liandao/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /shared/liandao /shared/liandao/wingchun/td /shared/liandao/build /shared/liandao/build/wingchun/td /shared/liandao/build/wingchun/td/CMakeFiles/coinflextd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : wingchun/td/CMakeFiles/coinflextd.dir/depend


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
include wingchun/md/CMakeFiles/deribitmd.dir/depend.make

# Include the progress variables for this target.
include wingchun/md/CMakeFiles/deribitmd.dir/progress.make

# Include the compile flags for this target's objects.
include wingchun/md/CMakeFiles/deribitmd.dir/flags.make

wingchun/md/CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.o: wingchun/md/CMakeFiles/deribitmd.dir/flags.make
wingchun/md/CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.o: ../wingchun/md/MDEngineDeribit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object wingchun/md/CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.o"
	cd /shared/liandao/build/wingchun/md && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.o -c /shared/liandao/wingchun/md/MDEngineDeribit.cpp

wingchun/md/CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.i"
	cd /shared/liandao/build/wingchun/md && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/wingchun/md/MDEngineDeribit.cpp > CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.i

wingchun/md/CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.s"
	cd /shared/liandao/build/wingchun/md && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/wingchun/md/MDEngineDeribit.cpp -o CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.s

wingchun/md/CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.o.requires:

.PHONY : wingchun/md/CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.o.requires

wingchun/md/CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.o.provides: wingchun/md/CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.o.requires
	$(MAKE) -f wingchun/md/CMakeFiles/deribitmd.dir/build.make wingchun/md/CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.o.provides.build
.PHONY : wingchun/md/CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.o.provides

wingchun/md/CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.o.provides.build: wingchun/md/CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.o


wingchun/md/CMakeFiles/deribitmd.dir/IMDEngine.cpp.o: wingchun/md/CMakeFiles/deribitmd.dir/flags.make
wingchun/md/CMakeFiles/deribitmd.dir/IMDEngine.cpp.o: ../wingchun/md/IMDEngine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object wingchun/md/CMakeFiles/deribitmd.dir/IMDEngine.cpp.o"
	cd /shared/liandao/build/wingchun/md && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/deribitmd.dir/IMDEngine.cpp.o -c /shared/liandao/wingchun/md/IMDEngine.cpp

wingchun/md/CMakeFiles/deribitmd.dir/IMDEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/deribitmd.dir/IMDEngine.cpp.i"
	cd /shared/liandao/build/wingchun/md && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/wingchun/md/IMDEngine.cpp > CMakeFiles/deribitmd.dir/IMDEngine.cpp.i

wingchun/md/CMakeFiles/deribitmd.dir/IMDEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/deribitmd.dir/IMDEngine.cpp.s"
	cd /shared/liandao/build/wingchun/md && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/wingchun/md/IMDEngine.cpp -o CMakeFiles/deribitmd.dir/IMDEngine.cpp.s

wingchun/md/CMakeFiles/deribitmd.dir/IMDEngine.cpp.o.requires:

.PHONY : wingchun/md/CMakeFiles/deribitmd.dir/IMDEngine.cpp.o.requires

wingchun/md/CMakeFiles/deribitmd.dir/IMDEngine.cpp.o.provides: wingchun/md/CMakeFiles/deribitmd.dir/IMDEngine.cpp.o.requires
	$(MAKE) -f wingchun/md/CMakeFiles/deribitmd.dir/build.make wingchun/md/CMakeFiles/deribitmd.dir/IMDEngine.cpp.o.provides.build
.PHONY : wingchun/md/CMakeFiles/deribitmd.dir/IMDEngine.cpp.o.provides

wingchun/md/CMakeFiles/deribitmd.dir/IMDEngine.cpp.o.provides.build: wingchun/md/CMakeFiles/deribitmd.dir/IMDEngine.cpp.o


wingchun/md/CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.o: wingchun/md/CMakeFiles/deribitmd.dir/flags.make
wingchun/md/CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.o: ../wingchun/base/IEngine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object wingchun/md/CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.o"
	cd /shared/liandao/build/wingchun/md && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.o -c /shared/liandao/wingchun/base/IEngine.cpp

wingchun/md/CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.i"
	cd /shared/liandao/build/wingchun/md && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/wingchun/base/IEngine.cpp > CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.i

wingchun/md/CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.s"
	cd /shared/liandao/build/wingchun/md && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/wingchun/base/IEngine.cpp -o CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.s

wingchun/md/CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.o.requires:

.PHONY : wingchun/md/CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.o.requires

wingchun/md/CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.o.provides: wingchun/md/CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.o.requires
	$(MAKE) -f wingchun/md/CMakeFiles/deribitmd.dir/build.make wingchun/md/CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.o.provides.build
.PHONY : wingchun/md/CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.o.provides

wingchun/md/CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.o.provides.build: wingchun/md/CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.o


wingchun/md/CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.o: wingchun/md/CMakeFiles/deribitmd.dir/flags.make
wingchun/md/CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.o: ../wingchun/base/CoinPairWhiteList.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object wingchun/md/CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.o"
	cd /shared/liandao/build/wingchun/md && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.o -c /shared/liandao/wingchun/base/CoinPairWhiteList.cpp

wingchun/md/CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.i"
	cd /shared/liandao/build/wingchun/md && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/wingchun/base/CoinPairWhiteList.cpp > CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.i

wingchun/md/CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.s"
	cd /shared/liandao/build/wingchun/md && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/wingchun/base/CoinPairWhiteList.cpp -o CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.s

wingchun/md/CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.o.requires:

.PHONY : wingchun/md/CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.o.requires

wingchun/md/CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.o.provides: wingchun/md/CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.o.requires
	$(MAKE) -f wingchun/md/CMakeFiles/deribitmd.dir/build.make wingchun/md/CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.o.provides.build
.PHONY : wingchun/md/CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.o.provides

wingchun/md/CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.o.provides.build: wingchun/md/CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.o


wingchun/md/CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.o: wingchun/md/CMakeFiles/deribitmd.dir/flags.make
wingchun/md/CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.o: ../wingchun/md/PriceBook20Assembler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object wingchun/md/CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.o"
	cd /shared/liandao/build/wingchun/md && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.o -c /shared/liandao/wingchun/md/PriceBook20Assembler.cpp

wingchun/md/CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.i"
	cd /shared/liandao/build/wingchun/md && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/wingchun/md/PriceBook20Assembler.cpp > CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.i

wingchun/md/CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.s"
	cd /shared/liandao/build/wingchun/md && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/wingchun/md/PriceBook20Assembler.cpp -o CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.s

wingchun/md/CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.o.requires:

.PHONY : wingchun/md/CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.o.requires

wingchun/md/CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.o.provides: wingchun/md/CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.o.requires
	$(MAKE) -f wingchun/md/CMakeFiles/deribitmd.dir/build.make wingchun/md/CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.o.provides.build
.PHONY : wingchun/md/CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.o.provides

wingchun/md/CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.o.provides.build: wingchun/md/CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.o


wingchun/md/CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.o: wingchun/md/CMakeFiles/deribitmd.dir/flags.make
wingchun/md/CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.o: ../utils/common/Utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object wingchun/md/CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.o"
	cd /shared/liandao/build/wingchun/md && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.o -c /shared/liandao/utils/common/Utils.cpp

wingchun/md/CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.i"
	cd /shared/liandao/build/wingchun/md && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/utils/common/Utils.cpp > CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.i

wingchun/md/CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.s"
	cd /shared/liandao/build/wingchun/md && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/utils/common/Utils.cpp -o CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.s

wingchun/md/CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.o.requires:

.PHONY : wingchun/md/CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.o.requires

wingchun/md/CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.o.provides: wingchun/md/CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.o.requires
	$(MAKE) -f wingchun/md/CMakeFiles/deribitmd.dir/build.make wingchun/md/CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.o.provides.build
.PHONY : wingchun/md/CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.o.provides

wingchun/md/CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.o.provides.build: wingchun/md/CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.o


# Object files for target deribitmd
deribitmd_OBJECTS = \
"CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.o" \
"CMakeFiles/deribitmd.dir/IMDEngine.cpp.o" \
"CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.o" \
"CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.o" \
"CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.o" \
"CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.o"

# External object files for target deribitmd
deribitmd_EXTERNAL_OBJECTS =

wingchun/md/libderibitmd.so: wingchun/md/CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.o
wingchun/md/libderibitmd.so: wingchun/md/CMakeFiles/deribitmd.dir/IMDEngine.cpp.o
wingchun/md/libderibitmd.so: wingchun/md/CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.o
wingchun/md/libderibitmd.so: wingchun/md/CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.o
wingchun/md/libderibitmd.so: wingchun/md/CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.o
wingchun/md/libderibitmd.so: wingchun/md/CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.o
wingchun/md/libderibitmd.so: wingchun/md/CMakeFiles/deribitmd.dir/build.make
wingchun/md/libderibitmd.so: yijinjing/journal/libjournal.so.1.1
wingchun/md/libderibitmd.so: monitor/monitor_api/libmonitorapi.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_locale.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_date_time.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_filesystem.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_system.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_thread.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_serialization.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_math_tr1.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_python.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_chrono.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_regex.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_program_options.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_iostreams.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_atomic.so
wingchun/md/libderibitmd.so: ../utils/cpr/lib/libcpr.so
wingchun/md/libderibitmd.so: ../utils/cpr/lib/libcurl.so
wingchun/md/libderibitmd.so: ../utils/cpr/lib/libcrypto.so
wingchun/md/libderibitmd.so: ../utils/cpr/lib/libssl.so
wingchun/md/libderibitmd.so: ../utils/libwebsockets/lib/libwebsockets.so
wingchun/md/libderibitmd.so: ../utils/zlib/lib/libz.so.1.2.11
wingchun/md/libderibitmd.so: yijinjing/log/libkflog.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_locale.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_date_time.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_filesystem.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_system.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_thread.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_serialization.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_math_tr1.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_python.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_chrono.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_regex.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_program_options.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_iostreams.so
wingchun/md/libderibitmd.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_atomic.so
wingchun/md/libderibitmd.so: ../utils/poco/lib/libPocoFoundation.a
wingchun/md/libderibitmd.so: ../utils/libwebsockets/lib/libwebsockets.so
wingchun/md/libderibitmd.so: wingchun/md/CMakeFiles/deribitmd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX shared library libderibitmd.so"
	cd /shared/liandao/build/wingchun/md && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/deribitmd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
wingchun/md/CMakeFiles/deribitmd.dir/build: wingchun/md/libderibitmd.so

.PHONY : wingchun/md/CMakeFiles/deribitmd.dir/build

wingchun/md/CMakeFiles/deribitmd.dir/requires: wingchun/md/CMakeFiles/deribitmd.dir/MDEngineDeribit.cpp.o.requires
wingchun/md/CMakeFiles/deribitmd.dir/requires: wingchun/md/CMakeFiles/deribitmd.dir/IMDEngine.cpp.o.requires
wingchun/md/CMakeFiles/deribitmd.dir/requires: wingchun/md/CMakeFiles/deribitmd.dir/__/base/IEngine.cpp.o.requires
wingchun/md/CMakeFiles/deribitmd.dir/requires: wingchun/md/CMakeFiles/deribitmd.dir/__/base/CoinPairWhiteList.cpp.o.requires
wingchun/md/CMakeFiles/deribitmd.dir/requires: wingchun/md/CMakeFiles/deribitmd.dir/PriceBook20Assembler.cpp.o.requires
wingchun/md/CMakeFiles/deribitmd.dir/requires: wingchun/md/CMakeFiles/deribitmd.dir/__/__/utils/common/Utils.cpp.o.requires

.PHONY : wingchun/md/CMakeFiles/deribitmd.dir/requires

wingchun/md/CMakeFiles/deribitmd.dir/clean:
	cd /shared/liandao/build/wingchun/md && $(CMAKE_COMMAND) -P CMakeFiles/deribitmd.dir/cmake_clean.cmake
.PHONY : wingchun/md/CMakeFiles/deribitmd.dir/clean

wingchun/md/CMakeFiles/deribitmd.dir/depend:
	cd /shared/liandao/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /shared/liandao /shared/liandao/wingchun/md /shared/liandao/build /shared/liandao/build/wingchun/md /shared/liandao/build/wingchun/md/CMakeFiles/deribitmd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : wingchun/md/CMakeFiles/deribitmd.dir/depend


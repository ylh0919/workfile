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
include monitor/monitor_server/CMakeFiles/monitorserver.dir/depend.make

# Include the progress variables for this target.
include monitor/monitor_server/CMakeFiles/monitorserver.dir/progress.make

# Include the compile flags for this target's objects.
include monitor/monitor_server/CMakeFiles/monitorserver.dir/flags.make

monitor/monitor_server/CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.o: monitor/monitor_server/CMakeFiles/monitorserver.dir/flags.make
monitor/monitor_server/CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.o: ../monitor/monitor_server/MonitorWrapper.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object monitor/monitor_server/CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.o"
	cd /shared/liandao/build/monitor/monitor_server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.o -c /shared/liandao/monitor/monitor_server/MonitorWrapper.cpp

monitor/monitor_server/CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.i"
	cd /shared/liandao/build/monitor/monitor_server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/monitor/monitor_server/MonitorWrapper.cpp > CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.i

monitor/monitor_server/CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.s"
	cd /shared/liandao/build/monitor/monitor_server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/monitor/monitor_server/MonitorWrapper.cpp -o CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.s

monitor/monitor_server/CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.o.requires:

.PHONY : monitor/monitor_server/CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.o.requires

monitor/monitor_server/CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.o.provides: monitor/monitor_server/CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.o.requires
	$(MAKE) -f monitor/monitor_server/CMakeFiles/monitorserver.dir/build.make monitor/monitor_server/CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.o.provides.build
.PHONY : monitor/monitor_server/CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.o.provides

monitor/monitor_server/CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.o.provides.build: monitor/monitor_server/CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.o


monitor/monitor_server/CMakeFiles/monitorserver.dir/Monitor.cpp.o: monitor/monitor_server/CMakeFiles/monitorserver.dir/flags.make
monitor/monitor_server/CMakeFiles/monitorserver.dir/Monitor.cpp.o: ../monitor/monitor_server/Monitor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object monitor/monitor_server/CMakeFiles/monitorserver.dir/Monitor.cpp.o"
	cd /shared/liandao/build/monitor/monitor_server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/monitorserver.dir/Monitor.cpp.o -c /shared/liandao/monitor/monitor_server/Monitor.cpp

monitor/monitor_server/CMakeFiles/monitorserver.dir/Monitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/monitorserver.dir/Monitor.cpp.i"
	cd /shared/liandao/build/monitor/monitor_server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/monitor/monitor_server/Monitor.cpp > CMakeFiles/monitorserver.dir/Monitor.cpp.i

monitor/monitor_server/CMakeFiles/monitorserver.dir/Monitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/monitorserver.dir/Monitor.cpp.s"
	cd /shared/liandao/build/monitor/monitor_server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/monitor/monitor_server/Monitor.cpp -o CMakeFiles/monitorserver.dir/Monitor.cpp.s

monitor/monitor_server/CMakeFiles/monitorserver.dir/Monitor.cpp.o.requires:

.PHONY : monitor/monitor_server/CMakeFiles/monitorserver.dir/Monitor.cpp.o.requires

monitor/monitor_server/CMakeFiles/monitorserver.dir/Monitor.cpp.o.provides: monitor/monitor_server/CMakeFiles/monitorserver.dir/Monitor.cpp.o.requires
	$(MAKE) -f monitor/monitor_server/CMakeFiles/monitorserver.dir/build.make monitor/monitor_server/CMakeFiles/monitorserver.dir/Monitor.cpp.o.provides.build
.PHONY : monitor/monitor_server/CMakeFiles/monitorserver.dir/Monitor.cpp.o.provides

monitor/monitor_server/CMakeFiles/monitorserver.dir/Monitor.cpp.o.provides.build: monitor/monitor_server/CMakeFiles/monitorserver.dir/Monitor.cpp.o


# Object files for target monitorserver
monitorserver_OBJECTS = \
"CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.o" \
"CMakeFiles/monitorserver.dir/Monitor.cpp.o"

# External object files for target monitorserver
monitorserver_EXTERNAL_OBJECTS =

monitor/monitor_server/libmonitorserver.so: monitor/monitor_server/CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.o
monitor/monitor_server/libmonitorserver.so: monitor/monitor_server/CMakeFiles/monitorserver.dir/Monitor.cpp.o
monitor/monitor_server/libmonitorserver.so: monitor/monitor_server/CMakeFiles/monitorserver.dir/build.make
monitor/monitor_server/libmonitorserver.so: yijinjing/log/libkflog.so
monitor/monitor_server/libmonitorserver.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_locale.so
monitor/monitor_server/libmonitorserver.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_date_time.so
monitor/monitor_server/libmonitorserver.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_filesystem.so
monitor/monitor_server/libmonitorserver.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_system.so
monitor/monitor_server/libmonitorserver.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_thread.so
monitor/monitor_server/libmonitorserver.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_serialization.so
monitor/monitor_server/libmonitorserver.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_math_tr1.so
monitor/monitor_server/libmonitorserver.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_python.so
monitor/monitor_server/libmonitorserver.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_chrono.so
monitor/monitor_server/libmonitorserver.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_regex.so
monitor/monitor_server/libmonitorserver.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_program_options.so
monitor/monitor_server/libmonitorserver.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_iostreams.so
monitor/monitor_server/libmonitorserver.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_atomic.so
monitor/monitor_server/libmonitorserver.so: ../utils/cpr/lib/libssl.so.10
monitor/monitor_server/libmonitorserver.so: ../utils/uwebsockets/lib/libuWS.so
monitor/monitor_server/libmonitorserver.so: ../utils/zlib/lib/libz.so.1.2.11
monitor/monitor_server/libmonitorserver.so: monitor/monitor_server/CMakeFiles/monitorserver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libmonitorserver.so"
	cd /shared/liandao/build/monitor/monitor_server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/monitorserver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
monitor/monitor_server/CMakeFiles/monitorserver.dir/build: monitor/monitor_server/libmonitorserver.so

.PHONY : monitor/monitor_server/CMakeFiles/monitorserver.dir/build

monitor/monitor_server/CMakeFiles/monitorserver.dir/requires: monitor/monitor_server/CMakeFiles/monitorserver.dir/MonitorWrapper.cpp.o.requires
monitor/monitor_server/CMakeFiles/monitorserver.dir/requires: monitor/monitor_server/CMakeFiles/monitorserver.dir/Monitor.cpp.o.requires

.PHONY : monitor/monitor_server/CMakeFiles/monitorserver.dir/requires

monitor/monitor_server/CMakeFiles/monitorserver.dir/clean:
	cd /shared/liandao/build/monitor/monitor_server && $(CMAKE_COMMAND) -P CMakeFiles/monitorserver.dir/cmake_clean.cmake
.PHONY : monitor/monitor_server/CMakeFiles/monitorserver.dir/clean

monitor/monitor_server/CMakeFiles/monitorserver.dir/depend:
	cd /shared/liandao/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /shared/liandao /shared/liandao/monitor/monitor_server /shared/liandao/build /shared/liandao/build/monitor/monitor_server /shared/liandao/build/monitor/monitor_server/CMakeFiles/monitorserver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : monitor/monitor_server/CMakeFiles/monitorserver.dir/depend

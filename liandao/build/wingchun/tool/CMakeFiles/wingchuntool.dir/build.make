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
include wingchun/tool/CMakeFiles/wingchuntool.dir/depend.make

# Include the progress variables for this target.
include wingchun/tool/CMakeFiles/wingchuntool.dir/progress.make

# Include the compile flags for this target's objects.
include wingchun/tool/CMakeFiles/wingchuntool.dir/flags.make

wingchun/tool/CMakeFiles/wingchuntool.dir/DataConsumer.cpp.o: wingchun/tool/CMakeFiles/wingchuntool.dir/flags.make
wingchun/tool/CMakeFiles/wingchuntool.dir/DataConsumer.cpp.o: ../wingchun/tool/DataConsumer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object wingchun/tool/CMakeFiles/wingchuntool.dir/DataConsumer.cpp.o"
	cd /shared/liandao/build/wingchun/tool && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wingchuntool.dir/DataConsumer.cpp.o -c /shared/liandao/wingchun/tool/DataConsumer.cpp

wingchun/tool/CMakeFiles/wingchuntool.dir/DataConsumer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wingchuntool.dir/DataConsumer.cpp.i"
	cd /shared/liandao/build/wingchun/tool && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/wingchun/tool/DataConsumer.cpp > CMakeFiles/wingchuntool.dir/DataConsumer.cpp.i

wingchun/tool/CMakeFiles/wingchuntool.dir/DataConsumer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wingchuntool.dir/DataConsumer.cpp.s"
	cd /shared/liandao/build/wingchun/tool && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/wingchun/tool/DataConsumer.cpp -o CMakeFiles/wingchuntool.dir/DataConsumer.cpp.s

wingchun/tool/CMakeFiles/wingchuntool.dir/DataConsumer.cpp.o.requires:

.PHONY : wingchun/tool/CMakeFiles/wingchuntool.dir/DataConsumer.cpp.o.requires

wingchun/tool/CMakeFiles/wingchuntool.dir/DataConsumer.cpp.o.provides: wingchun/tool/CMakeFiles/wingchuntool.dir/DataConsumer.cpp.o.requires
	$(MAKE) -f wingchun/tool/CMakeFiles/wingchuntool.dir/build.make wingchun/tool/CMakeFiles/wingchuntool.dir/DataConsumer.cpp.o.provides.build
.PHONY : wingchun/tool/CMakeFiles/wingchuntool.dir/DataConsumer.cpp.o.provides

wingchun/tool/CMakeFiles/wingchuntool.dir/DataConsumer.cpp.o.provides.build: wingchun/tool/CMakeFiles/wingchuntool.dir/DataConsumer.cpp.o


wingchun/tool/CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.o: wingchun/tool/CMakeFiles/wingchuntool.dir/flags.make
wingchun/tool/CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.o: ../wingchun/tool/StrategyDataConsumer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object wingchun/tool/CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.o"
	cd /shared/liandao/build/wingchun/tool && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.o -c /shared/liandao/wingchun/tool/StrategyDataConsumer.cpp

wingchun/tool/CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.i"
	cd /shared/liandao/build/wingchun/tool && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/wingchun/tool/StrategyDataConsumer.cpp > CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.i

wingchun/tool/CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.s"
	cd /shared/liandao/build/wingchun/tool && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/wingchun/tool/StrategyDataConsumer.cpp -o CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.s

wingchun/tool/CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.o.requires:

.PHONY : wingchun/tool/CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.o.requires

wingchun/tool/CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.o.provides: wingchun/tool/CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.o.requires
	$(MAKE) -f wingchun/tool/CMakeFiles/wingchuntool.dir/build.make wingchun/tool/CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.o.provides.build
.PHONY : wingchun/tool/CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.o.provides

wingchun/tool/CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.o.provides.build: wingchun/tool/CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.o


# Object files for target wingchuntool
wingchuntool_OBJECTS = \
"CMakeFiles/wingchuntool.dir/DataConsumer.cpp.o" \
"CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.o"

# External object files for target wingchuntool
wingchuntool_EXTERNAL_OBJECTS =

wingchun/tool/libwingchuntool.so: wingchun/tool/CMakeFiles/wingchuntool.dir/DataConsumer.cpp.o
wingchun/tool/libwingchuntool.so: wingchun/tool/CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.o
wingchun/tool/libwingchuntool.so: wingchun/tool/CMakeFiles/wingchuntool.dir/build.make
wingchun/tool/libwingchuntool.so: yijinjing/journal/libjournal.so.1.1
wingchun/tool/libwingchuntool.so: yijinjing/log/libkflog.so
wingchun/tool/libwingchuntool.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_locale.so
wingchun/tool/libwingchuntool.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_date_time.so
wingchun/tool/libwingchuntool.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_filesystem.so
wingchun/tool/libwingchuntool.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_system.so
wingchun/tool/libwingchuntool.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_thread.so
wingchun/tool/libwingchuntool.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_serialization.so
wingchun/tool/libwingchuntool.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_math_tr1.so
wingchun/tool/libwingchuntool.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_python.so
wingchun/tool/libwingchuntool.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_chrono.so
wingchun/tool/libwingchuntool.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_regex.so
wingchun/tool/libwingchuntool.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_program_options.so
wingchun/tool/libwingchuntool.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_iostreams.so
wingchun/tool/libwingchuntool.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_atomic.so
wingchun/tool/libwingchuntool.so: wingchun/tool/CMakeFiles/wingchuntool.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libwingchuntool.so"
	cd /shared/liandao/build/wingchun/tool && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wingchuntool.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
wingchun/tool/CMakeFiles/wingchuntool.dir/build: wingchun/tool/libwingchuntool.so

.PHONY : wingchun/tool/CMakeFiles/wingchuntool.dir/build

wingchun/tool/CMakeFiles/wingchuntool.dir/requires: wingchun/tool/CMakeFiles/wingchuntool.dir/DataConsumer.cpp.o.requires
wingchun/tool/CMakeFiles/wingchuntool.dir/requires: wingchun/tool/CMakeFiles/wingchuntool.dir/StrategyDataConsumer.cpp.o.requires

.PHONY : wingchun/tool/CMakeFiles/wingchuntool.dir/requires

wingchun/tool/CMakeFiles/wingchuntool.dir/clean:
	cd /shared/liandao/build/wingchun/tool && $(CMAKE_COMMAND) -P CMakeFiles/wingchuntool.dir/cmake_clean.cmake
.PHONY : wingchun/tool/CMakeFiles/wingchuntool.dir/clean

wingchun/tool/CMakeFiles/wingchuntool.dir/depend:
	cd /shared/liandao/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /shared/liandao /shared/liandao/wingchun/tool /shared/liandao/build /shared/liandao/build/wingchun/tool /shared/liandao/build/wingchun/tool/CMakeFiles/wingchuntool.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : wingchun/tool/CMakeFiles/wingchuntool.dir/depend


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
include yijinjing/paged/CMakeFiles/paged.dir/depend.make

# Include the progress variables for this target.
include yijinjing/paged/CMakeFiles/paged.dir/progress.make

# Include the compile flags for this target's objects.
include yijinjing/paged/CMakeFiles/paged.dir/flags.make

yijinjing/paged/CMakeFiles/paged.dir/PageEngine.cpp.o: yijinjing/paged/CMakeFiles/paged.dir/flags.make
yijinjing/paged/CMakeFiles/paged.dir/PageEngine.cpp.o: ../yijinjing/paged/PageEngine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object yijinjing/paged/CMakeFiles/paged.dir/PageEngine.cpp.o"
	cd /shared/liandao/build/yijinjing/paged && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/paged.dir/PageEngine.cpp.o -c /shared/liandao/yijinjing/paged/PageEngine.cpp

yijinjing/paged/CMakeFiles/paged.dir/PageEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/paged.dir/PageEngine.cpp.i"
	cd /shared/liandao/build/yijinjing/paged && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/yijinjing/paged/PageEngine.cpp > CMakeFiles/paged.dir/PageEngine.cpp.i

yijinjing/paged/CMakeFiles/paged.dir/PageEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/paged.dir/PageEngine.cpp.s"
	cd /shared/liandao/build/yijinjing/paged && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/yijinjing/paged/PageEngine.cpp -o CMakeFiles/paged.dir/PageEngine.cpp.s

yijinjing/paged/CMakeFiles/paged.dir/PageEngine.cpp.o.requires:

.PHONY : yijinjing/paged/CMakeFiles/paged.dir/PageEngine.cpp.o.requires

yijinjing/paged/CMakeFiles/paged.dir/PageEngine.cpp.o.provides: yijinjing/paged/CMakeFiles/paged.dir/PageEngine.cpp.o.requires
	$(MAKE) -f yijinjing/paged/CMakeFiles/paged.dir/build.make yijinjing/paged/CMakeFiles/paged.dir/PageEngine.cpp.o.provides.build
.PHONY : yijinjing/paged/CMakeFiles/paged.dir/PageEngine.cpp.o.provides

yijinjing/paged/CMakeFiles/paged.dir/PageEngine.cpp.o.provides.build: yijinjing/paged/CMakeFiles/paged.dir/PageEngine.cpp.o


yijinjing/paged/CMakeFiles/paged.dir/PageSocketHandler.cpp.o: yijinjing/paged/CMakeFiles/paged.dir/flags.make
yijinjing/paged/CMakeFiles/paged.dir/PageSocketHandler.cpp.o: ../yijinjing/paged/PageSocketHandler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object yijinjing/paged/CMakeFiles/paged.dir/PageSocketHandler.cpp.o"
	cd /shared/liandao/build/yijinjing/paged && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/paged.dir/PageSocketHandler.cpp.o -c /shared/liandao/yijinjing/paged/PageSocketHandler.cpp

yijinjing/paged/CMakeFiles/paged.dir/PageSocketHandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/paged.dir/PageSocketHandler.cpp.i"
	cd /shared/liandao/build/yijinjing/paged && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/yijinjing/paged/PageSocketHandler.cpp > CMakeFiles/paged.dir/PageSocketHandler.cpp.i

yijinjing/paged/CMakeFiles/paged.dir/PageSocketHandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/paged.dir/PageSocketHandler.cpp.s"
	cd /shared/liandao/build/yijinjing/paged && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/yijinjing/paged/PageSocketHandler.cpp -o CMakeFiles/paged.dir/PageSocketHandler.cpp.s

yijinjing/paged/CMakeFiles/paged.dir/PageSocketHandler.cpp.o.requires:

.PHONY : yijinjing/paged/CMakeFiles/paged.dir/PageSocketHandler.cpp.o.requires

yijinjing/paged/CMakeFiles/paged.dir/PageSocketHandler.cpp.o.provides: yijinjing/paged/CMakeFiles/paged.dir/PageSocketHandler.cpp.o.requires
	$(MAKE) -f yijinjing/paged/CMakeFiles/paged.dir/build.make yijinjing/paged/CMakeFiles/paged.dir/PageSocketHandler.cpp.o.provides.build
.PHONY : yijinjing/paged/CMakeFiles/paged.dir/PageSocketHandler.cpp.o.provides

yijinjing/paged/CMakeFiles/paged.dir/PageSocketHandler.cpp.o.provides.build: yijinjing/paged/CMakeFiles/paged.dir/PageSocketHandler.cpp.o


yijinjing/paged/CMakeFiles/paged.dir/PageServiceTask.cpp.o: yijinjing/paged/CMakeFiles/paged.dir/flags.make
yijinjing/paged/CMakeFiles/paged.dir/PageServiceTask.cpp.o: ../yijinjing/paged/PageServiceTask.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object yijinjing/paged/CMakeFiles/paged.dir/PageServiceTask.cpp.o"
	cd /shared/liandao/build/yijinjing/paged && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/paged.dir/PageServiceTask.cpp.o -c /shared/liandao/yijinjing/paged/PageServiceTask.cpp

yijinjing/paged/CMakeFiles/paged.dir/PageServiceTask.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/paged.dir/PageServiceTask.cpp.i"
	cd /shared/liandao/build/yijinjing/paged && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /shared/liandao/yijinjing/paged/PageServiceTask.cpp > CMakeFiles/paged.dir/PageServiceTask.cpp.i

yijinjing/paged/CMakeFiles/paged.dir/PageServiceTask.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/paged.dir/PageServiceTask.cpp.s"
	cd /shared/liandao/build/yijinjing/paged && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /shared/liandao/yijinjing/paged/PageServiceTask.cpp -o CMakeFiles/paged.dir/PageServiceTask.cpp.s

yijinjing/paged/CMakeFiles/paged.dir/PageServiceTask.cpp.o.requires:

.PHONY : yijinjing/paged/CMakeFiles/paged.dir/PageServiceTask.cpp.o.requires

yijinjing/paged/CMakeFiles/paged.dir/PageServiceTask.cpp.o.provides: yijinjing/paged/CMakeFiles/paged.dir/PageServiceTask.cpp.o.requires
	$(MAKE) -f yijinjing/paged/CMakeFiles/paged.dir/build.make yijinjing/paged/CMakeFiles/paged.dir/PageServiceTask.cpp.o.provides.build
.PHONY : yijinjing/paged/CMakeFiles/paged.dir/PageServiceTask.cpp.o.provides

yijinjing/paged/CMakeFiles/paged.dir/PageServiceTask.cpp.o.provides.build: yijinjing/paged/CMakeFiles/paged.dir/PageServiceTask.cpp.o


# Object files for target paged
paged_OBJECTS = \
"CMakeFiles/paged.dir/PageEngine.cpp.o" \
"CMakeFiles/paged.dir/PageSocketHandler.cpp.o" \
"CMakeFiles/paged.dir/PageServiceTask.cpp.o"

# External object files for target paged
paged_EXTERNAL_OBJECTS =

yijinjing/paged/libpaged.so: yijinjing/paged/CMakeFiles/paged.dir/PageEngine.cpp.o
yijinjing/paged/libpaged.so: yijinjing/paged/CMakeFiles/paged.dir/PageSocketHandler.cpp.o
yijinjing/paged/libpaged.so: yijinjing/paged/CMakeFiles/paged.dir/PageServiceTask.cpp.o
yijinjing/paged/libpaged.so: yijinjing/paged/CMakeFiles/paged.dir/build.make
yijinjing/paged/libpaged.so: yijinjing/journal/libjournal.so.1.1
yijinjing/paged/libpaged.so: yijinjing/log/libkflog.so
yijinjing/paged/libpaged.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_locale.so
yijinjing/paged/libpaged.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_date_time.so
yijinjing/paged/libpaged.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_filesystem.so
yijinjing/paged/libpaged.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_system.so
yijinjing/paged/libpaged.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_thread.so
yijinjing/paged/libpaged.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_serialization.so
yijinjing/paged/libpaged.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_math_tr1.so
yijinjing/paged/libpaged.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_python.so
yijinjing/paged/libpaged.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_chrono.so
yijinjing/paged/libpaged.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_regex.so
yijinjing/paged/libpaged.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_program_options.so
yijinjing/paged/libpaged.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_iostreams.so
yijinjing/paged/libpaged.so: /opt/kungfu/toolchain/boost-1.62.0/lib/libboost_atomic.so
yijinjing/paged/libpaged.so: yijinjing/paged/CMakeFiles/paged.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/shared/liandao/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library libpaged.so"
	cd /shared/liandao/build/yijinjing/paged && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/paged.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
yijinjing/paged/CMakeFiles/paged.dir/build: yijinjing/paged/libpaged.so

.PHONY : yijinjing/paged/CMakeFiles/paged.dir/build

yijinjing/paged/CMakeFiles/paged.dir/requires: yijinjing/paged/CMakeFiles/paged.dir/PageEngine.cpp.o.requires
yijinjing/paged/CMakeFiles/paged.dir/requires: yijinjing/paged/CMakeFiles/paged.dir/PageSocketHandler.cpp.o.requires
yijinjing/paged/CMakeFiles/paged.dir/requires: yijinjing/paged/CMakeFiles/paged.dir/PageServiceTask.cpp.o.requires

.PHONY : yijinjing/paged/CMakeFiles/paged.dir/requires

yijinjing/paged/CMakeFiles/paged.dir/clean:
	cd /shared/liandao/build/yijinjing/paged && $(CMAKE_COMMAND) -P CMakeFiles/paged.dir/cmake_clean.cmake
.PHONY : yijinjing/paged/CMakeFiles/paged.dir/clean

yijinjing/paged/CMakeFiles/paged.dir/depend:
	cd /shared/liandao/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /shared/liandao /shared/liandao/yijinjing/paged /shared/liandao/build /shared/liandao/build/yijinjing/paged /shared/liandao/build/yijinjing/paged/CMakeFiles/paged.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : yijinjing/paged/CMakeFiles/paged.dir/depend


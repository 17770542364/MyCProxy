# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/zeng/work_home/MyCProxy

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zeng/work_home/MyCProxy/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/lib.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/lib.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/lib.dir/flags.make

lib/CMakeFiles/lib.dir/Buffer.cpp.o: lib/CMakeFiles/lib.dir/flags.make
lib/CMakeFiles/lib.dir/Buffer.cpp.o: ../lib/Buffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zeng/work_home/MyCProxy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/CMakeFiles/lib.dir/Buffer.cpp.o"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lib.dir/Buffer.cpp.o -c /home/zeng/work_home/MyCProxy/lib/Buffer.cpp

lib/CMakeFiles/lib.dir/Buffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lib.dir/Buffer.cpp.i"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zeng/work_home/MyCProxy/lib/Buffer.cpp > CMakeFiles/lib.dir/Buffer.cpp.i

lib/CMakeFiles/lib.dir/Buffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lib.dir/Buffer.cpp.s"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zeng/work_home/MyCProxy/lib/Buffer.cpp -o CMakeFiles/lib.dir/Buffer.cpp.s

lib/CMakeFiles/lib.dir/Buffer.cpp.o.requires:

.PHONY : lib/CMakeFiles/lib.dir/Buffer.cpp.o.requires

lib/CMakeFiles/lib.dir/Buffer.cpp.o.provides: lib/CMakeFiles/lib.dir/Buffer.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/lib.dir/build.make lib/CMakeFiles/lib.dir/Buffer.cpp.o.provides.build
.PHONY : lib/CMakeFiles/lib.dir/Buffer.cpp.o.provides

lib/CMakeFiles/lib.dir/Buffer.cpp.o.provides.build: lib/CMakeFiles/lib.dir/Buffer.cpp.o


lib/CMakeFiles/lib.dir/EventLoopThread.cpp.o: lib/CMakeFiles/lib.dir/flags.make
lib/CMakeFiles/lib.dir/EventLoopThread.cpp.o: ../lib/EventLoopThread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zeng/work_home/MyCProxy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/CMakeFiles/lib.dir/EventLoopThread.cpp.o"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lib.dir/EventLoopThread.cpp.o -c /home/zeng/work_home/MyCProxy/lib/EventLoopThread.cpp

lib/CMakeFiles/lib.dir/EventLoopThread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lib.dir/EventLoopThread.cpp.i"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zeng/work_home/MyCProxy/lib/EventLoopThread.cpp > CMakeFiles/lib.dir/EventLoopThread.cpp.i

lib/CMakeFiles/lib.dir/EventLoopThread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lib.dir/EventLoopThread.cpp.s"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zeng/work_home/MyCProxy/lib/EventLoopThread.cpp -o CMakeFiles/lib.dir/EventLoopThread.cpp.s

lib/CMakeFiles/lib.dir/EventLoopThread.cpp.o.requires:

.PHONY : lib/CMakeFiles/lib.dir/EventLoopThread.cpp.o.requires

lib/CMakeFiles/lib.dir/EventLoopThread.cpp.o.provides: lib/CMakeFiles/lib.dir/EventLoopThread.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/lib.dir/build.make lib/CMakeFiles/lib.dir/EventLoopThread.cpp.o.provides.build
.PHONY : lib/CMakeFiles/lib.dir/EventLoopThread.cpp.o.provides

lib/CMakeFiles/lib.dir/EventLoopThread.cpp.o.provides.build: lib/CMakeFiles/lib.dir/EventLoopThread.cpp.o


lib/CMakeFiles/lib.dir/EventLoopThreadPool.cpp.o: lib/CMakeFiles/lib.dir/flags.make
lib/CMakeFiles/lib.dir/EventLoopThreadPool.cpp.o: ../lib/EventLoopThreadPool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zeng/work_home/MyCProxy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lib/CMakeFiles/lib.dir/EventLoopThreadPool.cpp.o"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lib.dir/EventLoopThreadPool.cpp.o -c /home/zeng/work_home/MyCProxy/lib/EventLoopThreadPool.cpp

lib/CMakeFiles/lib.dir/EventLoopThreadPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lib.dir/EventLoopThreadPool.cpp.i"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zeng/work_home/MyCProxy/lib/EventLoopThreadPool.cpp > CMakeFiles/lib.dir/EventLoopThreadPool.cpp.i

lib/CMakeFiles/lib.dir/EventLoopThreadPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lib.dir/EventLoopThreadPool.cpp.s"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zeng/work_home/MyCProxy/lib/EventLoopThreadPool.cpp -o CMakeFiles/lib.dir/EventLoopThreadPool.cpp.s

lib/CMakeFiles/lib.dir/EventLoopThreadPool.cpp.o.requires:

.PHONY : lib/CMakeFiles/lib.dir/EventLoopThreadPool.cpp.o.requires

lib/CMakeFiles/lib.dir/EventLoopThreadPool.cpp.o.provides: lib/CMakeFiles/lib.dir/EventLoopThreadPool.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/lib.dir/build.make lib/CMakeFiles/lib.dir/EventLoopThreadPool.cpp.o.provides.build
.PHONY : lib/CMakeFiles/lib.dir/EventLoopThreadPool.cpp.o.provides

lib/CMakeFiles/lib.dir/EventLoopThreadPool.cpp.o.provides.build: lib/CMakeFiles/lib.dir/EventLoopThreadPool.cpp.o


lib/CMakeFiles/lib.dir/Util.cpp.o: lib/CMakeFiles/lib.dir/flags.make
lib/CMakeFiles/lib.dir/Util.cpp.o: ../lib/Util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zeng/work_home/MyCProxy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object lib/CMakeFiles/lib.dir/Util.cpp.o"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lib.dir/Util.cpp.o -c /home/zeng/work_home/MyCProxy/lib/Util.cpp

lib/CMakeFiles/lib.dir/Util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lib.dir/Util.cpp.i"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zeng/work_home/MyCProxy/lib/Util.cpp > CMakeFiles/lib.dir/Util.cpp.i

lib/CMakeFiles/lib.dir/Util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lib.dir/Util.cpp.s"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zeng/work_home/MyCProxy/lib/Util.cpp -o CMakeFiles/lib.dir/Util.cpp.s

lib/CMakeFiles/lib.dir/Util.cpp.o.requires:

.PHONY : lib/CMakeFiles/lib.dir/Util.cpp.o.requires

lib/CMakeFiles/lib.dir/Util.cpp.o.provides: lib/CMakeFiles/lib.dir/Util.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/lib.dir/build.make lib/CMakeFiles/lib.dir/Util.cpp.o.provides.build
.PHONY : lib/CMakeFiles/lib.dir/Util.cpp.o.provides

lib/CMakeFiles/lib.dir/Util.cpp.o.provides.build: lib/CMakeFiles/lib.dir/Util.cpp.o


lib/CMakeFiles/lib.dir/EventLoop.cpp.o: lib/CMakeFiles/lib.dir/flags.make
lib/CMakeFiles/lib.dir/EventLoop.cpp.o: ../lib/EventLoop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zeng/work_home/MyCProxy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object lib/CMakeFiles/lib.dir/EventLoop.cpp.o"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lib.dir/EventLoop.cpp.o -c /home/zeng/work_home/MyCProxy/lib/EventLoop.cpp

lib/CMakeFiles/lib.dir/EventLoop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lib.dir/EventLoop.cpp.i"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zeng/work_home/MyCProxy/lib/EventLoop.cpp > CMakeFiles/lib.dir/EventLoop.cpp.i

lib/CMakeFiles/lib.dir/EventLoop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lib.dir/EventLoop.cpp.s"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zeng/work_home/MyCProxy/lib/EventLoop.cpp -o CMakeFiles/lib.dir/EventLoop.cpp.s

lib/CMakeFiles/lib.dir/EventLoop.cpp.o.requires:

.PHONY : lib/CMakeFiles/lib.dir/EventLoop.cpp.o.requires

lib/CMakeFiles/lib.dir/EventLoop.cpp.o.provides: lib/CMakeFiles/lib.dir/EventLoop.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/lib.dir/build.make lib/CMakeFiles/lib.dir/EventLoop.cpp.o.provides.build
.PHONY : lib/CMakeFiles/lib.dir/EventLoop.cpp.o.provides

lib/CMakeFiles/lib.dir/EventLoop.cpp.o.provides.build: lib/CMakeFiles/lib.dir/EventLoop.cpp.o


lib/CMakeFiles/lib.dir/Channel.cpp.o: lib/CMakeFiles/lib.dir/flags.make
lib/CMakeFiles/lib.dir/Channel.cpp.o: ../lib/Channel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zeng/work_home/MyCProxy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object lib/CMakeFiles/lib.dir/Channel.cpp.o"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lib.dir/Channel.cpp.o -c /home/zeng/work_home/MyCProxy/lib/Channel.cpp

lib/CMakeFiles/lib.dir/Channel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lib.dir/Channel.cpp.i"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zeng/work_home/MyCProxy/lib/Channel.cpp > CMakeFiles/lib.dir/Channel.cpp.i

lib/CMakeFiles/lib.dir/Channel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lib.dir/Channel.cpp.s"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zeng/work_home/MyCProxy/lib/Channel.cpp -o CMakeFiles/lib.dir/Channel.cpp.s

lib/CMakeFiles/lib.dir/Channel.cpp.o.requires:

.PHONY : lib/CMakeFiles/lib.dir/Channel.cpp.o.requires

lib/CMakeFiles/lib.dir/Channel.cpp.o.provides: lib/CMakeFiles/lib.dir/Channel.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/lib.dir/build.make lib/CMakeFiles/lib.dir/Channel.cpp.o.provides.build
.PHONY : lib/CMakeFiles/lib.dir/Channel.cpp.o.provides

lib/CMakeFiles/lib.dir/Channel.cpp.o.provides.build: lib/CMakeFiles/lib.dir/Channel.cpp.o


lib/CMakeFiles/lib.dir/Epoll.cpp.o: lib/CMakeFiles/lib.dir/flags.make
lib/CMakeFiles/lib.dir/Epoll.cpp.o: ../lib/Epoll.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zeng/work_home/MyCProxy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object lib/CMakeFiles/lib.dir/Epoll.cpp.o"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lib.dir/Epoll.cpp.o -c /home/zeng/work_home/MyCProxy/lib/Epoll.cpp

lib/CMakeFiles/lib.dir/Epoll.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lib.dir/Epoll.cpp.i"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zeng/work_home/MyCProxy/lib/Epoll.cpp > CMakeFiles/lib.dir/Epoll.cpp.i

lib/CMakeFiles/lib.dir/Epoll.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lib.dir/Epoll.cpp.s"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zeng/work_home/MyCProxy/lib/Epoll.cpp -o CMakeFiles/lib.dir/Epoll.cpp.s

lib/CMakeFiles/lib.dir/Epoll.cpp.o.requires:

.PHONY : lib/CMakeFiles/lib.dir/Epoll.cpp.o.requires

lib/CMakeFiles/lib.dir/Epoll.cpp.o.provides: lib/CMakeFiles/lib.dir/Epoll.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/lib.dir/build.make lib/CMakeFiles/lib.dir/Epoll.cpp.o.provides.build
.PHONY : lib/CMakeFiles/lib.dir/Epoll.cpp.o.provides

lib/CMakeFiles/lib.dir/Epoll.cpp.o.provides.build: lib/CMakeFiles/lib.dir/Epoll.cpp.o


lib/CMakeFiles/lib.dir/Msg.cpp.o: lib/CMakeFiles/lib.dir/flags.make
lib/CMakeFiles/lib.dir/Msg.cpp.o: ../lib/Msg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zeng/work_home/MyCProxy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object lib/CMakeFiles/lib.dir/Msg.cpp.o"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lib.dir/Msg.cpp.o -c /home/zeng/work_home/MyCProxy/lib/Msg.cpp

lib/CMakeFiles/lib.dir/Msg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lib.dir/Msg.cpp.i"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zeng/work_home/MyCProxy/lib/Msg.cpp > CMakeFiles/lib.dir/Msg.cpp.i

lib/CMakeFiles/lib.dir/Msg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lib.dir/Msg.cpp.s"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zeng/work_home/MyCProxy/lib/Msg.cpp -o CMakeFiles/lib.dir/Msg.cpp.s

lib/CMakeFiles/lib.dir/Msg.cpp.o.requires:

.PHONY : lib/CMakeFiles/lib.dir/Msg.cpp.o.requires

lib/CMakeFiles/lib.dir/Msg.cpp.o.provides: lib/CMakeFiles/lib.dir/Msg.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/lib.dir/build.make lib/CMakeFiles/lib.dir/Msg.cpp.o.provides.build
.PHONY : lib/CMakeFiles/lib.dir/Msg.cpp.o.provides

lib/CMakeFiles/lib.dir/Msg.cpp.o.provides.build: lib/CMakeFiles/lib.dir/Msg.cpp.o


lib/CMakeFiles/lib.dir/CtlConn.cpp.o: lib/CMakeFiles/lib.dir/flags.make
lib/CMakeFiles/lib.dir/CtlConn.cpp.o: ../lib/CtlConn.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zeng/work_home/MyCProxy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object lib/CMakeFiles/lib.dir/CtlConn.cpp.o"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lib.dir/CtlConn.cpp.o -c /home/zeng/work_home/MyCProxy/lib/CtlConn.cpp

lib/CMakeFiles/lib.dir/CtlConn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lib.dir/CtlConn.cpp.i"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zeng/work_home/MyCProxy/lib/CtlConn.cpp > CMakeFiles/lib.dir/CtlConn.cpp.i

lib/CMakeFiles/lib.dir/CtlConn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lib.dir/CtlConn.cpp.s"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zeng/work_home/MyCProxy/lib/CtlConn.cpp -o CMakeFiles/lib.dir/CtlConn.cpp.s

lib/CMakeFiles/lib.dir/CtlConn.cpp.o.requires:

.PHONY : lib/CMakeFiles/lib.dir/CtlConn.cpp.o.requires

lib/CMakeFiles/lib.dir/CtlConn.cpp.o.provides: lib/CMakeFiles/lib.dir/CtlConn.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/lib.dir/build.make lib/CMakeFiles/lib.dir/CtlConn.cpp.o.provides.build
.PHONY : lib/CMakeFiles/lib.dir/CtlConn.cpp.o.provides

lib/CMakeFiles/lib.dir/CtlConn.cpp.o.provides.build: lib/CMakeFiles/lib.dir/CtlConn.cpp.o


lib/CMakeFiles/lib.dir/ProxyConn.cpp.o: lib/CMakeFiles/lib.dir/flags.make
lib/CMakeFiles/lib.dir/ProxyConn.cpp.o: ../lib/ProxyConn.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zeng/work_home/MyCProxy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object lib/CMakeFiles/lib.dir/ProxyConn.cpp.o"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lib.dir/ProxyConn.cpp.o -c /home/zeng/work_home/MyCProxy/lib/ProxyConn.cpp

lib/CMakeFiles/lib.dir/ProxyConn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lib.dir/ProxyConn.cpp.i"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zeng/work_home/MyCProxy/lib/ProxyConn.cpp > CMakeFiles/lib.dir/ProxyConn.cpp.i

lib/CMakeFiles/lib.dir/ProxyConn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lib.dir/ProxyConn.cpp.s"
	cd /home/zeng/work_home/MyCProxy/build/lib && clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zeng/work_home/MyCProxy/lib/ProxyConn.cpp -o CMakeFiles/lib.dir/ProxyConn.cpp.s

lib/CMakeFiles/lib.dir/ProxyConn.cpp.o.requires:

.PHONY : lib/CMakeFiles/lib.dir/ProxyConn.cpp.o.requires

lib/CMakeFiles/lib.dir/ProxyConn.cpp.o.provides: lib/CMakeFiles/lib.dir/ProxyConn.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/lib.dir/build.make lib/CMakeFiles/lib.dir/ProxyConn.cpp.o.provides.build
.PHONY : lib/CMakeFiles/lib.dir/ProxyConn.cpp.o.provides

lib/CMakeFiles/lib.dir/ProxyConn.cpp.o.provides.build: lib/CMakeFiles/lib.dir/ProxyConn.cpp.o


# Object files for target lib
lib_OBJECTS = \
"CMakeFiles/lib.dir/Buffer.cpp.o" \
"CMakeFiles/lib.dir/EventLoopThread.cpp.o" \
"CMakeFiles/lib.dir/EventLoopThreadPool.cpp.o" \
"CMakeFiles/lib.dir/Util.cpp.o" \
"CMakeFiles/lib.dir/EventLoop.cpp.o" \
"CMakeFiles/lib.dir/Channel.cpp.o" \
"CMakeFiles/lib.dir/Epoll.cpp.o" \
"CMakeFiles/lib.dir/Msg.cpp.o" \
"CMakeFiles/lib.dir/CtlConn.cpp.o" \
"CMakeFiles/lib.dir/ProxyConn.cpp.o"

# External object files for target lib
lib_EXTERNAL_OBJECTS =

lib/liblib.a: lib/CMakeFiles/lib.dir/Buffer.cpp.o
lib/liblib.a: lib/CMakeFiles/lib.dir/EventLoopThread.cpp.o
lib/liblib.a: lib/CMakeFiles/lib.dir/EventLoopThreadPool.cpp.o
lib/liblib.a: lib/CMakeFiles/lib.dir/Util.cpp.o
lib/liblib.a: lib/CMakeFiles/lib.dir/EventLoop.cpp.o
lib/liblib.a: lib/CMakeFiles/lib.dir/Channel.cpp.o
lib/liblib.a: lib/CMakeFiles/lib.dir/Epoll.cpp.o
lib/liblib.a: lib/CMakeFiles/lib.dir/Msg.cpp.o
lib/liblib.a: lib/CMakeFiles/lib.dir/CtlConn.cpp.o
lib/liblib.a: lib/CMakeFiles/lib.dir/ProxyConn.cpp.o
lib/liblib.a: lib/CMakeFiles/lib.dir/build.make
lib/liblib.a: lib/CMakeFiles/lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zeng/work_home/MyCProxy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX static library liblib.a"
	cd /home/zeng/work_home/MyCProxy/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/lib.dir/cmake_clean_target.cmake
	cd /home/zeng/work_home/MyCProxy/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/lib.dir/build: lib/liblib.a

.PHONY : lib/CMakeFiles/lib.dir/build

lib/CMakeFiles/lib.dir/requires: lib/CMakeFiles/lib.dir/Buffer.cpp.o.requires
lib/CMakeFiles/lib.dir/requires: lib/CMakeFiles/lib.dir/EventLoopThread.cpp.o.requires
lib/CMakeFiles/lib.dir/requires: lib/CMakeFiles/lib.dir/EventLoopThreadPool.cpp.o.requires
lib/CMakeFiles/lib.dir/requires: lib/CMakeFiles/lib.dir/Util.cpp.o.requires
lib/CMakeFiles/lib.dir/requires: lib/CMakeFiles/lib.dir/EventLoop.cpp.o.requires
lib/CMakeFiles/lib.dir/requires: lib/CMakeFiles/lib.dir/Channel.cpp.o.requires
lib/CMakeFiles/lib.dir/requires: lib/CMakeFiles/lib.dir/Epoll.cpp.o.requires
lib/CMakeFiles/lib.dir/requires: lib/CMakeFiles/lib.dir/Msg.cpp.o.requires
lib/CMakeFiles/lib.dir/requires: lib/CMakeFiles/lib.dir/CtlConn.cpp.o.requires
lib/CMakeFiles/lib.dir/requires: lib/CMakeFiles/lib.dir/ProxyConn.cpp.o.requires

.PHONY : lib/CMakeFiles/lib.dir/requires

lib/CMakeFiles/lib.dir/clean:
	cd /home/zeng/work_home/MyCProxy/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/lib.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/lib.dir/clean

lib/CMakeFiles/lib.dir/depend:
	cd /home/zeng/work_home/MyCProxy/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zeng/work_home/MyCProxy /home/zeng/work_home/MyCProxy/lib /home/zeng/work_home/MyCProxy/build /home/zeng/work_home/MyCProxy/build/lib /home/zeng/work_home/MyCProxy/build/lib/CMakeFiles/lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/lib.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /opt/clion/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/he/git/coflowSim_online/share

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/he/git/coflowSim_online/share/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/share.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/share.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/share.dir/flags.make

CMakeFiles/share.dir/library.cpp.o: CMakeFiles/share.dir/flags.make
CMakeFiles/share.dir/library.cpp.o: ../library.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/he/git/coflowSim_online/share/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/share.dir/library.cpp.o"
	/usr/lib/hardening-wrapper/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/share.dir/library.cpp.o -c /home/he/git/coflowSim_online/share/library.cpp

CMakeFiles/share.dir/library.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/share.dir/library.cpp.i"
	/usr/lib/hardening-wrapper/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/he/git/coflowSim_online/share/library.cpp > CMakeFiles/share.dir/library.cpp.i

CMakeFiles/share.dir/library.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/share.dir/library.cpp.s"
	/usr/lib/hardening-wrapper/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/he/git/coflowSim_online/share/library.cpp -o CMakeFiles/share.dir/library.cpp.s

CMakeFiles/share.dir/library.cpp.o.requires:

.PHONY : CMakeFiles/share.dir/library.cpp.o.requires

CMakeFiles/share.dir/library.cpp.o.provides: CMakeFiles/share.dir/library.cpp.o.requires
	$(MAKE) -f CMakeFiles/share.dir/build.make CMakeFiles/share.dir/library.cpp.o.provides.build
.PHONY : CMakeFiles/share.dir/library.cpp.o.provides

CMakeFiles/share.dir/library.cpp.o.provides.build: CMakeFiles/share.dir/library.cpp.o


CMakeFiles/share.dir/lib/epollFunctions.cpp.o: CMakeFiles/share.dir/flags.make
CMakeFiles/share.dir/lib/epollFunctions.cpp.o: ../lib/epollFunctions.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/he/git/coflowSim_online/share/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/share.dir/lib/epollFunctions.cpp.o"
	/usr/lib/hardening-wrapper/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/share.dir/lib/epollFunctions.cpp.o -c /home/he/git/coflowSim_online/share/lib/epollFunctions.cpp

CMakeFiles/share.dir/lib/epollFunctions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/share.dir/lib/epollFunctions.cpp.i"
	/usr/lib/hardening-wrapper/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/he/git/coflowSim_online/share/lib/epollFunctions.cpp > CMakeFiles/share.dir/lib/epollFunctions.cpp.i

CMakeFiles/share.dir/lib/epollFunctions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/share.dir/lib/epollFunctions.cpp.s"
	/usr/lib/hardening-wrapper/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/he/git/coflowSim_online/share/lib/epollFunctions.cpp -o CMakeFiles/share.dir/lib/epollFunctions.cpp.s

CMakeFiles/share.dir/lib/epollFunctions.cpp.o.requires:

.PHONY : CMakeFiles/share.dir/lib/epollFunctions.cpp.o.requires

CMakeFiles/share.dir/lib/epollFunctions.cpp.o.provides: CMakeFiles/share.dir/lib/epollFunctions.cpp.o.requires
	$(MAKE) -f CMakeFiles/share.dir/build.make CMakeFiles/share.dir/lib/epollFunctions.cpp.o.provides.build
.PHONY : CMakeFiles/share.dir/lib/epollFunctions.cpp.o.provides

CMakeFiles/share.dir/lib/epollFunctions.cpp.o.provides.build: CMakeFiles/share.dir/lib/epollFunctions.cpp.o


CMakeFiles/share.dir/socket/sender.cpp.o: CMakeFiles/share.dir/flags.make
CMakeFiles/share.dir/socket/sender.cpp.o: ../socket/sender.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/he/git/coflowSim_online/share/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/share.dir/socket/sender.cpp.o"
	/usr/lib/hardening-wrapper/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/share.dir/socket/sender.cpp.o -c /home/he/git/coflowSim_online/share/socket/sender.cpp

CMakeFiles/share.dir/socket/sender.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/share.dir/socket/sender.cpp.i"
	/usr/lib/hardening-wrapper/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/he/git/coflowSim_online/share/socket/sender.cpp > CMakeFiles/share.dir/socket/sender.cpp.i

CMakeFiles/share.dir/socket/sender.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/share.dir/socket/sender.cpp.s"
	/usr/lib/hardening-wrapper/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/he/git/coflowSim_online/share/socket/sender.cpp -o CMakeFiles/share.dir/socket/sender.cpp.s

CMakeFiles/share.dir/socket/sender.cpp.o.requires:

.PHONY : CMakeFiles/share.dir/socket/sender.cpp.o.requires

CMakeFiles/share.dir/socket/sender.cpp.o.provides: CMakeFiles/share.dir/socket/sender.cpp.o.requires
	$(MAKE) -f CMakeFiles/share.dir/build.make CMakeFiles/share.dir/socket/sender.cpp.o.provides.build
.PHONY : CMakeFiles/share.dir/socket/sender.cpp.o.provides

CMakeFiles/share.dir/socket/sender.cpp.o.provides.build: CMakeFiles/share.dir/socket/sender.cpp.o


CMakeFiles/share.dir/socket/socketManage.cpp.o: CMakeFiles/share.dir/flags.make
CMakeFiles/share.dir/socket/socketManage.cpp.o: ../socket/socketManage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/he/git/coflowSim_online/share/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/share.dir/socket/socketManage.cpp.o"
	/usr/lib/hardening-wrapper/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/share.dir/socket/socketManage.cpp.o -c /home/he/git/coflowSim_online/share/socket/socketManage.cpp

CMakeFiles/share.dir/socket/socketManage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/share.dir/socket/socketManage.cpp.i"
	/usr/lib/hardening-wrapper/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/he/git/coflowSim_online/share/socket/socketManage.cpp > CMakeFiles/share.dir/socket/socketManage.cpp.i

CMakeFiles/share.dir/socket/socketManage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/share.dir/socket/socketManage.cpp.s"
	/usr/lib/hardening-wrapper/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/he/git/coflowSim_online/share/socket/socketManage.cpp -o CMakeFiles/share.dir/socket/socketManage.cpp.s

CMakeFiles/share.dir/socket/socketManage.cpp.o.requires:

.PHONY : CMakeFiles/share.dir/socket/socketManage.cpp.o.requires

CMakeFiles/share.dir/socket/socketManage.cpp.o.provides: CMakeFiles/share.dir/socket/socketManage.cpp.o.requires
	$(MAKE) -f CMakeFiles/share.dir/build.make CMakeFiles/share.dir/socket/socketManage.cpp.o.provides.build
.PHONY : CMakeFiles/share.dir/socket/socketManage.cpp.o.provides

CMakeFiles/share.dir/socket/socketManage.cpp.o.provides.build: CMakeFiles/share.dir/socket/socketManage.cpp.o


# Object files for target share
share_OBJECTS = \
"CMakeFiles/share.dir/library.cpp.o" \
"CMakeFiles/share.dir/lib/epollFunctions.cpp.o" \
"CMakeFiles/share.dir/socket/sender.cpp.o" \
"CMakeFiles/share.dir/socket/socketManage.cpp.o"

# External object files for target share
share_EXTERNAL_OBJECTS =

libshare.so: CMakeFiles/share.dir/library.cpp.o
libshare.so: CMakeFiles/share.dir/lib/epollFunctions.cpp.o
libshare.so: CMakeFiles/share.dir/socket/sender.cpp.o
libshare.so: CMakeFiles/share.dir/socket/socketManage.cpp.o
libshare.so: CMakeFiles/share.dir/build.make
libshare.so: CMakeFiles/share.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/he/git/coflowSim_online/share/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library libshare.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/share.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/share.dir/build: libshare.so

.PHONY : CMakeFiles/share.dir/build

CMakeFiles/share.dir/requires: CMakeFiles/share.dir/library.cpp.o.requires
CMakeFiles/share.dir/requires: CMakeFiles/share.dir/lib/epollFunctions.cpp.o.requires
CMakeFiles/share.dir/requires: CMakeFiles/share.dir/socket/sender.cpp.o.requires
CMakeFiles/share.dir/requires: CMakeFiles/share.dir/socket/socketManage.cpp.o.requires

.PHONY : CMakeFiles/share.dir/requires

CMakeFiles/share.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/share.dir/cmake_clean.cmake
.PHONY : CMakeFiles/share.dir/clean

CMakeFiles/share.dir/depend:
	cd /home/he/git/coflowSim_online/share/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/he/git/coflowSim_online/share /home/he/git/coflowSim_online/share /home/he/git/coflowSim_online/share/cmake-build-debug /home/he/git/coflowSim_online/share/cmake-build-debug /home/he/git/coflowSim_online/share/cmake-build-debug/CMakeFiles/share.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/share.dir/depend


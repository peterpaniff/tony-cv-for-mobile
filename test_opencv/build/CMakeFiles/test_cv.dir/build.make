# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/liuzhx/project/tony_cv/build-host-gcc-linux/install/test_opencv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/liuzhx/project/tony_cv/build-host-gcc-linux/install/test_opencv/build

# Include any dependencies generated for this target.
include CMakeFiles/test_cv.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_cv.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_cv.dir/flags.make

CMakeFiles/test_cv.dir/src/main.cpp.o: CMakeFiles/test_cv.dir/flags.make
CMakeFiles/test_cv.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liuzhx/project/tony_cv/build-host-gcc-linux/install/test_opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_cv.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_cv.dir/src/main.cpp.o -c /home/liuzhx/project/tony_cv/build-host-gcc-linux/install/test_opencv/src/main.cpp

CMakeFiles/test_cv.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_cv.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liuzhx/project/tony_cv/build-host-gcc-linux/install/test_opencv/src/main.cpp > CMakeFiles/test_cv.dir/src/main.cpp.i

CMakeFiles/test_cv.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_cv.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liuzhx/project/tony_cv/build-host-gcc-linux/install/test_opencv/src/main.cpp -o CMakeFiles/test_cv.dir/src/main.cpp.s

CMakeFiles/test_cv.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/test_cv.dir/src/main.cpp.o.requires

CMakeFiles/test_cv.dir/src/main.cpp.o.provides: CMakeFiles/test_cv.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_cv.dir/build.make CMakeFiles/test_cv.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/test_cv.dir/src/main.cpp.o.provides

CMakeFiles/test_cv.dir/src/main.cpp.o.provides.build: CMakeFiles/test_cv.dir/src/main.cpp.o


# Object files for target test_cv
test_cv_OBJECTS = \
"CMakeFiles/test_cv.dir/src/main.cpp.o"

# External object files for target test_cv
test_cv_EXTERNAL_OBJECTS =

test_cv: CMakeFiles/test_cv.dir/src/main.cpp.o
test_cv: CMakeFiles/test_cv.dir/build.make
test_cv: ../lib/libtiny_cv.so
test_cv: CMakeFiles/test_cv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/liuzhx/project/tony_cv/build-host-gcc-linux/install/test_opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_cv"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_cv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_cv.dir/build: test_cv

.PHONY : CMakeFiles/test_cv.dir/build

CMakeFiles/test_cv.dir/requires: CMakeFiles/test_cv.dir/src/main.cpp.o.requires

.PHONY : CMakeFiles/test_cv.dir/requires

CMakeFiles/test_cv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_cv.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_cv.dir/clean

CMakeFiles/test_cv.dir/depend:
	cd /home/liuzhx/project/tony_cv/build-host-gcc-linux/install/test_opencv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/liuzhx/project/tony_cv/build-host-gcc-linux/install/test_opencv /home/liuzhx/project/tony_cv/build-host-gcc-linux/install/test_opencv /home/liuzhx/project/tony_cv/build-host-gcc-linux/install/test_opencv/build /home/liuzhx/project/tony_cv/build-host-gcc-linux/install/test_opencv/build /home/liuzhx/project/tony_cv/build-host-gcc-linux/install/test_opencv/build/CMakeFiles/test_cv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_cv.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /snap/clion/112/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/112/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tariod/Programming/OOP-problems

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tariod/Programming/OOP-problems/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/OOP_problems.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/OOP_problems.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OOP_problems.dir/flags.make

CMakeFiles/OOP_problems.dir/main.cpp.o: CMakeFiles/OOP_problems.dir/flags.make
CMakeFiles/OOP_problems.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tariod/Programming/OOP-problems/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OOP_problems.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OOP_problems.dir/main.cpp.o -c /home/tariod/Programming/OOP-problems/main.cpp

CMakeFiles/OOP_problems.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OOP_problems.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tariod/Programming/OOP-problems/main.cpp > CMakeFiles/OOP_problems.dir/main.cpp.i

CMakeFiles/OOP_problems.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OOP_problems.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tariod/Programming/OOP-problems/main.cpp -o CMakeFiles/OOP_problems.dir/main.cpp.s

# Object files for target OOP_problems
OOP_problems_OBJECTS = \
"CMakeFiles/OOP_problems.dir/main.cpp.o"

# External object files for target OOP_problems
OOP_problems_EXTERNAL_OBJECTS =

OOP_problems: CMakeFiles/OOP_problems.dir/main.cpp.o
OOP_problems: CMakeFiles/OOP_problems.dir/build.make
OOP_problems: CMakeFiles/OOP_problems.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tariod/Programming/OOP-problems/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable OOP_problems"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OOP_problems.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OOP_problems.dir/build: OOP_problems

.PHONY : CMakeFiles/OOP_problems.dir/build

CMakeFiles/OOP_problems.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OOP_problems.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OOP_problems.dir/clean

CMakeFiles/OOP_problems.dir/depend:
	cd /home/tariod/Programming/OOP-problems/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tariod/Programming/OOP-problems /home/tariod/Programming/OOP-problems /home/tariod/Programming/OOP-problems/cmake-build-debug /home/tariod/Programming/OOP-problems/cmake-build-debug /home/tariod/Programming/OOP-problems/cmake-build-debug/CMakeFiles/OOP_problems.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OOP_problems.dir/depend


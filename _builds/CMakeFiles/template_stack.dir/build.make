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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gerdon/CLionProjects/template_stack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gerdon/CLionProjects/template_stack/_builds

# Include any dependencies generated for this target.
include CMakeFiles/template_stack.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/template_stack.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/template_stack.dir/flags.make

CMakeFiles/template_stack.dir/sources/main.cpp.o: CMakeFiles/template_stack.dir/flags.make
CMakeFiles/template_stack.dir/sources/main.cpp.o: ../sources/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gerdon/CLionProjects/template_stack/_builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/template_stack.dir/sources/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/template_stack.dir/sources/main.cpp.o -c /home/gerdon/CLionProjects/template_stack/sources/main.cpp

CMakeFiles/template_stack.dir/sources/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/template_stack.dir/sources/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gerdon/CLionProjects/template_stack/sources/main.cpp > CMakeFiles/template_stack.dir/sources/main.cpp.i

CMakeFiles/template_stack.dir/sources/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/template_stack.dir/sources/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gerdon/CLionProjects/template_stack/sources/main.cpp -o CMakeFiles/template_stack.dir/sources/main.cpp.s

CMakeFiles/template_stack.dir/sources/main.cpp.o.requires:

.PHONY : CMakeFiles/template_stack.dir/sources/main.cpp.o.requires

CMakeFiles/template_stack.dir/sources/main.cpp.o.provides: CMakeFiles/template_stack.dir/sources/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/template_stack.dir/build.make CMakeFiles/template_stack.dir/sources/main.cpp.o.provides.build
.PHONY : CMakeFiles/template_stack.dir/sources/main.cpp.o.provides

CMakeFiles/template_stack.dir/sources/main.cpp.o.provides.build: CMakeFiles/template_stack.dir/sources/main.cpp.o


# Object files for target template_stack
template_stack_OBJECTS = \
"CMakeFiles/template_stack.dir/sources/main.cpp.o"

# External object files for target template_stack
template_stack_EXTERNAL_OBJECTS =

template_stack: CMakeFiles/template_stack.dir/sources/main.cpp.o
template_stack: CMakeFiles/template_stack.dir/build.make
template_stack: CMakeFiles/template_stack.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gerdon/CLionProjects/template_stack/_builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable template_stack"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/template_stack.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/template_stack.dir/build: template_stack

.PHONY : CMakeFiles/template_stack.dir/build

CMakeFiles/template_stack.dir/requires: CMakeFiles/template_stack.dir/sources/main.cpp.o.requires

.PHONY : CMakeFiles/template_stack.dir/requires

CMakeFiles/template_stack.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/template_stack.dir/cmake_clean.cmake
.PHONY : CMakeFiles/template_stack.dir/clean

CMakeFiles/template_stack.dir/depend:
	cd /home/gerdon/CLionProjects/template_stack/_builds && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gerdon/CLionProjects/template_stack /home/gerdon/CLionProjects/template_stack /home/gerdon/CLionProjects/template_stack/_builds /home/gerdon/CLionProjects/template_stack/_builds /home/gerdon/CLionProjects/template_stack/_builds/CMakeFiles/template_stack.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/template_stack.dir/depend


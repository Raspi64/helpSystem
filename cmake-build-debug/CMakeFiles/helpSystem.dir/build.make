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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/mnt/c/Users/Ununoctium/Desktop/uni/studium/5_Semester/Projektgruppe Link/helpSystem"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/mnt/c/Users/Ununoctium/Desktop/uni/studium/5_Semester/Projektgruppe Link/helpSystem/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/helpSystem.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/helpSystem.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/helpSystem.dir/flags.make

CMakeFiles/helpSystem.dir/main.cpp.o: CMakeFiles/helpSystem.dir/flags.make
CMakeFiles/helpSystem.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/Ununoctium/Desktop/uni/studium/5_Semester/Projektgruppe Link/helpSystem/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/helpSystem.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/helpSystem.dir/main.cpp.o -c "/mnt/c/Users/Ununoctium/Desktop/uni/studium/5_Semester/Projektgruppe Link/helpSystem/main.cpp"

CMakeFiles/helpSystem.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/helpSystem.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/c/Users/Ununoctium/Desktop/uni/studium/5_Semester/Projektgruppe Link/helpSystem/main.cpp" > CMakeFiles/helpSystem.dir/main.cpp.i

CMakeFiles/helpSystem.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/helpSystem.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/c/Users/Ununoctium/Desktop/uni/studium/5_Semester/Projektgruppe Link/helpSystem/main.cpp" -o CMakeFiles/helpSystem.dir/main.cpp.s

# Object files for target helpSystem
helpSystem_OBJECTS = \
"CMakeFiles/helpSystem.dir/main.cpp.o"

# External object files for target helpSystem
helpSystem_EXTERNAL_OBJECTS =

helpSystem: CMakeFiles/helpSystem.dir/main.cpp.o
helpSystem: CMakeFiles/helpSystem.dir/build.make
helpSystem: CMakeFiles/helpSystem.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/c/Users/Ununoctium/Desktop/uni/studium/5_Semester/Projektgruppe Link/helpSystem/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable helpSystem"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/helpSystem.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/helpSystem.dir/build: helpSystem

.PHONY : CMakeFiles/helpSystem.dir/build

CMakeFiles/helpSystem.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/helpSystem.dir/cmake_clean.cmake
.PHONY : CMakeFiles/helpSystem.dir/clean

CMakeFiles/helpSystem.dir/depend:
	cd "/mnt/c/Users/Ununoctium/Desktop/uni/studium/5_Semester/Projektgruppe Link/helpSystem/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/c/Users/Ununoctium/Desktop/uni/studium/5_Semester/Projektgruppe Link/helpSystem" "/mnt/c/Users/Ununoctium/Desktop/uni/studium/5_Semester/Projektgruppe Link/helpSystem" "/mnt/c/Users/Ununoctium/Desktop/uni/studium/5_Semester/Projektgruppe Link/helpSystem/cmake-build-debug" "/mnt/c/Users/Ununoctium/Desktop/uni/studium/5_Semester/Projektgruppe Link/helpSystem/cmake-build-debug" "/mnt/c/Users/Ununoctium/Desktop/uni/studium/5_Semester/Projektgruppe Link/helpSystem/cmake-build-debug/CMakeFiles/helpSystem.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/helpSystem.dir/depend


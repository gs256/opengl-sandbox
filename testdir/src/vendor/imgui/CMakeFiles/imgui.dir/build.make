# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\Packages\CMake\bin\cmake.exe

# The command to remove a file.
RM = D:\Packages\CMake\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Projects\C++\opengl_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Projects\C++\opengl_test\testdir

# Include any dependencies generated for this target.
include src/vendor/imgui/CMakeFiles/imgui.dir/depend.make

# Include the progress variables for this target.
include src/vendor/imgui/CMakeFiles/imgui.dir/progress.make

# Include the compile flags for this target's objects.
include src/vendor/imgui/CMakeFiles/imgui.dir/flags.make

src/vendor/imgui/CMakeFiles/imgui.dir/imgui.cpp.obj: src/vendor/imgui/CMakeFiles/imgui.dir/flags.make
src/vendor/imgui/CMakeFiles/imgui.dir/imgui.cpp.obj: src/vendor/imgui/CMakeFiles/imgui.dir/includes_CXX.rsp
src/vendor/imgui/CMakeFiles/imgui.dir/imgui.cpp.obj: ../src/vendor/imgui/imgui.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Projects\C++\opengl_test\testdir\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/vendor/imgui/CMakeFiles/imgui.dir/imgui.cpp.obj"
	cd /d D:\Projects\C++\opengl_test\testdir\src\vendor\imgui && D:\Packages\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\imgui.dir\imgui.cpp.obj -c D:\Projects\C++\opengl_test\src\vendor\imgui\imgui.cpp

src/vendor/imgui/CMakeFiles/imgui.dir/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui.cpp.i"
	cd /d D:\Projects\C++\opengl_test\testdir\src\vendor\imgui && D:\Packages\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Projects\C++\opengl_test\src\vendor\imgui\imgui.cpp > CMakeFiles\imgui.dir\imgui.cpp.i

src/vendor/imgui/CMakeFiles/imgui.dir/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui.cpp.s"
	cd /d D:\Projects\C++\opengl_test\testdir\src\vendor\imgui && D:\Packages\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Projects\C++\opengl_test\src\vendor\imgui\imgui.cpp -o CMakeFiles\imgui.dir\imgui.cpp.s

src/vendor/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.obj: src/vendor/imgui/CMakeFiles/imgui.dir/flags.make
src/vendor/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.obj: src/vendor/imgui/CMakeFiles/imgui.dir/includes_CXX.rsp
src/vendor/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.obj: ../src/vendor/imgui/imgui_demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Projects\C++\opengl_test\testdir\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/vendor/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.obj"
	cd /d D:\Projects\C++\opengl_test\testdir\src\vendor\imgui && D:\Packages\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\imgui.dir\imgui_demo.cpp.obj -c D:\Projects\C++\opengl_test\src\vendor\imgui\imgui_demo.cpp

src/vendor/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui_demo.cpp.i"
	cd /d D:\Projects\C++\opengl_test\testdir\src\vendor\imgui && D:\Packages\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Projects\C++\opengl_test\src\vendor\imgui\imgui_demo.cpp > CMakeFiles\imgui.dir\imgui_demo.cpp.i

src/vendor/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui_demo.cpp.s"
	cd /d D:\Projects\C++\opengl_test\testdir\src\vendor\imgui && D:\Packages\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Projects\C++\opengl_test\src\vendor\imgui\imgui_demo.cpp -o CMakeFiles\imgui.dir\imgui_demo.cpp.s

src/vendor/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.obj: src/vendor/imgui/CMakeFiles/imgui.dir/flags.make
src/vendor/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.obj: src/vendor/imgui/CMakeFiles/imgui.dir/includes_CXX.rsp
src/vendor/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.obj: ../src/vendor/imgui/imgui_draw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Projects\C++\opengl_test\testdir\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/vendor/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.obj"
	cd /d D:\Projects\C++\opengl_test\testdir\src\vendor\imgui && D:\Packages\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\imgui.dir\imgui_draw.cpp.obj -c D:\Projects\C++\opengl_test\src\vendor\imgui\imgui_draw.cpp

src/vendor/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui_draw.cpp.i"
	cd /d D:\Projects\C++\opengl_test\testdir\src\vendor\imgui && D:\Packages\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Projects\C++\opengl_test\src\vendor\imgui\imgui_draw.cpp > CMakeFiles\imgui.dir\imgui_draw.cpp.i

src/vendor/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui_draw.cpp.s"
	cd /d D:\Projects\C++\opengl_test\testdir\src\vendor\imgui && D:\Packages\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Projects\C++\opengl_test\src\vendor\imgui\imgui_draw.cpp -o CMakeFiles\imgui.dir\imgui_draw.cpp.s

src/vendor/imgui/CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.obj: src/vendor/imgui/CMakeFiles/imgui.dir/flags.make
src/vendor/imgui/CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.obj: src/vendor/imgui/CMakeFiles/imgui.dir/includes_CXX.rsp
src/vendor/imgui/CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.obj: ../src/vendor/imgui/imgui_impl_glfw_gl3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Projects\C++\opengl_test\testdir\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/vendor/imgui/CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.obj"
	cd /d D:\Projects\C++\opengl_test\testdir\src\vendor\imgui && D:\Packages\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\imgui.dir\imgui_impl_glfw_gl3.cpp.obj -c D:\Projects\C++\opengl_test\src\vendor\imgui\imgui_impl_glfw_gl3.cpp

src/vendor/imgui/CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.i"
	cd /d D:\Projects\C++\opengl_test\testdir\src\vendor\imgui && D:\Packages\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Projects\C++\opengl_test\src\vendor\imgui\imgui_impl_glfw_gl3.cpp > CMakeFiles\imgui.dir\imgui_impl_glfw_gl3.cpp.i

src/vendor/imgui/CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.s"
	cd /d D:\Projects\C++\opengl_test\testdir\src\vendor\imgui && D:\Packages\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Projects\C++\opengl_test\src\vendor\imgui\imgui_impl_glfw_gl3.cpp -o CMakeFiles\imgui.dir\imgui_impl_glfw_gl3.cpp.s

# Object files for target imgui
imgui_OBJECTS = \
"CMakeFiles/imgui.dir/imgui.cpp.obj" \
"CMakeFiles/imgui.dir/imgui_demo.cpp.obj" \
"CMakeFiles/imgui.dir/imgui_draw.cpp.obj" \
"CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.obj"

# External object files for target imgui
imgui_EXTERNAL_OBJECTS =

src/vendor/imgui/libimgui.a: src/vendor/imgui/CMakeFiles/imgui.dir/imgui.cpp.obj
src/vendor/imgui/libimgui.a: src/vendor/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.obj
src/vendor/imgui/libimgui.a: src/vendor/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.obj
src/vendor/imgui/libimgui.a: src/vendor/imgui/CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.obj
src/vendor/imgui/libimgui.a: src/vendor/imgui/CMakeFiles/imgui.dir/build.make
src/vendor/imgui/libimgui.a: src/vendor/imgui/CMakeFiles/imgui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Projects\C++\opengl_test\testdir\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library libimgui.a"
	cd /d D:\Projects\C++\opengl_test\testdir\src\vendor\imgui && $(CMAKE_COMMAND) -P CMakeFiles\imgui.dir\cmake_clean_target.cmake
	cd /d D:\Projects\C++\opengl_test\testdir\src\vendor\imgui && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\imgui.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/vendor/imgui/CMakeFiles/imgui.dir/build: src/vendor/imgui/libimgui.a

.PHONY : src/vendor/imgui/CMakeFiles/imgui.dir/build

src/vendor/imgui/CMakeFiles/imgui.dir/clean:
	cd /d D:\Projects\C++\opengl_test\testdir\src\vendor\imgui && $(CMAKE_COMMAND) -P CMakeFiles\imgui.dir\cmake_clean.cmake
.PHONY : src/vendor/imgui/CMakeFiles/imgui.dir/clean

src/vendor/imgui/CMakeFiles/imgui.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Projects\C++\opengl_test D:\Projects\C++\opengl_test\src\vendor\imgui D:\Projects\C++\opengl_test\testdir D:\Projects\C++\opengl_test\testdir\src\vendor\imgui D:\Projects\C++\opengl_test\testdir\src\vendor\imgui\CMakeFiles\imgui.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : src/vendor/imgui/CMakeFiles/imgui.dir/depend


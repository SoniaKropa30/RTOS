# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /private/var/folders/mf/28hr4l3s3xg27ywb75gm28fm0000gn/T/AppTranslocation/1D845B14-2E56-4F8C-9DBC-F1C575DCE8A4/d/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /private/var/folders/mf/28hr4l3s3xg27ywb75gm28fm0000gn/T/AppTranslocation/1D845B14-2E56-4F8C-9DBC-F1C575DCE8A4/d/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/admin/Desktop/RTOS/t04

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/admin/Desktop/RTOS/t04/cmake-build-debug

# Include any dependencies generated for this target.
include esp-idf/oled/CMakeFiles/__idf_oled.dir/depend.make

# Include the progress variables for this target.
include esp-idf/oled/CMakeFiles/__idf_oled.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/oled/CMakeFiles/__idf_oled.dir/flags.make

esp-idf/oled/CMakeFiles/__idf_oled.dir/oled.c.obj: esp-idf/oled/CMakeFiles/__idf_oled.dir/flags.make
esp-idf/oled/CMakeFiles/__idf_oled.dir/oled.c.obj: ../components/oled/oled.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/t04/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/oled/CMakeFiles/__idf_oled.dir/oled.c.obj"
	cd /Users/admin/Desktop/RTOS/t04/cmake-build-debug/esp-idf/oled && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_oled.dir/oled.c.obj   -c /Users/admin/Desktop/RTOS/t04/components/oled/oled.c

esp-idf/oled/CMakeFiles/__idf_oled.dir/oled.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_oled.dir/oled.c.i"
	cd /Users/admin/Desktop/RTOS/t04/cmake-build-debug/esp-idf/oled && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/Desktop/RTOS/t04/components/oled/oled.c > CMakeFiles/__idf_oled.dir/oled.c.i

esp-idf/oled/CMakeFiles/__idf_oled.dir/oled.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_oled.dir/oled.c.s"
	cd /Users/admin/Desktop/RTOS/t04/cmake-build-debug/esp-idf/oled && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/Desktop/RTOS/t04/components/oled/oled.c -o CMakeFiles/__idf_oled.dir/oled.c.s

esp-idf/oled/CMakeFiles/__idf_oled.dir/task_oled.c.obj: esp-idf/oled/CMakeFiles/__idf_oled.dir/flags.make
esp-idf/oled/CMakeFiles/__idf_oled.dir/task_oled.c.obj: ../components/oled/task_oled.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/t04/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/oled/CMakeFiles/__idf_oled.dir/task_oled.c.obj"
	cd /Users/admin/Desktop/RTOS/t04/cmake-build-debug/esp-idf/oled && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_oled.dir/task_oled.c.obj   -c /Users/admin/Desktop/RTOS/t04/components/oled/task_oled.c

esp-idf/oled/CMakeFiles/__idf_oled.dir/task_oled.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_oled.dir/task_oled.c.i"
	cd /Users/admin/Desktop/RTOS/t04/cmake-build-debug/esp-idf/oled && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/Desktop/RTOS/t04/components/oled/task_oled.c > CMakeFiles/__idf_oled.dir/task_oled.c.i

esp-idf/oled/CMakeFiles/__idf_oled.dir/task_oled.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_oled.dir/task_oled.c.s"
	cd /Users/admin/Desktop/RTOS/t04/cmake-build-debug/esp-idf/oled && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/Desktop/RTOS/t04/components/oled/task_oled.c -o CMakeFiles/__idf_oled.dir/task_oled.c.s

# Object files for target __idf_oled
__idf_oled_OBJECTS = \
"CMakeFiles/__idf_oled.dir/oled.c.obj" \
"CMakeFiles/__idf_oled.dir/task_oled.c.obj"

# External object files for target __idf_oled
__idf_oled_EXTERNAL_OBJECTS =

esp-idf/oled/liboled.a: esp-idf/oled/CMakeFiles/__idf_oled.dir/oled.c.obj
esp-idf/oled/liboled.a: esp-idf/oled/CMakeFiles/__idf_oled.dir/task_oled.c.obj
esp-idf/oled/liboled.a: esp-idf/oled/CMakeFiles/__idf_oled.dir/build.make
esp-idf/oled/liboled.a: esp-idf/oled/CMakeFiles/__idf_oled.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/admin/Desktop/RTOS/t04/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library liboled.a"
	cd /Users/admin/Desktop/RTOS/t04/cmake-build-debug/esp-idf/oled && $(CMAKE_COMMAND) -P CMakeFiles/__idf_oled.dir/cmake_clean_target.cmake
	cd /Users/admin/Desktop/RTOS/t04/cmake-build-debug/esp-idf/oled && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_oled.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/oled/CMakeFiles/__idf_oled.dir/build: esp-idf/oled/liboled.a

.PHONY : esp-idf/oled/CMakeFiles/__idf_oled.dir/build

esp-idf/oled/CMakeFiles/__idf_oled.dir/clean:
	cd /Users/admin/Desktop/RTOS/t04/cmake-build-debug/esp-idf/oled && $(CMAKE_COMMAND) -P CMakeFiles/__idf_oled.dir/cmake_clean.cmake
.PHONY : esp-idf/oled/CMakeFiles/__idf_oled.dir/clean

esp-idf/oled/CMakeFiles/__idf_oled.dir/depend:
	cd /Users/admin/Desktop/RTOS/t04/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/admin/Desktop/RTOS/t04 /Users/admin/Desktop/RTOS/t04/components/oled /Users/admin/Desktop/RTOS/t04/cmake-build-debug /Users/admin/Desktop/RTOS/t04/cmake-build-debug/esp-idf/oled /Users/admin/Desktop/RTOS/t04/cmake-build-debug/esp-idf/oled/CMakeFiles/__idf_oled.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/oled/CMakeFiles/__idf_oled.dir/depend


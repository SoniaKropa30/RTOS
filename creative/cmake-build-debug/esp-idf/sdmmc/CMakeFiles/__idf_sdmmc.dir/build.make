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
CMAKE_COMMAND = /private/var/folders/mf/28hr4l3s3xg27ywb75gm28fm0000gn/T/AppTranslocation/6E12591B-0522-4F14-9B85-217DEEE19316/d/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /private/var/folders/mf/28hr4l3s3xg27ywb75gm28fm0000gn/T/AppTranslocation/6E12591B-0522-4F14-9B85-217DEEE19316/d/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/admin/Desktop/RTOS/creative

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/admin/Desktop/RTOS/creative/cmake-build-debug

# Include any dependencies generated for this target.
include esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/depend.make

# Include the progress variables for this target.
include esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/flags.make

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.obj: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/flags.make
esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.obj: /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_cmd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/creative/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.obj"
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.obj   -c /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_cmd.c

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.i"
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_cmd.c > CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.i

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.s"
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_cmd.c -o CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.s

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.obj: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/flags.make
esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.obj: /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_common.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/creative/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.obj"
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.obj   -c /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_common.c

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.i"
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_common.c > CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.i

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.s"
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_common.c -o CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.s

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.obj: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/flags.make
esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.obj: /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/creative/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.obj"
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.obj   -c /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_init.c

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.i"
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_init.c > CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.i

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.s"
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_init.c -o CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.s

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.obj: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/flags.make
esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.obj: /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_io.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/creative/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.obj"
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.obj   -c /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_io.c

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.i"
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_io.c > CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.i

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.s"
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_io.c -o CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.s

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.obj: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/flags.make
esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.obj: /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_mmc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/creative/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.obj"
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.obj   -c /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_mmc.c

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.i"
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_mmc.c > CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.i

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.s"
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_mmc.c -o CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.s

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.obj: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/flags.make
esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.obj: /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_sd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/creative/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.obj"
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.obj   -c /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_sd.c

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.i"
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_sd.c > CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.i

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.s"
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/esp/esp-idf/components/sdmmc/sdmmc_sd.c -o CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.s

# Object files for target __idf_sdmmc
__idf_sdmmc_OBJECTS = \
"CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.obj" \
"CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.obj" \
"CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.obj" \
"CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.obj" \
"CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.obj" \
"CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.obj"

# External object files for target __idf_sdmmc
__idf_sdmmc_EXTERNAL_OBJECTS =

esp-idf/sdmmc/libsdmmc.a: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.obj
esp-idf/sdmmc/libsdmmc.a: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.obj
esp-idf/sdmmc/libsdmmc.a: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.obj
esp-idf/sdmmc/libsdmmc.a: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.obj
esp-idf/sdmmc/libsdmmc.a: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.obj
esp-idf/sdmmc/libsdmmc.a: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.obj
esp-idf/sdmmc/libsdmmc.a: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/build.make
esp-idf/sdmmc/libsdmmc.a: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/admin/Desktop/RTOS/creative/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX static library libsdmmc.a"
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && $(CMAKE_COMMAND) -P CMakeFiles/__idf_sdmmc.dir/cmake_clean_target.cmake
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_sdmmc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/build: esp-idf/sdmmc/libsdmmc.a

.PHONY : esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/build

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/clean:
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc && $(CMAKE_COMMAND) -P CMakeFiles/__idf_sdmmc.dir/cmake_clean.cmake
.PHONY : esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/clean

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/depend:
	cd /Users/admin/Desktop/RTOS/creative/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/admin/Desktop/RTOS/creative /Users/admin/esp/esp-idf/components/sdmmc /Users/admin/Desktop/RTOS/creative/cmake-build-debug /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc /Users/admin/Desktop/RTOS/creative/cmake-build-debug/esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/depend


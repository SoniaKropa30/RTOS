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
CMAKE_SOURCE_DIR = /Users/admin/Desktop/RTOS/t03

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/admin/Desktop/RTOS/t03/cmake-build-debug

# Include any dependencies generated for this target.
include esp-idf/freertos/CMakeFiles/__idf_freertos.dir/depend.make

# Include the progress variables for this target.
include esp-idf/freertos/CMakeFiles/__idf_freertos.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/port.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/port.c.obj: /Users/admin/esp/esp-idf/components/freertos/port/xtensa/port.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/t03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/port.c.obj"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/port/xtensa/port.c.obj   -c /Users/admin/esp/esp-idf/components/freertos/port/xtensa/port.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/port.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/port/xtensa/port.c.i"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/esp/esp-idf/components/freertos/port/xtensa/port.c > CMakeFiles/__idf_freertos.dir/port/xtensa/port.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/port.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/port/xtensa/port.c.s"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/esp/esp-idf/components/freertos/port/xtensa/port.c -o CMakeFiles/__idf_freertos.dir/port/xtensa/port.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/portasm.S.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/portasm.S.obj: /Users/admin/esp/esp-idf/components/freertos/port/xtensa/portasm.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/t03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building ASM object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/portasm.S.obj"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/__idf_freertos.dir/port/xtensa/portasm.S.obj -c /Users/admin/esp/esp-idf/components/freertos/port/xtensa/portasm.S

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_context.S.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_context.S.obj: /Users/admin/esp/esp-idf/components/freertos/port/xtensa/xtensa_context.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/t03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building ASM object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_context.S.obj"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_context.S.obj -c /Users/admin/esp/esp-idf/components/freertos/port/xtensa/xtensa_context.S

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_init.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_init.c.obj: /Users/admin/esp/esp-idf/components/freertos/port/xtensa/xtensa_init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/t03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_init.c.obj"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_init.c.obj   -c /Users/admin/esp/esp-idf/components/freertos/port/xtensa/xtensa_init.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_init.c.i"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/esp/esp-idf/components/freertos/port/xtensa/xtensa_init.c > CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_init.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_init.c.s"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/esp/esp-idf/components/freertos/port/xtensa/xtensa_init.c -o CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_init.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_overlay_os_hook.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_overlay_os_hook.c.obj: /Users/admin/esp/esp-idf/components/freertos/port/xtensa/xtensa_overlay_os_hook.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/t03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_overlay_os_hook.c.obj"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_overlay_os_hook.c.obj   -c /Users/admin/esp/esp-idf/components/freertos/port/xtensa/xtensa_overlay_os_hook.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_overlay_os_hook.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_overlay_os_hook.c.i"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/esp/esp-idf/components/freertos/port/xtensa/xtensa_overlay_os_hook.c > CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_overlay_os_hook.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_overlay_os_hook.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_overlay_os_hook.c.s"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/esp/esp-idf/components/freertos/port/xtensa/xtensa_overlay_os_hook.c -o CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_overlay_os_hook.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_vector_defaults.S.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_vector_defaults.S.obj: /Users/admin/esp/esp-idf/components/freertos/port/xtensa/xtensa_vector_defaults.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/t03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building ASM object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_vector_defaults.S.obj"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_vector_defaults.S.obj -c /Users/admin/esp/esp-idf/components/freertos/port/xtensa/xtensa_vector_defaults.S

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_vectors.S.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_vectors.S.obj: /Users/admin/esp/esp-idf/components/freertos/port/xtensa/xtensa_vectors.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/t03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building ASM object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_vectors.S.obj"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_vectors.S.obj -c /Users/admin/esp/esp-idf/components/freertos/port/xtensa/xtensa_vectors.S

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/port_common.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/port_common.c.obj: /Users/admin/esp/esp-idf/components/freertos/port/port_common.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/t03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/port_common.c.obj"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/port/port_common.c.obj   -c /Users/admin/esp/esp-idf/components/freertos/port/port_common.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/port_common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/port/port_common.c.i"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/esp/esp-idf/components/freertos/port/port_common.c > CMakeFiles/__idf_freertos.dir/port/port_common.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/port_common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/port/port_common.c.s"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/esp/esp-idf/components/freertos/port/port_common.c -o CMakeFiles/__idf_freertos.dir/port/port_common.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/croutine.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/croutine.c.obj: /Users/admin/esp/esp-idf/components/freertos/croutine.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/t03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/croutine.c.obj"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/croutine.c.obj   -c /Users/admin/esp/esp-idf/components/freertos/croutine.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/croutine.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/croutine.c.i"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/esp/esp-idf/components/freertos/croutine.c > CMakeFiles/__idf_freertos.dir/croutine.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/croutine.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/croutine.c.s"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/esp/esp-idf/components/freertos/croutine.c -o CMakeFiles/__idf_freertos.dir/croutine.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/event_groups.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/event_groups.c.obj: /Users/admin/esp/esp-idf/components/freertos/event_groups.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/t03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/event_groups.c.obj"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/event_groups.c.obj   -c /Users/admin/esp/esp-idf/components/freertos/event_groups.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/event_groups.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/event_groups.c.i"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/esp/esp-idf/components/freertos/event_groups.c > CMakeFiles/__idf_freertos.dir/event_groups.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/event_groups.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/event_groups.c.s"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/esp/esp-idf/components/freertos/event_groups.c -o CMakeFiles/__idf_freertos.dir/event_groups.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/list.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/list.c.obj: /Users/admin/esp/esp-idf/components/freertos/list.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/t03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/list.c.obj"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/list.c.obj   -c /Users/admin/esp/esp-idf/components/freertos/list.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/list.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/list.c.i"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/esp/esp-idf/components/freertos/list.c > CMakeFiles/__idf_freertos.dir/list.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/list.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/list.c.s"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/esp/esp-idf/components/freertos/list.c -o CMakeFiles/__idf_freertos.dir/list.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/queue.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/queue.c.obj: /Users/admin/esp/esp-idf/components/freertos/queue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/t03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/queue.c.obj"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/queue.c.obj   -c /Users/admin/esp/esp-idf/components/freertos/queue.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/queue.c.i"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/esp/esp-idf/components/freertos/queue.c > CMakeFiles/__idf_freertos.dir/queue.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/queue.c.s"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/esp/esp-idf/components/freertos/queue.c -o CMakeFiles/__idf_freertos.dir/queue.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/tasks.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/tasks.c.obj: /Users/admin/esp/esp-idf/components/freertos/tasks.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/t03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/tasks.c.obj"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/tasks.c.obj   -c /Users/admin/esp/esp-idf/components/freertos/tasks.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/tasks.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/tasks.c.i"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/esp/esp-idf/components/freertos/tasks.c > CMakeFiles/__idf_freertos.dir/tasks.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/tasks.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/tasks.c.s"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/esp/esp-idf/components/freertos/tasks.c -o CMakeFiles/__idf_freertos.dir/tasks.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/timers.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/timers.c.obj: /Users/admin/esp/esp-idf/components/freertos/timers.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/t03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/timers.c.obj"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/timers.c.obj   -c /Users/admin/esp/esp-idf/components/freertos/timers.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/timers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/timers.c.i"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/esp/esp-idf/components/freertos/timers.c > CMakeFiles/__idf_freertos.dir/timers.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/timers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/timers.c.s"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/esp/esp-idf/components/freertos/timers.c -o CMakeFiles/__idf_freertos.dir/timers.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/stream_buffer.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/stream_buffer.c.obj: /Users/admin/esp/esp-idf/components/freertos/stream_buffer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/t03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/stream_buffer.c.obj"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/stream_buffer.c.obj   -c /Users/admin/esp/esp-idf/components/freertos/stream_buffer.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/stream_buffer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/stream_buffer.c.i"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/esp/esp-idf/components/freertos/stream_buffer.c > CMakeFiles/__idf_freertos.dir/stream_buffer.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/stream_buffer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/stream_buffer.c.s"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D_ESP_FREERTOS_INTERNAL $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/esp/esp-idf/components/freertos/stream_buffer.c -o CMakeFiles/__idf_freertos.dir/stream_buffer.c.s

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.obj: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/flags.make
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.obj: /Users/admin/esp/esp-idf/components/freertos/FreeRTOS-openocd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/t03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object esp-idf/freertos/CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.obj"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.obj   -c /Users/admin/esp/esp-idf/components/freertos/FreeRTOS-openocd.c

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.i"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/esp/esp-idf/components/freertos/FreeRTOS-openocd.c > CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.i

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.s"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/esp/esp-idf/components/freertos/FreeRTOS-openocd.c -o CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.s

# Object files for target __idf_freertos
__idf_freertos_OBJECTS = \
"CMakeFiles/__idf_freertos.dir/port/xtensa/port.c.obj" \
"CMakeFiles/__idf_freertos.dir/port/xtensa/portasm.S.obj" \
"CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_context.S.obj" \
"CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_init.c.obj" \
"CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_overlay_os_hook.c.obj" \
"CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_vector_defaults.S.obj" \
"CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_vectors.S.obj" \
"CMakeFiles/__idf_freertos.dir/port/port_common.c.obj" \
"CMakeFiles/__idf_freertos.dir/croutine.c.obj" \
"CMakeFiles/__idf_freertos.dir/event_groups.c.obj" \
"CMakeFiles/__idf_freertos.dir/list.c.obj" \
"CMakeFiles/__idf_freertos.dir/queue.c.obj" \
"CMakeFiles/__idf_freertos.dir/tasks.c.obj" \
"CMakeFiles/__idf_freertos.dir/timers.c.obj" \
"CMakeFiles/__idf_freertos.dir/stream_buffer.c.obj" \
"CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.obj"

# External object files for target __idf_freertos
__idf_freertos_EXTERNAL_OBJECTS =

esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/port.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/portasm.S.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_context.S.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_init.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_overlay_os_hook.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_vector_defaults.S.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/xtensa/xtensa_vectors.S.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/port/port_common.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/croutine.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/event_groups.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/list.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/queue.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/tasks.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/timers.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/stream_buffer.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/FreeRTOS-openocd.c.obj
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/build.make
esp-idf/freertos/libfreertos.a: esp-idf/freertos/CMakeFiles/__idf_freertos.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/admin/Desktop/RTOS/t03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking CXX static library libfreertos.a"
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && $(CMAKE_COMMAND) -P CMakeFiles/__idf_freertos.dir/cmake_clean_target.cmake
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_freertos.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/freertos/CMakeFiles/__idf_freertos.dir/build: esp-idf/freertos/libfreertos.a

.PHONY : esp-idf/freertos/CMakeFiles/__idf_freertos.dir/build

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/clean:
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos && $(CMAKE_COMMAND) -P CMakeFiles/__idf_freertos.dir/cmake_clean.cmake
.PHONY : esp-idf/freertos/CMakeFiles/__idf_freertos.dir/clean

esp-idf/freertos/CMakeFiles/__idf_freertos.dir/depend:
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/admin/Desktop/RTOS/t03 /Users/admin/esp/esp-idf/components/freertos /Users/admin/Desktop/RTOS/t03/cmake-build-debug /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/freertos/CMakeFiles/__idf_freertos.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/freertos/CMakeFiles/__idf_freertos.dir/depend


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

# Utility rule file for partition_table-flash.

# Include the progress variables for this target.
include esp-idf/partition_table/CMakeFiles/partition_table-flash.dir/progress.make

esp-idf/partition_table/CMakeFiles/partition_table-flash:
	cd /Users/admin/esp/esp-idf/components/partition_table && /private/var/folders/mf/28hr4l3s3xg27ywb75gm28fm0000gn/T/AppTranslocation/1D845B14-2E56-4F8C-9DBC-F1C575DCE8A4/d/CLion.app/Contents/bin/cmake/mac/bin/cmake -D IDF_PATH="/Users/admin/esp/esp-idf" -D ESPTOOLPY="/Users/admin/.espressif/python_env/idf4.3_py2.7_env/bin/python /Users/admin/esp/esp-idf/components/esptool_py/esptool/esptool.py --chip esp32" -D ESPTOOL_ARGS="--before=default_reset --after=hard_reset write_flash @partition_table-flash_args" -D WORKING_DIRECTORY="/Users/admin/Desktop/RTOS/t03/cmake-build-debug" -P /Users/admin/esp/esp-idf/components/esptool_py/run_esptool.cmake

partition_table-flash: esp-idf/partition_table/CMakeFiles/partition_table-flash
partition_table-flash: esp-idf/partition_table/CMakeFiles/partition_table-flash.dir/build.make

.PHONY : partition_table-flash

# Rule to build all files generated by this target.
esp-idf/partition_table/CMakeFiles/partition_table-flash.dir/build: partition_table-flash

.PHONY : esp-idf/partition_table/CMakeFiles/partition_table-flash.dir/build

esp-idf/partition_table/CMakeFiles/partition_table-flash.dir/clean:
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/partition_table && $(CMAKE_COMMAND) -P CMakeFiles/partition_table-flash.dir/cmake_clean.cmake
.PHONY : esp-idf/partition_table/CMakeFiles/partition_table-flash.dir/clean

esp-idf/partition_table/CMakeFiles/partition_table-flash.dir/depend:
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/admin/Desktop/RTOS/t03 /Users/admin/esp/esp-idf/components/partition_table /Users/admin/Desktop/RTOS/t03/cmake-build-debug /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/partition_table /Users/admin/Desktop/RTOS/t03/cmake-build-debug/esp-idf/partition_table/CMakeFiles/partition_table-flash.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/partition_table/CMakeFiles/partition_table-flash.dir/depend


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

# Utility rule file for confserver.

# Include the progress variables for this target.
include CMakeFiles/confserver.dir/progress.make

CMakeFiles/confserver:
	/Users/admin/.espressif/python_env/idf4.3_py2.7_env/bin/python /Users/admin/esp/esp-idf/tools/kconfig_new/prepare_kconfig_files.py --env-file /Users/admin/Desktop/RTOS/t04/cmake-build-debug/config.env
	/Users/admin/.espressif/python_env/idf4.3_py2.7_env/bin/python /Users/admin/esp/esp-idf/tools/kconfig_new/confserver.py --env-file /Users/admin/Desktop/RTOS/t04/cmake-build-debug/config.env --kconfig /Users/admin/esp/esp-idf/Kconfig --sdkconfig-rename /Users/admin/esp/esp-idf/sdkconfig.rename --config /Users/admin/Desktop/RTOS/t04/sdkconfig

confserver: CMakeFiles/confserver
confserver: CMakeFiles/confserver.dir/build.make

.PHONY : confserver

# Rule to build all files generated by this target.
CMakeFiles/confserver.dir/build: confserver

.PHONY : CMakeFiles/confserver.dir/build

CMakeFiles/confserver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/confserver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/confserver.dir/clean

CMakeFiles/confserver.dir/depend:
	cd /Users/admin/Desktop/RTOS/t04/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/admin/Desktop/RTOS/t04 /Users/admin/Desktop/RTOS/t04 /Users/admin/Desktop/RTOS/t04/cmake-build-debug /Users/admin/Desktop/RTOS/t04/cmake-build-debug /Users/admin/Desktop/RTOS/t04/cmake-build-debug/CMakeFiles/confserver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/confserver.dir/depend


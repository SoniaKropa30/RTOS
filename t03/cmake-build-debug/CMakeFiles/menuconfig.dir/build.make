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

# Utility rule file for menuconfig.

# Include the progress variables for this target.
include CMakeFiles/menuconfig.dir/progress.make

CMakeFiles/menuconfig:
	/Users/admin/.espressif/python_env/idf4.3_py2.7_env/bin/python /Users/admin/esp/esp-idf/tools/kconfig_new/prepare_kconfig_files.py --env-file /Users/admin/Desktop/RTOS/t03/cmake-build-debug/config.env
	/Users/admin/.espressif/python_env/idf4.3_py2.7_env/bin/python /Users/admin/esp/esp-idf/tools/kconfig_new/confgen.py --kconfig /Users/admin/esp/esp-idf/Kconfig --sdkconfig-rename /Users/admin/esp/esp-idf/sdkconfig.rename --config /Users/admin/Desktop/RTOS/t03/sdkconfig --env-file /Users/admin/Desktop/RTOS/t03/cmake-build-debug/config.env --env IDF_TARGET=esp32 --env IDF_ENV_FPGA= --dont-write-deprecated --output config /Users/admin/Desktop/RTOS/t03/sdkconfig
	/Users/admin/.espressif/python_env/idf4.3_py2.7_env/bin/python /Users/admin/esp/esp-idf/tools/check_term.py
	/private/var/folders/mf/28hr4l3s3xg27ywb75gm28fm0000gn/T/AppTranslocation/1D845B14-2E56-4F8C-9DBC-F1C575DCE8A4/d/CLion.app/Contents/bin/cmake/mac/bin/cmake -E env COMPONENT_KCONFIGS_SOURCE_FILE=/Users/admin/Desktop/RTOS/t03/cmake-build-debug/kconfigs.in COMPONENT_KCONFIGS_PROJBUILD_SOURCE_FILE=/Users/admin/Desktop/RTOS/t03/cmake-build-debug/kconfigs_projbuild.in IDF_CMAKE=y KCONFIG_CONFIG=/Users/admin/Desktop/RTOS/t03/sdkconfig IDF_TARGET=esp32 IDF_ENV_FPGA= /Users/admin/.espressif/python_env/idf4.3_py2.7_env/bin/python /Users/admin/esp/esp-idf/tools/kconfig_new/menuconfig.py /Users/admin/esp/esp-idf/Kconfig
	/Users/admin/.espressif/python_env/idf4.3_py2.7_env/bin/python /Users/admin/esp/esp-idf/tools/kconfig_new/confgen.py --kconfig /Users/admin/esp/esp-idf/Kconfig --sdkconfig-rename /Users/admin/esp/esp-idf/sdkconfig.rename --config /Users/admin/Desktop/RTOS/t03/sdkconfig --env-file /Users/admin/Desktop/RTOS/t03/cmake-build-debug/config.env --env IDF_TARGET=esp32 --env IDF_ENV_FPGA= --output config /Users/admin/Desktop/RTOS/t03/sdkconfig

menuconfig: CMakeFiles/menuconfig
menuconfig: CMakeFiles/menuconfig.dir/build.make

.PHONY : menuconfig

# Rule to build all files generated by this target.
CMakeFiles/menuconfig.dir/build: menuconfig

.PHONY : CMakeFiles/menuconfig.dir/build

CMakeFiles/menuconfig.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/menuconfig.dir/cmake_clean.cmake
.PHONY : CMakeFiles/menuconfig.dir/clean

CMakeFiles/menuconfig.dir/depend:
	cd /Users/admin/Desktop/RTOS/t03/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/admin/Desktop/RTOS/t03 /Users/admin/Desktop/RTOS/t03 /Users/admin/Desktop/RTOS/t03/cmake-build-debug /Users/admin/Desktop/RTOS/t03/cmake-build-debug /Users/admin/Desktop/RTOS/t03/cmake-build-debug/CMakeFiles/menuconfig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/menuconfig.dir/depend


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
include CMakeFiles/noise.elf.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/noise.elf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/noise.elf.dir/flags.make

project_elf_src_esp32.c:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/admin/Desktop/RTOS/t04/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating project_elf_src_esp32.c"
	/private/var/folders/mf/28hr4l3s3xg27ywb75gm28fm0000gn/T/AppTranslocation/1D845B14-2E56-4F8C-9DBC-F1C575DCE8A4/d/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/admin/Desktop/RTOS/t04/cmake-build-debug/project_elf_src_esp32.c

CMakeFiles/noise.elf.dir/project_elf_src_esp32.c.obj: CMakeFiles/noise.elf.dir/flags.make
CMakeFiles/noise.elf.dir/project_elf_src_esp32.c.obj: project_elf_src_esp32.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/Desktop/RTOS/t04/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/noise.elf.dir/project_elf_src_esp32.c.obj"
	/Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/noise.elf.dir/project_elf_src_esp32.c.obj   -c /Users/admin/Desktop/RTOS/t04/cmake-build-debug/project_elf_src_esp32.c

CMakeFiles/noise.elf.dir/project_elf_src_esp32.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/noise.elf.dir/project_elf_src_esp32.c.i"
	/Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/admin/Desktop/RTOS/t04/cmake-build-debug/project_elf_src_esp32.c > CMakeFiles/noise.elf.dir/project_elf_src_esp32.c.i

CMakeFiles/noise.elf.dir/project_elf_src_esp32.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/noise.elf.dir/project_elf_src_esp32.c.s"
	/Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/admin/Desktop/RTOS/t04/cmake-build-debug/project_elf_src_esp32.c -o CMakeFiles/noise.elf.dir/project_elf_src_esp32.c.s

# Object files for target noise.elf
noise_elf_OBJECTS = \
"CMakeFiles/noise.elf.dir/project_elf_src_esp32.c.obj"

# External object files for target noise.elf
noise_elf_EXTERNAL_OBJECTS =

noise.elf: CMakeFiles/noise.elf.dir/project_elf_src_esp32.c.obj
noise.elf: CMakeFiles/noise.elf.dir/build.make
noise.elf: esp-idf/esp_pm/libesp_pm.a
noise.elf: esp-idf/mbedtls/libmbedtls.a
noise.elf: esp-idf/efuse/libefuse.a
noise.elf: esp-idf/bootloader_support/libbootloader_support.a
noise.elf: esp-idf/app_update/libapp_update.a
noise.elf: esp-idf/esp_ipc/libesp_ipc.a
noise.elf: esp-idf/spi_flash/libspi_flash.a
noise.elf: esp-idf/nvs_flash/libnvs_flash.a
noise.elf: esp-idf/pthread/libpthread.a
noise.elf: esp-idf/esp_system/libesp_system.a
noise.elf: esp-idf/esp_rom/libesp_rom.a
noise.elf: esp-idf/hal/libhal.a
noise.elf: esp-idf/vfs/libvfs.a
noise.elf: esp-idf/esp_eth/libesp_eth.a
noise.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
noise.elf: esp-idf/esp_netif/libesp_netif.a
noise.elf: esp-idf/esp_event/libesp_event.a
noise.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
noise.elf: esp-idf/esp_wifi/libesp_wifi.a
noise.elf: esp-idf/lwip/liblwip.a
noise.elf: esp-idf/log/liblog.a
noise.elf: esp-idf/heap/libheap.a
noise.elf: esp-idf/soc/libsoc.a
noise.elf: esp-idf/esp_hw_support/libesp_hw_support.a
noise.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
noise.elf: esp-idf/driver/libdriver.a
noise.elf: esp-idf/xtensa/libxtensa.a
noise.elf: esp-idf/espcoredump/libespcoredump.a
noise.elf: esp-idf/perfmon/libperfmon.a
noise.elf: esp-idf/esp32/libesp32.a
noise.elf: esp-idf/esp_common/libesp_common.a
noise.elf: esp-idf/esp_timer/libesp_timer.a
noise.elf: esp-idf/freertos/libfreertos.a
noise.elf: esp-idf/newlib/libnewlib.a
noise.elf: esp-idf/cxx/libcxx.a
noise.elf: esp-idf/app_trace/libapp_trace.a
noise.elf: esp-idf/asio/libasio.a
noise.elf: esp-idf/cbor/libcbor.a
noise.elf: esp-idf/unity/libunity.a
noise.elf: esp-idf/cmock/libcmock.a
noise.elf: esp-idf/coap/libcoap.a
noise.elf: esp-idf/console/libconsole.a
noise.elf: esp-idf/nghttp/libnghttp.a
noise.elf: esp-idf/esp-tls/libesp-tls.a
noise.elf: esp-idf/esp_adc_cal/libesp_adc_cal.a
noise.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
noise.elf: esp-idf/esp_hid/libesp_hid.a
noise.elf: esp-idf/tcp_transport/libtcp_transport.a
noise.elf: esp-idf/esp_http_client/libesp_http_client.a
noise.elf: esp-idf/esp_http_server/libesp_http_server.a
noise.elf: esp-idf/esp_https_ota/libesp_https_ota.a
noise.elf: esp-idf/protobuf-c/libprotobuf-c.a
noise.elf: esp-idf/protocomm/libprotocomm.a
noise.elf: esp-idf/mdns/libmdns.a
noise.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
noise.elf: esp-idf/sdmmc/libsdmmc.a
noise.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
noise.elf: esp-idf/esp_websocket_client/libesp_websocket_client.a
noise.elf: esp-idf/expat/libexpat.a
noise.elf: esp-idf/wear_levelling/libwear_levelling.a
noise.elf: esp-idf/fatfs/libfatfs.a
noise.elf: esp-idf/freemodbus/libfreemodbus.a
noise.elf: esp-idf/jsmn/libjsmn.a
noise.elf: esp-idf/json/libjson.a
noise.elf: esp-idf/libsodium/liblibsodium.a
noise.elf: esp-idf/mqtt/libmqtt.a
noise.elf: esp-idf/openssl/libopenssl.a
noise.elf: esp-idf/spiffs/libspiffs.a
noise.elf: esp-idf/ulp/libulp.a
noise.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
noise.elf: esp-idf/make_noise/libmake_noise.a
noise.elf: esp-idf/mx_function/libmx_function.a
noise.elf: esp-idf/oled/liboled.a
noise.elf: esp-idf/timer/libtimer.a
noise.elf: esp-idf/main/libmain.a
noise.elf: esp-idf/unity/libunity.a
noise.elf: esp-idf/wear_levelling/libwear_levelling.a
noise.elf: esp-idf/protocomm/libprotocomm.a
noise.elf: esp-idf/protobuf-c/libprotobuf-c.a
noise.elf: esp-idf/mdns/libmdns.a
noise.elf: esp-idf/console/libconsole.a
noise.elf: esp-idf/json/libjson.a
noise.elf: esp-idf/oled/liboled.a
noise.elf: esp-idf/make_noise/libmake_noise.a
noise.elf: esp-idf/mx_function/libmx_function.a
noise.elf: esp-idf/esp_pm/libesp_pm.a
noise.elf: esp-idf/mbedtls/libmbedtls.a
noise.elf: esp-idf/efuse/libefuse.a
noise.elf: esp-idf/bootloader_support/libbootloader_support.a
noise.elf: esp-idf/app_update/libapp_update.a
noise.elf: esp-idf/esp_ipc/libesp_ipc.a
noise.elf: esp-idf/spi_flash/libspi_flash.a
noise.elf: esp-idf/nvs_flash/libnvs_flash.a
noise.elf: esp-idf/pthread/libpthread.a
noise.elf: esp-idf/esp_system/libesp_system.a
noise.elf: esp-idf/esp_rom/libesp_rom.a
noise.elf: esp-idf/hal/libhal.a
noise.elf: esp-idf/vfs/libvfs.a
noise.elf: esp-idf/esp_eth/libesp_eth.a
noise.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
noise.elf: esp-idf/esp_netif/libesp_netif.a
noise.elf: esp-idf/esp_event/libesp_event.a
noise.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
noise.elf: esp-idf/esp_wifi/libesp_wifi.a
noise.elf: esp-idf/lwip/liblwip.a
noise.elf: esp-idf/log/liblog.a
noise.elf: esp-idf/heap/libheap.a
noise.elf: esp-idf/soc/libsoc.a
noise.elf: esp-idf/esp_hw_support/libesp_hw_support.a
noise.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
noise.elf: esp-idf/driver/libdriver.a
noise.elf: esp-idf/xtensa/libxtensa.a
noise.elf: esp-idf/espcoredump/libespcoredump.a
noise.elf: esp-idf/perfmon/libperfmon.a
noise.elf: esp-idf/esp32/libesp32.a
noise.elf: esp-idf/esp_common/libesp_common.a
noise.elf: esp-idf/esp_timer/libesp_timer.a
noise.elf: esp-idf/freertos/libfreertos.a
noise.elf: esp-idf/newlib/libnewlib.a
noise.elf: esp-idf/cxx/libcxx.a
noise.elf: esp-idf/app_trace/libapp_trace.a
noise.elf: esp-idf/nghttp/libnghttp.a
noise.elf: esp-idf/esp-tls/libesp-tls.a
noise.elf: esp-idf/tcp_transport/libtcp_transport.a
noise.elf: esp-idf/esp_http_client/libesp_http_client.a
noise.elf: esp-idf/esp_http_server/libesp_http_server.a
noise.elf: esp-idf/esp_https_ota/libesp_https_ota.a
noise.elf: esp-idf/sdmmc/libsdmmc.a
noise.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
noise.elf: esp-idf/ulp/libulp.a
noise.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
noise.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
noise.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
noise.elf: esp-idf/esp_pm/libesp_pm.a
noise.elf: esp-idf/mbedtls/libmbedtls.a
noise.elf: esp-idf/efuse/libefuse.a
noise.elf: esp-idf/bootloader_support/libbootloader_support.a
noise.elf: esp-idf/app_update/libapp_update.a
noise.elf: esp-idf/esp_ipc/libesp_ipc.a
noise.elf: esp-idf/spi_flash/libspi_flash.a
noise.elf: esp-idf/nvs_flash/libnvs_flash.a
noise.elf: esp-idf/pthread/libpthread.a
noise.elf: esp-idf/esp_system/libesp_system.a
noise.elf: esp-idf/esp_rom/libesp_rom.a
noise.elf: esp-idf/hal/libhal.a
noise.elf: esp-idf/vfs/libvfs.a
noise.elf: esp-idf/esp_eth/libesp_eth.a
noise.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
noise.elf: esp-idf/esp_netif/libesp_netif.a
noise.elf: esp-idf/esp_event/libesp_event.a
noise.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
noise.elf: esp-idf/esp_wifi/libesp_wifi.a
noise.elf: esp-idf/lwip/liblwip.a
noise.elf: esp-idf/log/liblog.a
noise.elf: esp-idf/heap/libheap.a
noise.elf: esp-idf/soc/libsoc.a
noise.elf: esp-idf/esp_hw_support/libesp_hw_support.a
noise.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
noise.elf: esp-idf/driver/libdriver.a
noise.elf: esp-idf/xtensa/libxtensa.a
noise.elf: esp-idf/espcoredump/libespcoredump.a
noise.elf: esp-idf/perfmon/libperfmon.a
noise.elf: esp-idf/esp32/libesp32.a
noise.elf: esp-idf/esp_common/libesp_common.a
noise.elf: esp-idf/esp_timer/libesp_timer.a
noise.elf: esp-idf/freertos/libfreertos.a
noise.elf: esp-idf/newlib/libnewlib.a
noise.elf: esp-idf/cxx/libcxx.a
noise.elf: esp-idf/app_trace/libapp_trace.a
noise.elf: esp-idf/nghttp/libnghttp.a
noise.elf: esp-idf/esp-tls/libesp-tls.a
noise.elf: esp-idf/tcp_transport/libtcp_transport.a
noise.elf: esp-idf/esp_http_client/libesp_http_client.a
noise.elf: esp-idf/esp_http_server/libesp_http_server.a
noise.elf: esp-idf/esp_https_ota/libesp_https_ota.a
noise.elf: esp-idf/sdmmc/libsdmmc.a
noise.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
noise.elf: esp-idf/ulp/libulp.a
noise.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
noise.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
noise.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
noise.elf: esp-idf/esp_pm/libesp_pm.a
noise.elf: esp-idf/mbedtls/libmbedtls.a
noise.elf: esp-idf/efuse/libefuse.a
noise.elf: esp-idf/bootloader_support/libbootloader_support.a
noise.elf: esp-idf/app_update/libapp_update.a
noise.elf: esp-idf/esp_ipc/libesp_ipc.a
noise.elf: esp-idf/spi_flash/libspi_flash.a
noise.elf: esp-idf/nvs_flash/libnvs_flash.a
noise.elf: esp-idf/pthread/libpthread.a
noise.elf: esp-idf/esp_system/libesp_system.a
noise.elf: esp-idf/esp_rom/libesp_rom.a
noise.elf: esp-idf/hal/libhal.a
noise.elf: esp-idf/vfs/libvfs.a
noise.elf: esp-idf/esp_eth/libesp_eth.a
noise.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
noise.elf: esp-idf/esp_netif/libesp_netif.a
noise.elf: esp-idf/esp_event/libesp_event.a
noise.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
noise.elf: esp-idf/esp_wifi/libesp_wifi.a
noise.elf: esp-idf/lwip/liblwip.a
noise.elf: esp-idf/log/liblog.a
noise.elf: esp-idf/heap/libheap.a
noise.elf: esp-idf/soc/libsoc.a
noise.elf: esp-idf/esp_hw_support/libesp_hw_support.a
noise.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
noise.elf: esp-idf/driver/libdriver.a
noise.elf: esp-idf/xtensa/libxtensa.a
noise.elf: esp-idf/espcoredump/libespcoredump.a
noise.elf: esp-idf/perfmon/libperfmon.a
noise.elf: esp-idf/esp32/libesp32.a
noise.elf: esp-idf/esp_common/libesp_common.a
noise.elf: esp-idf/esp_timer/libesp_timer.a
noise.elf: esp-idf/freertos/libfreertos.a
noise.elf: esp-idf/newlib/libnewlib.a
noise.elf: esp-idf/cxx/libcxx.a
noise.elf: esp-idf/app_trace/libapp_trace.a
noise.elf: esp-idf/nghttp/libnghttp.a
noise.elf: esp-idf/esp-tls/libesp-tls.a
noise.elf: esp-idf/tcp_transport/libtcp_transport.a
noise.elf: esp-idf/esp_http_client/libesp_http_client.a
noise.elf: esp-idf/esp_http_server/libesp_http_server.a
noise.elf: esp-idf/esp_https_ota/libesp_https_ota.a
noise.elf: esp-idf/sdmmc/libsdmmc.a
noise.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
noise.elf: esp-idf/ulp/libulp.a
noise.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
noise.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
noise.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
noise.elf: esp-idf/esp_pm/libesp_pm.a
noise.elf: esp-idf/mbedtls/libmbedtls.a
noise.elf: esp-idf/efuse/libefuse.a
noise.elf: esp-idf/bootloader_support/libbootloader_support.a
noise.elf: esp-idf/app_update/libapp_update.a
noise.elf: esp-idf/esp_ipc/libesp_ipc.a
noise.elf: esp-idf/spi_flash/libspi_flash.a
noise.elf: esp-idf/nvs_flash/libnvs_flash.a
noise.elf: esp-idf/pthread/libpthread.a
noise.elf: esp-idf/esp_system/libesp_system.a
noise.elf: esp-idf/esp_rom/libesp_rom.a
noise.elf: esp-idf/hal/libhal.a
noise.elf: esp-idf/vfs/libvfs.a
noise.elf: esp-idf/esp_eth/libesp_eth.a
noise.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
noise.elf: esp-idf/esp_netif/libesp_netif.a
noise.elf: esp-idf/esp_event/libesp_event.a
noise.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
noise.elf: esp-idf/esp_wifi/libesp_wifi.a
noise.elf: esp-idf/lwip/liblwip.a
noise.elf: esp-idf/log/liblog.a
noise.elf: esp-idf/heap/libheap.a
noise.elf: esp-idf/soc/libsoc.a
noise.elf: esp-idf/esp_hw_support/libesp_hw_support.a
noise.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
noise.elf: esp-idf/driver/libdriver.a
noise.elf: esp-idf/xtensa/libxtensa.a
noise.elf: esp-idf/espcoredump/libespcoredump.a
noise.elf: esp-idf/perfmon/libperfmon.a
noise.elf: esp-idf/esp32/libesp32.a
noise.elf: esp-idf/esp_common/libesp_common.a
noise.elf: esp-idf/esp_timer/libesp_timer.a
noise.elf: esp-idf/freertos/libfreertos.a
noise.elf: esp-idf/newlib/libnewlib.a
noise.elf: esp-idf/cxx/libcxx.a
noise.elf: esp-idf/app_trace/libapp_trace.a
noise.elf: esp-idf/nghttp/libnghttp.a
noise.elf: esp-idf/esp-tls/libesp-tls.a
noise.elf: esp-idf/tcp_transport/libtcp_transport.a
noise.elf: esp-idf/esp_http_client/libesp_http_client.a
noise.elf: esp-idf/esp_http_server/libesp_http_server.a
noise.elf: esp-idf/esp_https_ota/libesp_https_ota.a
noise.elf: esp-idf/sdmmc/libsdmmc.a
noise.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
noise.elf: esp-idf/ulp/libulp.a
noise.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
noise.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
noise.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
noise.elf: /Users/admin/esp/esp-idf/components/xtensa/esp32/libxt_hal.a
noise.elf: esp-idf/newlib/libnewlib.a
noise.elf: esp-idf/pthread/libpthread.a
noise.elf: esp-idf/app_trace/libapp_trace.a
noise.elf: esp-idf/app_trace/libapp_trace.a
noise.elf: /Users/admin/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-time.ld
noise.elf: /Users/admin/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.api.ld
noise.elf: /Users/admin/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.ld
noise.elf: /Users/admin/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.libgcc.ld
noise.elf: /Users/admin/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-data.ld
noise.elf: /Users/admin/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.syscalls.ld
noise.elf: /Users/admin/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-funcs.ld
noise.elf: esp-idf/esp32/esp32_out.ld
noise.elf: esp-idf/esp32/ld/esp32.project.ld
noise.elf: /Users/admin/esp/esp-idf/components/esp32/ld/esp32.peripherals.ld
noise.elf: CMakeFiles/noise.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/admin/Desktop/RTOS/t04/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable noise.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/noise.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/noise.elf.dir/build: noise.elf

.PHONY : CMakeFiles/noise.elf.dir/build

CMakeFiles/noise.elf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/noise.elf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/noise.elf.dir/clean

CMakeFiles/noise.elf.dir/depend: project_elf_src_esp32.c
	cd /Users/admin/Desktop/RTOS/t04/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/admin/Desktop/RTOS/t04 /Users/admin/Desktop/RTOS/t04 /Users/admin/Desktop/RTOS/t04/cmake-build-debug /Users/admin/Desktop/RTOS/t04/cmake-build-debug /Users/admin/Desktop/RTOS/t04/cmake-build-debug/CMakeFiles/noise.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/noise.elf.dir/depend

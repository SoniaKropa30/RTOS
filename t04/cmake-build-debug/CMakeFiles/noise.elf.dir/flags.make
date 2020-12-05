# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# compile C with /Users/admin/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc
C_FLAGS = -mlongcalls -Wno-frame-address -g  

C_DEFINES = -DHAVE_CONFIG_H -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DUNITY_INCLUDE_CONFIG_H -DWITH_POSIX

C_INCLUDES = -I/Users/admin/esp/esp-idf/components/esp_pm/include -I/Users/admin/Desktop/RTOS/t04/cmake-build-debug/config -I/Users/admin/esp/esp-idf/components/newlib/platform_include -I/Users/admin/esp/esp-idf/components/freertos/include -I/Users/admin/esp/esp-idf/components/freertos/port/xtensa/include -I/Users/admin/esp/esp-idf/components/esp_hw_support/include -I/Users/admin/esp/esp-idf/components/esp_hw_support/port/esp32/. -I/Users/admin/esp/esp-idf/components/heap/include -I/Users/admin/esp/esp-idf/components/log/include -I/Users/admin/esp/esp-idf/components/lwip/include/apps -I/Users/admin/esp/esp-idf/components/lwip/include/apps/sntp -I/Users/admin/esp/esp-idf/components/lwip/lwip/src/include -I/Users/admin/esp/esp-idf/components/lwip/port/esp32/include -I/Users/admin/esp/esp-idf/components/lwip/port/esp32/include/arch -I/Users/admin/esp/esp-idf/components/lwip/port/esp32/tcp_isn -I/Users/admin/esp/esp-idf/components/soc/include -I/Users/admin/esp/esp-idf/components/soc/esp32/. -I/Users/admin/esp/esp-idf/components/soc/esp32/include -I/Users/admin/esp/esp-idf/components/hal/esp32/include -I/Users/admin/esp/esp-idf/components/hal/include -I/Users/admin/esp/esp-idf/components/esp_rom/include -I/Users/admin/esp/esp-idf/components/esp_common/include -I/Users/admin/esp/esp-idf/components/esp_system/include -I/Users/admin/esp/esp-idf/components/esp32/include -I/Users/admin/esp/esp-idf/components/driver/include -I/Users/admin/esp/esp-idf/components/driver/esp32/include -I/Users/admin/esp/esp-idf/components/esp_ringbuf/include -I/Users/admin/esp/esp-idf/components/efuse/include -I/Users/admin/esp/esp-idf/components/efuse/esp32/include -I/Users/admin/esp/esp-idf/components/xtensa/include -I/Users/admin/esp/esp-idf/components/xtensa/esp32/include -I/Users/admin/esp/esp-idf/components/espcoredump/include -I/Users/admin/esp/esp-idf/components/esp_timer/include -I/Users/admin/esp/esp-idf/components/esp_ipc/include -I/Users/admin/esp/esp-idf/components/vfs/include -I/Users/admin/esp/esp-idf/components/esp_wifi/include -I/Users/admin/esp/esp-idf/components/esp_wifi/esp32/include -I/Users/admin/esp/esp-idf/components/esp_event/include -I/Users/admin/esp/esp-idf/components/esp_netif/include -I/Users/admin/esp/esp-idf/components/esp_eth/include -I/Users/admin/esp/esp-idf/components/tcpip_adapter/include -I/Users/admin/esp/esp-idf/components/app_trace/include -I/Users/admin/esp/esp-idf/components/mbedtls/port/include -I/Users/admin/esp/esp-idf/components/mbedtls/mbedtls/include -I/Users/admin/esp/esp-idf/components/mbedtls/esp_crt_bundle/include -I/Users/admin/esp/esp-idf/components/bootloader_support/include -I/Users/admin/esp/esp-idf/components/app_update/include -I/Users/admin/esp/esp-idf/components/spi_flash/include -I/Users/admin/esp/esp-idf/components/nvs_flash/include -I/Users/admin/esp/esp-idf/components/pthread/include -I/Users/admin/esp/esp-idf/components/wpa_supplicant/include -I/Users/admin/esp/esp-idf/components/wpa_supplicant/port/include -I/Users/admin/esp/esp-idf/components/wpa_supplicant/include/esp_supplicant -I/Users/admin/esp/esp-idf/components/perfmon/include -I/Users/admin/esp/esp-idf/components/asio/asio/asio/include -I/Users/admin/esp/esp-idf/components/asio/port/include -I/Users/admin/esp/esp-idf/components/cbor/port/include -I/Users/admin/esp/esp-idf/components/unity/include -I/Users/admin/esp/esp-idf/components/unity/unity/src -I/Users/admin/esp/esp-idf/components/unity/unity/extras/fixture/src -I/Users/admin/esp/esp-idf/components/cmock/CMock/src -I/Users/admin/esp/esp-idf/components/coap/port/include -I/Users/admin/esp/esp-idf/components/coap/port/include/coap -I/Users/admin/esp/esp-idf/components/coap/libcoap/include -I/Users/admin/esp/esp-idf/components/coap/libcoap/include/coap2 -I/Users/admin/esp/esp-idf/components/console -I/Users/admin/esp/esp-idf/components/nghttp/port/include -I/Users/admin/esp/esp-idf/components/nghttp/nghttp2/lib/includes -I/Users/admin/esp/esp-idf/components/esp-tls -I/Users/admin/esp/esp-idf/components/esp-tls/esp-tls-crypto -I/Users/admin/esp/esp-idf/components/esp_adc_cal/include -I/Users/admin/esp/esp-idf/components/esp_gdbstub/include -I/Users/admin/esp/esp-idf/components/esp_gdbstub/xtensa -I/Users/admin/esp/esp-idf/components/esp_gdbstub/esp32 -I/Users/admin/esp/esp-idf/components/esp_hid/include -I/Users/admin/esp/esp-idf/components/tcp_transport/include -I/Users/admin/esp/esp-idf/components/esp_http_client/include -I/Users/admin/esp/esp-idf/components/esp_http_server/include -I/Users/admin/esp/esp-idf/components/esp_https_ota/include -I/Users/admin/esp/esp-idf/components/protobuf-c/protobuf-c -I/Users/admin/esp/esp-idf/components/protocomm/include/common -I/Users/admin/esp/esp-idf/components/protocomm/include/security -I/Users/admin/esp/esp-idf/components/protocomm/include/transports -I/Users/admin/esp/esp-idf/components/mdns/include -I/Users/admin/esp/esp-idf/components/esp_local_ctrl/include -I/Users/admin/esp/esp-idf/components/sdmmc/include -I/Users/admin/esp/esp-idf/components/esp_serial_slave_link/include -I/Users/admin/esp/esp-idf/components/esp_websocket_client/include -I/Users/admin/esp/esp-idf/components/expat/expat/expat/lib -I/Users/admin/esp/esp-idf/components/expat/port/include -I/Users/admin/esp/esp-idf/components/wear_levelling/include -I/Users/admin/esp/esp-idf/components/fatfs/diskio -I/Users/admin/esp/esp-idf/components/fatfs/vfs -I/Users/admin/esp/esp-idf/components/fatfs/src -I/Users/admin/esp/esp-idf/components/freemodbus/common/include -I/Users/admin/esp/esp-idf/components/idf_test/include -I/Users/admin/esp/esp-idf/components/idf_test/include/esp32 -I/Users/admin/esp/esp-idf/components/jsmn/include -I/Users/admin/esp/esp-idf/components/json/cJSON -I/Users/admin/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include -I/Users/admin/esp/esp-idf/components/libsodium/port_include -I/Users/admin/esp/esp-idf/components/mqtt/esp-mqtt/include -I/Users/admin/esp/esp-idf/components/openssl/include -I/Users/admin/esp/esp-idf/components/spiffs/include -I/Users/admin/esp/esp-idf/components/ulp/include -I/Users/admin/esp/esp-idf/components/wifi_provisioning/include -I/Users/admin/Desktop/RTOS/t04/components/include -I/Users/admin/Desktop/RTOS/t04/components/make_noise -I/Users/admin/Desktop/RTOS/t04/components/mx_function -I/Users/admin/Desktop/RTOS/t04/components/oled -I/Users/admin/Desktop/RTOS/t04/components/timer -I/Users/admin/Desktop/RTOS/t04/main 


#include "oled.h"

static void oled_config() {
    ESP_ERROR_CHECK(gpio_set_direction(GPIO_NUM_32, GPIO_MODE_OUTPUT));
    ESP_ERROR_CHECK(gpio_set_level(GPIO_NUM_32, 1));
    init_i2c();
}

void data_transaction(t_display *display) {
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, (display->addr << 1) | I2C_MASTER_WRITE, true);
    i2c_master_write_byte(cmd, 0x80, true); // single command
    i2c_master_write_byte(cmd, 0x00, true);
    i2c_master_write_byte(cmd, 0x40, true); // data stream
    i2c_master_write(cmd, display->font_str, SCREEN_SIZE, true);
    i2c_master_stop(cmd);
    i2c_master_cmd_begin(display->port, cmd, 10 / portTICK_PERIOD_MS);
    i2c_cmd_link_delete(cmd);
}
//void data_transaction(t_display *display) {
//    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
//    i2c_master_start(cmd);
//    i2c_master_write_byte(cmd, (display->addr << 1) | I2C_MASTER_WRITE, true);
//    i2c_master_write_byte(cmd, 0x0, true); // command stream
//    i2c_master_write_byte(cmd, 0xAE, true); // off
//
//    i2c_master_write_byte(cmd, 200, true); // contrast
//    i2c_master_write_byte(cmd, 0xFF, true);
//
//
//    i2c_master_write_byte(cmd, 0xAF, true); // on
//    i2c_master_stop(cmd);
//    i2c_master_cmd_begin(display->port, cmd, 10 / portTICK_PERIOD_MS);
//    i2c_cmd_link_delete(cmd);
//
//}
//for(int i = 0; i < 64; i++) {
//        for (int j = 0; j < 128; j++) {
//            display->font_str[i * SCREEN_WIDTH + j] = 1;
//            printf("%d", display->font_str[i * SCREEN_WIDTH + j]);
//        }
//        printf("\n");
//    }

void data_to_oled(void *arg) {
    oled_config();
    t_display *display = malloc(sizeof(t_display));
    display->font_str = (uint8_t*)malloc(sizeof(uint8_t) * SCREEN_SIZE);
    memset(display->font_str, 1, SCREEN_SIZE);
//
    display->addr = I2C_ADDR;
    display->port = I2C_PORT;
    oled_initialization(display);
    vTaskDelay(10 / portTICK_PERIOD_MS);

//    oled_clear(display);
//    oled_update(display, str);
//
    while (1) {
            oled_update(display);
//
            str_to_oled(display);
//            oled_update(display, str);
            vTaskDelay(10 / portTICK_PERIOD_MS);
    }
}

void app_main() {
    xTaskCreate(data_to_oled, "data_to_oled", 4096,
                NULL, 1, NULL);
}


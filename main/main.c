#include "oled.h"
#include <driver/adc.h>

typedef struct s_data{
    int light;
}t_data;
void change_contrast(t_display *display, int value) {
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, (display->addr << 1) | I2C_MASTER_WRITE, true);
    ESP_ERROR_CHECK(i2c_master_write_byte(cmd, 0x00, true));
    ESP_ERROR_CHECK(i2c_master_write_byte(cmd, 0x81, true));
    ESP_ERROR_CHECK(i2c_master_write_byte(cmd, value, true));
    i2c_master_stop(cmd);
    i2c_master_cmd_begin(display->port, cmd, 10 / portTICK_PERIOD_MS);
    i2c_cmd_link_delete(cmd);

}

void data_to_oled(void *arg) {
    t_data *app = (t_app*)arg;
    printf("in oled %d\n", app->light);
//    t_display *display = malloc(sizeof(t_display));
//    oled_config(display);
//    oled_initialization(display);
//    display_fill(display);
//
//    while (1) {
//
////        change_contrast(display, 0);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
//
//    }
}

void data_from_photoresistor(void *arg) {
   t_data *app = (t_app)arg;
    printf("%d\n", app->light);

    adc1_config_width(ADC_WIDTH_BIT_12);
    adc1_config_channel_atten(ADC1_CHANNEL_0, ADC_ATTEN_DB_0);
    while (1) {
        int val = adc1_get_raw(ADC1_CHANNEL_0);
        printf("%d\n", val);
        app->light = val / 41 * 2.5;
        printf("%d\n", app->light);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
}

void app_main() {
    t_data *app;

    xTaskCreate(data_from_photoresistor, "data_from_photoresistor", 2048,
                app, 1, NULL);
    xTaskCreate(data_to_oled, "data_to_oled", 2048,
                app, 3, NULL);
}


#include "oled.h"

void data_to_oled(void *arg) {
    ESP_ERROR_CHECK(gpio_set_direction(GPIO_NUM_32, GPIO_MODE_OUTPUT));
    ESP_ERROR_CHECK(gpio_set_level(GPIO_NUM_32, 1));
    t_app *apps = (t_app*)arg;
    t_display *display = malloc(sizeof(t_display));
    display->font_str = (uint8_t*)malloc(sizeof(uint8_t) * (128 * 8));
    bzero(display->font_str, SCREEN_SIZE);
    display->addr = I2C_ADDR;
    display->port = I2C_PORT;
    oled_config(display);
    oled_clear(display);
    oled_update(display, NULL);


    while (1) {
            char *str = strdup(apps->time);
            printf("TIME = %s\n", str);
            oled_clear(display);
            oled_update(display, str);
            write_to_oled(display, str);
            oled_update(display, str);
            vTaskDelay( 1 / portTICK_PERIOD_MS);
        }
}
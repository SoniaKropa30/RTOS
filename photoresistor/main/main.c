#include "main.h"

void app_main() {
    t_data *app = malloc(sizeof(t_data));
    if(!app) return;

    xTaskCreate(&data_from_photoresistor_to_oled, "data_from_photoresistor_to_oled",
                4096, app, 1, NULL);
}
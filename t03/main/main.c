#include "main.h"

void app_main() {
    t_app *app = malloc(sizeof(t_app));
    if(!app) return;
    init_console_data(app);
    timer_initialise();


    xTaskCreate(&data_from_uart, "data_from_uart", 2048,
                 app, 5, NULL );
    xTaskCreate(&timer_task, "timer_task", 4096,
                app, 5, NULL);
    xTaskCreate(data_to_oled, "data_to_oled", 4096,
                app, 1, NULL);
}
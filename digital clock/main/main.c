#include "main.h"

void app_main() {
    t_app *app = malloc(sizeof(t_app));
    if(!app) return;
    init_console_data(app);
    timer_initialise(app);


    xTaskCreate(&data_from_uart, "data_from_uart", 2048,
                 app, 5, NULL );
}
#include "main.h"

void app_main() {
    t_app *app = malloc(sizeof(t_app));
    if(!app) return;
    init_console_data(app);
    timer_initialise();


    xTaskCreate(&data_from_uart, "data_from_uart", 4096,
                 app, 5, NULL );
    xTaskCreate(&data_from_dht11, "data_from_dht11", 4096,
                NULL, 5, NULL);
    xTaskCreate(&push_to_stack, "push_to_stack", 4096,
                app, 5, NULL);
}
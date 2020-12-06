#include "dht11.h"

QueueHandle_t dht11_queue = NULL;

void push_to_stack(void *data) {
    t_dht11 dht11_recive;
    t_app *app = (t_app *)data;

    while(1) {
        if (dht11_queue && (xQueueReceive(dht11_queue, (void *) &dht11_recive,
                                          (portTickType) portMAX_DELAY))) {
            printf("list_size  =  %d\n", mx_list_size(app->stack));
            if (mx_list_size(app->stack) >= 60)
                mx_pop_back(&app->stack);
            mx_push_front(&app->stack, dht11_recive);
        }
        vTaskDelay(10/portTICK_PERIOD_MS);
    }
}

void print_tem_hum_time(t_app *app) {
    t_list *ptr = app->stack;
    char str[100];
    int min = 0;
    int sec = 0;
    uint64_t cur_time = 0;

    while (ptr) {
        memset(&str, 0, sizeof(str));
        timer_get_counter_value(TIMER_GROUP_0, TIMER_0, &cur_time);
        sec = (int)((cur_time - ptr->data.time) / TIMER_SCALE);
        min = (int)sec / 60;
        sec = (int)sec % 60;

        if (ptr->next && (ptr->data.temp == ptr->next->data.temp)
            && (ptr->data.hum == ptr->next->data.hum)) {
            sprintf(str, "temperature: \x1b[36m%d\x1b[0m humidity: \x1b[36m%d\x1b[0m\n\r",
                    ptr->data.temp, ptr->data.hum);
        }
        else {
            sprintf(str,
                    "temperature: \x1b[36m%d\x1b[0m humidity: \x1b[36m%d\x1b[0m  \x1b[33m%d min %d sec ago\x1b[0m\n\r",
                    ptr->data.temp, ptr->data.hum, min, sec);
        }
        ptr = ptr->next;
        uart_write_bytes(UART_NUM_1, str, sizeof(str));
    }
}

void data_from_dht11(void *data) {
    dht11_initialization();
    t_dht11 dht11;
    dht11_queue = xQueueCreate( 1, sizeof(t_dht11));
    if (dht11_queue == NULL)
        printf("ERROR_DHT_QUEUE\n");

    while(1) {
        sensor_activation();
        dht11 = (t_dht11){0, 0, 0};
        if (!take_data_from_dht11(&dht11.temp, &dht11.hum)) {
            timer_get_counter_value(TIMER_GROUP_0, TIMER_0, &dht11.time);
            xQueueSend(dht11_queue, (void*)&dht11, (TickType_t) 0);
            vTaskDelay(5000/portTICK_PERIOD_MS);
        }
    }
}
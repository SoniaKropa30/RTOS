#include "dht11.h"

QueueHandle_t dht11_queue = NULL;

void data_from_dht11(void *data);


void push_to_stack(void *data) {
    t_dht11 dht11_recive;
    t_list *stack = (t_list *)data;
    while(1) {

        if (dht11_queue && (xQueueReceive(dht11_queue, (void *) &dht11_recive,
                                          (portTickType) portMAX_DELAY))) {
            if (mx_list_size(stack) < STACK_SIZE) {
//                dht11_recive.time = i;
                mx_push_front(&stack, dht11_recive);
                printf("list_size  =  %d\n", mx_list_size(stack));
//                i++;
            }
        }
//        printf("stack = %d  %d %d\n", stack->data->temp, stack->data->hum, stack->data->time);
//        if(mx_list_size(stack) > 1)
//        printf("stack-next = %d  %d %d\n", stack->next->data->temp, stack->next->data->hum, stack->next->data->time);

        t_list *ptr = stack;
        while (ptr) {
            printf("%d  %d %d\n", ptr->data.temp, ptr->data.hum, ptr->data.time);
            ptr = ptr->next;
        }
        vTaskDelay(1000/portTICK_PERIOD_MS);
    }
}

void data_from_dht11(void *data) {
    dht11_initialization();
    t_dht11 dht11;
    dht11_queue = xQueueCreate( 1, sizeof(t_dht11));
    if (dht11_queue == NULL)
        printf("ERROR_DHT_QUEUE\n");
    int i = 0;

    while(1) {
        sensor_activation();
        dht11 = (t_dht11){0, 0, 0};
        if (!take_data_from_dht11(&dht11.temp, &dht11.hum)) {
//            printf("%d %d \n", dht11.temp, dht11.hum);
            dht11.time = i;
            xQueueSend(dht11_queue, (void*)&dht11, (TickType_t) 0);
            i++;
        }
        vTaskDelay(5000/portTICK_PERIOD_MS);
    }
}
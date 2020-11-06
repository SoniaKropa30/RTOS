#include "console.h"

QueueHandle_t uart_queue;
#define SIZE_STR_FOR_EXECUTE  50
#define ENTER 13
#define MAX_SIZE_BUF 119
void uart_config(void) {
    uart_config_t uart_config =
            {
                    .baud_rate = 9600,
                    .data_bits = UART_DATA_8_BITS,
                    .parity = UART_PARITY_DISABLE,
                    .stop_bits = UART_STOP_BITS_2,
                    .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
            };
    ESP_ERROR_CHECK(uart_param_config(UART_NUM_1, &uart_config));
    ESP_ERROR_CHECK(uart_set_pin(UART_NUM_1, UART_TX_PIN, UART_RX_PIN, UART_PIN_NO_CHANGE , UART_PIN_NO_CHANGE));
    ESP_ERROR_CHECK(uart_driver_install(UART_NUM_1, 1024,
                                        1024, 10, &uart_queue, 0));
    uart_pattern_queue_reset(UART_NUM_1, 20);
}


void app_main() {
    uart_config();
    uart_event_t event;
    uint8_t *buf = (uint8_t *)malloc(BUF_SIZE);
    char str_for_execute[SIZE_STR_FOR_EXECUTE];
    memset(str_for_execute, 0, SIZE_STR_FOR_EXECUTE);
    t_list *history = NULL;

    while (1) {
        if (xQueueReceive(uart_queue, (void *) &event, (portTickType) portMAX_DELAY)) {
            bzero(buf, BUF_SIZE);
            int len = uart_read_bytes(UART_NUM_1, buf, event.size, portMAX_DELAY);
            printf("len = %d\n", len);
            for (int k = 0; k < len; k++)
                printf("%d ", buf[k]);
            printf("\n");
            strcat(str_for_execute, (char *) buf);
            if (len && len < MAX_SIZE_BUF) {
                uart_write_bytes(UART_NUM_1, (char *)buf, strlen((char*)buf));
                //          printf("%s\n", str_for_screen);

                if (buf[0] == ENTER) {
                    mx_push_front(&history, strdup(str_for_execute));
                    printf("%s\n", (char *) history->data);
                    uart_write_bytes(UART_NUM_1, "\n", 2);
                    memset(str_for_execute, 0, SIZE_STR_FOR_EXECUTE);
                }
            }
            else {
                uart_write_bytes(UART_NUM_1, (char *)buf, 120);
            }
            uart_flush(UART_NUM_1);
        }

        vTaskDelay(10 / portTICK_PERIOD_MS);
    }
}



//            if(buf[0] == 27 && buf[2] == 65) {
//                printf("in history\n");
//                printf("%s\n", (char*)history->data);
//
////                t_list *ptr = history;
////                int i = 0;
////                while(ptr != NULL){
////                    if(i == index_str_from_history) {
//                uart_write_bytes(UART_NUM_1, (char *)history->data, SIZE_SCREEN_BUF);
////                        break;
////                    }
////                    else
////                        ptr = ptr->next;
//            }
////                index_str_from_history++;
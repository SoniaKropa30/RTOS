#include "console.h"

QueueHandle_t uart_queue;

//void init() {
//    uart_config_t uart_config =
//            {
//                    .baud_rate = 9600,
//                    .data_bits = UART_DATA_8_BITS,
//                    .parity = UART_PARITY_DISABLE,
//                    .stop_bits = UART_STOP_BITS_2,
//                    .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
//            };
//    ESP_ERROR_CHECK(uart_param_config(UART_NUM_1, &uart_config));
//    ESP_ERROR_CHECK(uart_set_pin(UART_NUM_1, UART_TX_PIN, UART_RX_PIN, UART_PIN_NO_CHANGE , UART_PIN_NO_CHANGE));
//    ESP_ERROR_CHECK(uart_driver_install(UART_NUM_1, 1024,
//                                        1024, 10, &uart_queue, 0));
//    uart_pattern_queue_reset(UART_NUM_1, 20);
//}

void app_main() {
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

    uart_event_t event;
    uint8_t *buf = (uint8_t *)malloc(BUF_SIZE);
    while (1) {
        if(xQueueReceive(uart_queue, (void * )&event, (portTickType)portMAX_DELAY)) {
            bzero(buf, BUF_SIZE);
//            printf("done\n\n");
        int len = uart_read_bytes(UART_NUM_1, buf, event.size, portMAX_DELAY);
        printf("len = %d\n", len);
        printf("num of char = %d\n", buf[0]);
        }
    }
}


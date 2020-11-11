#include "console.h"

QueueHandle_t uart_queue;
#define SIZE_STR_FOR_EXECUTE  1024
#define ENTER 13
#define MAX_SIZE_BUF 120
#define DELETE 127

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

bool is_arrow(int len, uint8_t *buf) {
    if(len == 3 && (buf[0] == 27 && buf[1] == 91)) {
        if (buf[2] == 65 && buf[2] <= 68)
            return 1;
    }
    return 0;
}


void print_buf(int len, uint8_t *buf) {
    printf("len = %d\n", len);
    for (int k = 0; k < len; k++)
        printf("%c", (char)buf[k]);
    printf("\n");
}

void app_main() {
    uart_config();
    uart_event_t event;
    uint8_t *buf = (uint8_t *)malloc(BUF_SIZE);
    char str_for_execute[SIZE_STR_FOR_EXECUTE];
    memset(str_for_execute, 0, SIZE_STR_FOR_EXECUTE);
    int iterator = 0;

    while (1) {
        if (xQueueReceive(uart_queue, (void *) &event, (portTickType) portMAX_DELAY)) {
            if (event.size < MAX_SIZE_BUF) {
                bzero(buf, BUF_SIZE);
                int len = uart_read_bytes(UART_NUM_1, buf, event.size, portMAX_DELAY);
                print_buf(len, buf);
                strcat(str_for_execute, (char *) buf);
                if (len == 1 && buf[0] == DELETE) {
                    uart_write_bytes(UART_NUM_1, "\e[1D", sizeof("\e[1D"));
                    uart_write_bytes(UART_NUM_1, " ", 1);
                    uart_write_bytes(UART_NUM_1, "\e[1D", sizeof("\e[1D"));
                    str_for_execute[strlen(str_for_execute) - 2] = '\0';
                }
                if (iterator >= strlen(str_for_execute) &&
                    (len == 3 && (buf[0] == 27 && buf[1] == 91 && buf[2] == 67))) {
                    uart_write_bytes(UART_NUM_1, "", sizeof(""));
                    printf("here i am 1\n");
                } else if (len == 3 && (buf[0] == 27 && buf[1] == 91 && buf[2] == 67)) {
                    iterator++;
                    printf("ITERTATOR = %d\n", iterator);
                    printf("char = %s\n", &str_for_execute[iterator++]);
                    uart_write_bytes(UART_NUM_1, strndup(&str_for_execute,strlen(str_for_execute) - iterator),
                                            strlen(str_for_execute) - iterator);

                    printf("here i am 2\n");

                } else if (len == 3 && (buf[0] == 27 && buf[1] == 91 && buf[2] == 68)) {
                    if (iterator > 0)
                        iterator--;
                    else
                        iterator = 0;
                    printf("ITERTATOR-- = %d\n", iterator);

                    uart_write_bytes(UART_NUM_1, "\e[1D", sizeof("\e[1D"));
                    printf("here i am 3\n");

                } else if (len == 1 && buf[0] == ENTER) {
                    // send for execute
                    iterator = 0;
                    uart_write_bytes(UART_NUM_1, "\n\r", sizeof("\n\r"));
                } else {
                    iterator += strlen((char *) buf);
                    printf("iter = %d\n", iterator);
                    printf("buf =  %s\n", (char *) buf);
                    uart_write_bytes(UART_NUM_1, (char *) buf, strlen((char *) buf));
                }
                uart_flush(UART_NUM_1);
            }
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





// if (len && len < MAX_SIZE_BUF) {
//                uart_write_bytes(UART_NUM_1, (char *)buf, strlen((char*)buf));
//                //          printf("%s\n", str_for_screen);
//
//                if (buf[0] == ENTER) {
//                    mx_push_front(&history, strdup(str_for_execute));
//                    printf("%s\n", (char *) history->data);
//                    uart_write_bytes(UART_NUM_1, "\n", 2);
//                    memset(str_for_execute, 0, SIZE_STR_FOR_EXECUTE);
//                }
//            }
//            else {
//                uart_write_bytes(UART_NUM_1, (char *)buf, 120);
//            }
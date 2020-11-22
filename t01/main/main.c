#include "console.h"

void data_from_uart();
void simple_command_handler(char *str_for_execute, int *iterator,
                            uint8_t *buf, int len, int *history_iterator, t_list *history);
int send_for_execute(char *str_for_execute);

        QueueHandle_t uart_queue;
#define SIZE_STR_FOR_EXECUTE  120
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


void print_buf(int len, uint8_t *buf) {
    printf("len = %d\n", len);
    for (int k = 0; k < len; k++)
        printf("%c", (char)buf[k]);
    printf("\n");
}



int send_for_execute(char *str_for_execute) {
    int exit_status = -1;
    char **argv = mx_strsplit(str_for_execute, ' ');
    int argc = mx_arr_size(argv);

    if(argc) {
        if (!strcmp("led", argv[0]) && argv[1]) {
            exit_status = leds_module(argc, argv);
        }
        else{
            uart_write_bytes(UART_NUM_1, ERR_COMM_NOT_FOUND,
                             sizeof(ERR_COMM_NOT_FOUND));
            exit_status = EXIT_FAILURE;
        }
    }
    else {
        exit_status = EXIT_FAILURE;
//        uart_write_bytes(UART_NUM_1, "i haven't arg\n", sizeof("i haven't arg\n");
    }
    return exit_status;
}


void handling_ENTER(char *str_for_execute, int *iterator, uint8_t *buf,
                            t_list *history) {
    uart_write_bytes(UART_NUM_1, "\n\r", sizeof("\n"));

    if (send_for_execute(str_for_execute) == EXIT_SUCCESS) {
        mx_push_back(&history, strdup(str_for_execute));
        t_list *ptr = history;
            for (int i = 1; i < mx_list_size(history); i++) {
                if(ptr->data == NULL && i == 1){
                    ptr = ptr->next;
                }
                printf("history: %s\n", (char *)ptr->data);
                ptr = ptr->next;

            }
    }
    *iterator = 0;
    printf("\n\nstr =  %s\n", str_for_execute);

    memset(str_for_execute, 0, SIZE_STR_FOR_EXECUTE);
//    printf("str for execute =*%s*\n", str_for_execute);
//    printf("iter = %d\n", *iterator);
//    printf("buf =  %s\n", (char *)buf);
}

void handling_DELETE(char *str_for_execute, int *iterator, uint8_t *buf) {
    if(*iterator == strlen(str_for_execute)) {
        uart_write_bytes(UART_NUM_1, "\e[1D", sizeof("\e[1D"));
        uart_write_bytes(UART_NUM_1, " ", 1);
        uart_write_bytes(UART_NUM_1, "\e[1D", sizeof("\e[1D"));
        str_for_execute[strlen(str_for_execute) - 1] = '\0';
        if (*iterator > 0) {
            *iterator = *iterator - 1;
//            printf("f (del)  -- = %d\n", *iterator);

        } else {
            *iterator = 0;
//            printf("f (del)  0 = %d\n", *iterator);
        }
//        printf("strlen  = %d\n", strlen(str_for_execute));
//        printf("str for execute =*%s*\n", str_for_execute);
//        printf("iter = %d\n", *iterator);
//        printf("buf =  *%s*\n", (char *) buf);
    }
}

_Bool printable_char(char *buf) {
    for(int i = 0; i < strlen(buf); i++) {
        if(buf[i] < 32 || buf[i] > 126)
            return 0;
        i++;
    }
    return 1;
}

_Bool is_buffer_enought(char *str_for_execute, uint8_t *buf, int len) {
    print_buf(len, buf);
    if((len == 1 && (buf[0] == ENTER || buf[0] == DELETE))
            || (len == 3 && (buf[0] == 27 && buf[1] == 91))) {
        return 1;
    }
    if(strlen((char *)buf) + strlen(str_for_execute) < SIZE_STR_FOR_EXECUTE) {
        if(printable_char((char*)buf)) {
            strcat(str_for_execute, (char *) buf);
            printf("strlen  = %d\n", strlen(str_for_execute));
            printf("str for execute =*%s*\n", str_for_execute);
        }
        return 1;

    }
    return 0;
}

void handling_ARROWS(char *str_for_execute, int *iterator,
                     uint8_t *buf, int *history_iterator) {
    if (buf[0] == 27 && buf[1] == 91) {
        if (buf[2] == 67) {

            if (*iterator < strlen(str_for_execute)) {
                uart_write_bytes(UART_NUM_1, &str_for_execute[*iterator],
                                 sizeof(str_for_execute[*iterator]));
                *iterator = *iterator + 1;
            }
        }
        if (buf[2] == 68) {
            if (*iterator <= 0)
                *iterator = 0;
            else {
                *iterator = *iterator - 1;
                uart_write_bytes(UART_NUM_1, "\b", 1);
            }
            printf("after incremantation = %d\n", *iterator);
        }
    }
}

void simple_command_handler(char *str_for_execute, int *iterator,
                            uint8_t *buf, int len, int *history_iterator, t_list *history) {
    if (len == 1) {
        if (buf[0] == DELETE)
            handling_DELETE(str_for_execute, iterator, buf);
        else if (buf[0] == ENTER) {
            handling_ENTER(str_for_execute, iterator, buf, history);
        }
        else if (printable_char((char *)buf)) {
            *iterator = *iterator + 1;
            uart_write_bytes(UART_NUM_1, (char *) buf, sizeof(buf));
        }
    }
    else if (len == 3 && buf[0] == 27 && buf[1] == 91)
        handling_ARROWS(str_for_execute, iterator, buf, history_iterator);
    else {
        uart_write_bytes(UART_NUM_1, &str_for_execute[*iterator],
                         strlen(str_for_execute) - *iterator);
        *(iterator) = strlen(str_for_execute);
    }
}

void data_from_uart() {
    uart_config();
    uart_event_t event;
    uint8_t *buf = (uint8_t *)malloc(BUF_SIZE);
    char str_for_execute[SIZE_STR_FOR_EXECUTE];
    memset(str_for_execute, 0, SIZE_STR_FOR_EXECUTE);
    int iterator = 0;
    int len = 0;
    int history_iterator = 0;
    t_list *history = mx_create_node(NULL);

    while (1) {
        if (xQueueReceive(uart_queue, (void *) &event,
                          (portTickType) portMAX_DELAY)) {
            if (event.size < MAX_SIZE_BUF && event.type == UART_DATA) {
                bzero((void*)buf, BUF_SIZE);
                len = uart_read_bytes(UART_NUM_1, buf, event.size, portMAX_DELAY);
                if(is_buffer_enought(str_for_execute, buf, len)) {
                    simple_command_handler(str_for_execute, &iterator, buf,
                                           len, &history_iterator, history);
                }
            }
            uart_flush_input(UART_NUM_1);
        }
        vTaskDelay(10 / portTICK_PERIOD_MS);
    }
}




void app_main() {
    xTaskCreate(data_from_uart, "data_from_uart", 4096,
                NULL, 5, NULL);
}
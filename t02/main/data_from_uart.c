#include "main.h"

QueueHandle_t uart_queue;

void init_console_data(t_app *app) {
    app->buf = malloc(BUF_SIZE);
    app->str_for_execute = malloc(SIZE_STR_FOR_EXECUTE);
    memset(app->str_for_execute, 0, SIZE_STR_FOR_EXECUTE);
    app->iterator = 0;
    app->len = 0;
}

void uart_config(void) {
    uart_config_t uart_config =
            {
                    .baud_rate = 9600,
                    .data_bits = UART_DATA_8_BITS,
                    .parity = UART_PARITY_DISABLE,
                    .stop_bits = UART_STOP_BITS_2,
                    .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
            };
    ESP_ERROR_CHECK( uart_param_config( UART_NUM_1, &uart_config ));
    ESP_ERROR_CHECK( uart_set_pin( UART_NUM_1, UART_TX_PIN, UART_RX_PIN, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE ));
    ESP_ERROR_CHECK( uart_driver_install( UART_NUM_1, 1024,
                                          1024, 10, &uart_queue, 0 ));
    uart_pattern_queue_reset( UART_NUM_1, 20 );
}


int send_for_execute(char *str_for_execute) {
    int exit_status = -1;
    char **argv = mx_strsplit(str_for_execute, ' ' );
    int argc = mx_arr_size(argv);

    if (argc) {
        if (!strcmp("log", argv[0]) && !argv[1]) {
           printf("it is ok\n");
        }
        else if(!strcmp("clear", argv[0]) && !argv[1]) {
            uart_write_bytes(UART_NUM_1, "\e[2J",sizeof("\e[2J"));
            uart_write_bytes(UART_NUM_1, "\e[0;0f",sizeof("\e[0;0f"));
        }
        else {
            uart_write_bytes( UART_NUM_1, ERR_COMM_NOT_FOUND,
                              sizeof(ERR_COMM_NOT_FOUND));
            exit_status = EXIT_FAILURE;
        }
    }
    else {
        exit_status = EXIT_FAILURE;
    }
    free(argv);
    return exit_status;
}


void handling_ENTER(t_app *app, t_list *history) {
    uart_write_bytes( UART_NUM_1, "\n\r", sizeof( "\n" ));
    send_for_execute(app->str_for_execute);
//    if (send_for_execute(app->str_for_execute ) == EXIT_SUCCESS) {
//        mx_push_back(&history, strdup(app->str_for_execute));
//        t_list *ptr = history;
//        for (int i = 1; i < mx_list_size(history); i++) {
//            if (ptr->data == NULL && i == 1) {
//                ptr = ptr->next;
//            }
//            printf( "history: %s\n", (char *) ptr->data );
//            ptr = ptr->next;
//        }
//    }
    app->iterator = 0;
    app->history_iterator = 0;
//    printf("\n\nstr =  %s\n", app->str_for_execute);
    memset( app->str_for_execute, 0, SIZE_STR_FOR_EXECUTE );
//    printf("str for execute =*%s*\n", app->str_for_execute);
//    printf("iter = %d\n", app->iterator);
//    printf("app->buf =  %s\n", (char *)app->buf);
}

void handling_DELETE(t_app *app) {
    if (app->iterator == strlen(app->str_for_execute ) && app->iterator > 0) {
        uart_write_bytes( UART_NUM_1, "\e[1D", sizeof( "\e[1D" ));
        uart_write_bytes( UART_NUM_1, " ", 1 );
        uart_write_bytes( UART_NUM_1, "\e[1D", sizeof( "\e[1D" ));
        app->str_for_execute[strlen(app->str_for_execute) - 1] = '\0';
        (app->iterator > 0) ? app->iterator-- : 0;
    }
    printf("str for execute =*%s*\n", app->str_for_execute);

}

_Bool printable_char(char *buf) {
    for (int i = 0; i < strlen( buf ); i++) {
        if (buf[i] < 32 || buf[i] > 126)
            return 0;
        i++;
    }
    return 1;
}

_Bool is_buffer_enought(t_app *app) {
    if ((app->len == 1 && (app->buf[0] == ENTER || app->buf[0] == DELETE))
        || (app->len == 3 && (app->buf[0] == 27 && app->buf[1] == 91))) {
        return 1;
    }
    if (strlen((char *) app->buf ) + strlen( app->str_for_execute ) < SIZE_STR_FOR_EXECUTE) {
        if (printable_char((char *) app->buf )) {
            strcat( app->str_for_execute, (char *) app->buf );
            printf( "strlen  = %d\n", strlen( app->str_for_execute ));
            printf( "str for execute =*%s*\n", app->str_for_execute );
        }
        return 1;


    }
    return 0;
}


void handling_ARROWS(t_app *app, t_list *history) {
    if (app->buf[0] == 27 && app->buf[1] == 91) {
        if (app->buf[2] == 67) {

            if (app->iterator < strlen( app->str_for_execute)) {
                uart_write_bytes(UART_NUM_1, &app->str_for_execute[app->iterator],
                                 sizeof( app->str_for_execute[app->iterator]));
                app->iterator++;
            }
        }
        if (app->buf[2] == 68) {
            if (app->iterator <= 0)
                app->iterator = 0;
            else {
                app->iterator--;
                uart_write_bytes( UART_NUM_1, "\b", 1 );
            }
            printf("after incremantation = %d\n", app->iterator);
        }
//        if(app->buf[2] == 65) {
//            printf("in tens\n\n");
//
//            t_list *ptr = history;
//            for (int i = 0; i < mx_list_size(history) - 1; i++) {
//                if (ptr->data == NULL && i == 0) {
//                    ptr = ptr->next;
//                }
//                if(i == app->history_iterator) {
//                    printf("afret arr: %s\n", (char *) ptr->data);
//                    if(!strlen(app->str_for_execute)) {
////                        free(app->str_for_execute);
//                        app->str_for_execute = strdup(ptr->data);
//                        app->iterator = strlen(app->str_for_execute);
//                        uart_write_bytes(UART_NUM_1,app->str_for_execute,
//                                                 strlen(app->str_for_execute));
//                    }
//                }
//                ptr = ptr->next;
//
//            }
//            free(ptr);
//            app->history_iterator++;
//        }
    }
}

void simple_command_handler(t_app *app, t_list *history) {
    if (app->len == 1) {
        if (app->buf[0] == DELETE)
            handling_DELETE(app);
        else if (app->buf[0] == ENTER) {
            handling_ENTER( app, history);
        } else if (printable_char((char *) app->buf)) {
            app->iterator = app->iterator + 1;
            uart_write_bytes(UART_NUM_1, (char *) app->buf, sizeof(app->buf));
        }
    } else if (app->len == 3 && app->buf[0] == 27 && app->buf[1] == 91)
        handling_ARROWS(app, history);
    else {
        uart_write_bytes(UART_NUM_1, &app->str_for_execute[app->iterator],
                         strlen(app->str_for_execute) - app->iterator);
        app->iterator = strlen(app->str_for_execute);
    }
}

void data_from_uart(void *data) {
    uart_config();
    uart_event_t event;
    t_app *app = (t_app*)data;
    t_list *history = NULL;

    while (1) {
        if (xQueueReceive(uart_queue, (void *) &event,
                          (portTickType) portMAX_DELAY)) {
            if (event.size < MAX_SIZE_BUF && event.type == UART_DATA) {
                memset(app->buf,0, BUF_SIZE);
                app->len = uart_read_bytes(UART_NUM_1, app->buf, event.size, portMAX_DELAY);
                if (is_buffer_enought(app))
                    simple_command_handler(app, history);
            }
            uart_flush_input( UART_NUM_1 );
        }
        vTaskDelay( 10 / portTICK_PERIOD_MS );
    }
}
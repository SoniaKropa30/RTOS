#include "clock.h"

int set_alarm(char *argv[], t_app *app) {
    if(!argv[1]) {
        uart_write_bytes(UART_NUM_1, ERR_ADD_PARAM, sizeof(ERR_ADD_PARAM));
        return EXIT_FAILURE;
    }
    if(argv[1] && argv[2]) {
        uart_write_bytes(UART_NUM_1, ERR_TO_MANY_ARG, sizeof(ERR_TO_MANY_ARG));
        return EXIT_FAILURE;
    }
    else if(valid_time(argv[1]) && strlen(argv[1]) == 8) {
        memset(app->alarm, 0, sizeof(app->alarm));
        strcpy(app->alarm, argv[1]);
        return EXIT_SUCCESS;
    }
    else {
        uart_write_bytes(UART_NUM_1, ERR_BAD_ARG, sizeof(ERR_BAD_ARG));
        return EXIT_FAILURE;
    }
}

int stop_alarm(char *argv[]) {
    if(argv[1]) {
        uart_write_bytes(UART_NUM_1, ERR_TO_MANY_ARG, sizeof(ERR_TO_MANY_ARG));
        uart_write_bytes(UART_NUM_1, "YOU ARE STILL IN SLEEP MODE\n\r", sizeof("YOU ARE STILL IN SLEEP MODE\n\r"));
        return EXIT_FAILURE;
    }
    else {
        make_some_noise("off");
        return EXIT_SUCCESS;
    }
}


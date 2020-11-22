#include "console.h"

static void leds_config(void) {
    ESP_ERROR_CHECK(gpio_set_direction(GPIO_LED_1, GPIO_MODE_OUTPUT));
    ESP_ERROR_CHECK(gpio_set_direction(GPIO_LED_2, GPIO_MODE_OUTPUT));
    ESP_ERROR_CHECK(gpio_set_direction(GPIO_LED_3, GPIO_MODE_OUTPUT));
}


char *check_arg(int argc, char **argv, int max_param_num, float param[]) {
    bzero((void*)param, 10);
    int k = 0;

    if (strcmp("on", argv[1]) && strcmp("off", argv[1])
        && strcmp("pulse", argv[1]))
        return ERR_COMM_NOT_FOUND;
    if (((argc + 1) - max_param_num) > 2)
        return ERR_TO_MANY_ARG;
    if (argv[2]) {
        for (int i = 2; i < argc; i++) {
            if((param[k] = atoi(argv[i])) < 0 || param[k] > 3)
                return ERR_BAD_ARG;
            k++;
        }
    }
    else if (!argv[2])
        return ERR_ADD_PARAM;
    return NULL;
}

int led_on_off(int mode, float param[]) {
        for (int i = 0; i < 3; i++) {
            if (param[i] == 1)
                ESP_ERROR_CHECK(gpio_set_level(GPIO_LED_1, mode));
            else if (param[i] == 2)
                ESP_ERROR_CHECK(gpio_set_level(GPIO_LED_2, mode));
            else if (param[i] == 3)
                ESP_ERROR_CHECK(gpio_set_level(GPIO_LED_3, mode));
            else if (param[i] == 0)
                break;
        }
        return EXIT_SUCCESS;

}

int led_pulse(int argc, char **argv, float param[]) {
//    int del = param[1] * 250;
    printf("arg = %d\n", argc);
//
//    if(argc > 4 || argc < 3) {
//        uart_write_bytes(UART_NUM_1, ERR_BAD_ARG, sizeof(ERR_BAD_ARG));
//        return -1;
//    }
    char *err_s = check_arg(argc, argv, 4, param);
    if(err_s == NULL) {
        printf("in else\n");
//        while(1) {
//            ESP_ERROR_CHECK(gpio_set_level(GPIO_LED_1, 1));
//            vTaskDelay(del/portTICK_PERIOD_MS);
//            ESP_ERROR_CHECK(gpio_set_level(GPIO_LED_1, 0));
////            vTaskDelay(20/portTICK_PERIOD_MS);
//        }
    }
    else {
        uart_write_bytes(UART_NUM_1, err_s, strlen(err_s));
        return EXIT_FAILURE;
    }
    return 0;

}


int leds_module(int argc, char **argv) {
    int exit_status = 0;
    float param[argc - 2];
    char *err_str;
    leds_config();

    if (!strcmp("pulse", argv[1])) {
        printf("adfkhaskdfhalkdhflksjdhfklsh\n");
            exit_status = led_pulse(argc, argv, param);
    }
    else if ((err_str = check_arg(argc, argv, 5, param)) == NULL) {
        if (!strcmp("on", argv[1]))
            exit_status = led_on_off(1, param);
        else if (!strcmp("off", argv[1]))
            exit_status = led_on_off(0, param);
    }
    else if(err_str) {
        uart_write_bytes(UART_NUM_1, err_str, strlen(err_str));
        exit_status = EXIT_FAILURE;
    }
    return exit_status;
}

//ESP_ERROR_CHECK(gpio_set_level(GPIO_LED_1, 0));
//    ESP_ERROR_CHECK(gpio_set_level(GPIO_LED_2, 0));
//    ESP_ERROR_CHECK(gpio_set_level(GPIO_LED_3, 0));
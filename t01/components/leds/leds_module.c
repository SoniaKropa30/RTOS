#include "leds.h"

static TaskHandle_t	led_pulse_1 = NULL;
static TaskHandle_t	led_pulse_2 = NULL;
static TaskHandle_t	led_pulse_3 = NULL;

static void leds_config(void) {
    ESP_ERROR_CHECK(gpio_set_direction(GPIO_LED_1, GPIO_MODE_OUTPUT));
    ESP_ERROR_CHECK(gpio_set_direction(GPIO_LED_2, GPIO_MODE_OUTPUT));
    ESP_ERROR_CHECK(gpio_set_direction(GPIO_LED_3, GPIO_MODE_OUTPUT));
}


char *check_arg(int argc, char **argv, int max_param_num,
                float param[]) {
    bzero((void*)param, 10);
    int k = 0;

    if (strcmp("on", argv[1]) && strcmp("off", argv[1])
        && strcmp("pulse", argv[1]))
        return ERR_COMM_NOT_FOUND;
    if (((argc + 1) - max_param_num) > 2)
        return ERR_TO_MANY_ARG;
    if (argv[2]) {
        for (int i = 2; i < argc; i++) {
            if((param[k] = atoi(argv[i])) < 1 || param[k] > 3)
                return ERR_BAD_ARG;
            k++;
        }
    }
    else if (!argv[2])
        return ERR_ADD_PARAM;
    return NULL;
}

void delete_running_tasks(int led_num) {
    if (led_num == 1 && led_pulse_1 != NULL) {
        printf("deleted task\n");
        vTaskDelete(led_pulse_1);
        led_pulse_1 = NULL;
    }
    else if (led_num == 2 && led_pulse_2 != NULL) {
        printf("deleted task\n");
        vTaskDelete(led_pulse_2);
        led_pulse_2 = NULL;
    }
    else if (led_num == 3 && led_pulse_3 != NULL) {
        printf("deleted task\n");
        vTaskDelete(led_pulse_3);
        led_pulse_3 = NULL;
    }
}

int led_on_off(int mode, float param[]) {
    printf("in off mode\n");

    for (int i = 0; i < 3; i++) {
        delete_running_tasks((int)param[i]);
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



void led_pulse_task (void *data) {
    float *param = (float *)data;
    if (!param) return;
    int gpio_num = ((gpio_num = param[0]) == 1) ? 27 : (gpio_num == 2) ? 26 : 33;
    int delay = param[1] * 130;

    while(1) {
            ESP_ERROR_CHECK(gpio_set_level(gpio_num, 1));
            vTaskDelay(delay/portTICK_PERIOD_MS);
            ESP_ERROR_CHECK(gpio_set_level(gpio_num, 0));
            vTaskDelay((250 - delay)/portTICK_PERIOD_MS);
    }
}

int check_led_pulse(int argc, char **argv, float param[]) {
    if (argc > 4) {
        uart_write_bytes(UART_NUM_1, ERR_TO_MANY_ARG, sizeof(ERR_TO_MANY_ARG));
        return -1;
    }
    else if (argc < 4) {
        uart_write_bytes(UART_NUM_1, ERR_ADD_PARAM, sizeof(ERR_ADD_PARAM));
        return -1;
    }
    int led_num = atoi(argv[2]);
    float frequency = atof(argv[3]);
    if ((led_num != 1 && led_num != 2 && led_num != 3)
            || (frequency <= 0 || frequency >= 2)) {
        uart_write_bytes(UART_NUM_1, ERR_BAD_ARG, sizeof(ERR_BAD_ARG));
        return -1;
    }
    else {
        param[0] = (float)led_num;
        param[1] = frequency;
        return 0;
    }
}

int led_pulse(int argc, char **argv, float *param) {
    if(check_led_pulse(argc, argv, param) != -1) {
        delete_running_tasks((int)param[0]);
        if (param[0] == 1)
            xTaskCreate(led_pulse_task, "led_pulse_task", 2048,
                    param,5, &led_pulse_1);
        else if (param[0] == 2)
            xTaskCreate(led_pulse_task, "led_pulse_task", 2048,
                    param,5, &led_pulse_2);
        else
            xTaskCreate(led_pulse_task, "led_pulse_task", 2048,
                    param,5, &led_pulse_3);
        return EXIT_SUCCESS;
    }
    return EXIT_FAILURE;
}


int leds_module(int argc, char **argv) {
    float param[argc - 2];
    char *err_str;
    int exit_status = 0;
    leds_config();

    if (!strcmp("pulse", argv[1]))
            exit_status = led_pulse(argc, argv, param);
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


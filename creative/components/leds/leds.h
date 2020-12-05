#ifndef LEDS_H
#define LEDS_H

#define GPIO_LED_1 27
#define GPIO_LED_2 26
#define GPIO_LED_3 33

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
#include <unistd.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "driver/uart.h"
#include "esp_system.h"

#include "driver/ledc.h"
#include "esp_err.h"
#include <driver/dac.h>

#define ERR_COMM_NOT_FOUND      "\x1b[31mrtos: command not found\n\r\x1b[0m"
#define ERR_TO_MANY_ARG         "\x1b[31mrtos: too many arguments\n\r\x1b[0m"
#define ERR_BAD_ARG             "\x1b[31mrtos: bad argument\n\r\x1b[0m"
#define ERR_ADD_PARAM           "\x1b[31mrtos: please add parameters\n\r\x1b[0m"



int leds_module(int argc, char **argv);

#endif

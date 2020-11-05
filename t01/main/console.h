#ifndef CONSOLE_H
#define CONSOLE_H

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "driver/uart.h"
#include "libmx.h"

#define UART_TX_PIN 17
#define UART_RX_PIN 16
#define BUF_SIZE                1024
#endif

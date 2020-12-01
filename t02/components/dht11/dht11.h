#ifndef DHT11_H
#define DHT11_H

#include <stdio.h>
#include <unistd.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/ledc.h"
#include "esp_err.h"
#include <driver/dac.h>
#include <stdbool.h>
#include <strings.h>
#include <string.h>
#include "freertos/queue.h"
#include "mx_function.h"

#define GPIO_POWER                  2
#define GPIO_DATA                   4
#define STACK_SIZE                  60

//typedef struct s_dht11 {
//    int temp;
//    int hum;
//    int time;
//} t_dht11;


void dht11_initialization(void);
void sensor_activation(void);
int take_data_from_dht11(int *temp, int *hum);
void data_from_dht11(void *data);
void push_to_stack(void *data);

#endif

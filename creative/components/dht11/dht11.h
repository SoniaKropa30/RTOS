#ifndef DHT11_H
#define DHT11_H

#include "driver/ledc.h"
#include "esp_err.h"
#include "mx_function.h"
#include "components.h"

#define GPIO_POWER                      2
#define GPIO_DATA                       4
#define STACK_SIZE                      60

#define TIMER_DIVIDER                   80
#define TIMER_SCALE                     (TIMER_BASE_CLK / TIMER_DIVIDER)

void dht11_initialization(void);
void sensor_activation(void);
int take_data_from_dht11(int *temp, int *hum);
void data_from_dht11(void *data);
void push_to_stack(void *data);
void print_tem_hum_time(t_app *app);

#endif

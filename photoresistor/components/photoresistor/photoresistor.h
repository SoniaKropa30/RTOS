#ifndef PHOTORESISTOR_H
#define PHOTORESISTOR_H

#include "driver/gpio.h"
#include <strings.h>
#include <string.h>
#include <driver/adc.h>
#include <pthread.h>
#include "oled.h"

typedef struct s_data {
    int         light;
} t_data;

void data_from_photoresistor_to_oled(void *arg);

#endif
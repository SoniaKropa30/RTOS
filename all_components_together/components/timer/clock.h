#ifndef CLOCK_H
#define CLOCK_H

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
#include <driver/timer.h>

#include "mx_function.h"
#include "components.h"
#include "oled.h"
#include "math.h"

#define DAILY_TIME                      86400 //in second  1440 - in min

void timer_initialise(t_app *app);
void timer_task(void * data);
int set_time (char *argv[]);
bool valid_time(char *argv);
int set_alarm(char *argv[], t_app *app);
int stop_alarm(char *argv[]);
#endif

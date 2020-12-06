#ifndef CONSOLE_H
#define CONSOLE_H

#include "mx_function.h"
#include "components.h"
#include "dht11.h"
#include "leds.h"
#include "make_some_noise.h"
#include "clock.h"


void data_from_uart(void *data);
void init_main_struct_data(t_app *app);

#endif

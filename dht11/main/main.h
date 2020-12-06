#ifndef CONSOLE_H
#define CONSOLE_H

#include "mx_function.h"
#include "dht11.h"
#include "components.h"

void data_from_uart(void *data);
void init_console_data(t_app *app);

#endif

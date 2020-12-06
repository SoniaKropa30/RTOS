#ifndef MAKE_SOME_NOISE
#define MAKE_SOME_NOISE

#include "esp_err.h"
#include <driver/dac.h>
#include "driver/i2s.h"
#include "driver/dac.h"

#include "components.h"

#define AMPLYFIER                   23

int make_some_noise(char *argv);
void noise_task(void *data);
void init_i2s();

#endif

#ifndef MAKE_SOME_NOISE
#define MAKE_SOME_NOISE

#include "esp_err.h"
#include <driver/dac.h>
#include "driver/i2s.h"
#include "driver/dac.h"

#include "components.h"

int make_some_noise(char *argv);
void init_i2s();

#endif

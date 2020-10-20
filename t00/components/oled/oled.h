
#ifndef OLED_H
#define OLED_H

#define SDA_PIN  GPIO_NUM_21
#define SCL_PIN  GPIO_NUM_22
#define I2C_ADDR 0x3C
#define I2C_PORT I2C_NUM_0
#define SCREEN_WIDTH 128
#define PAGE_COUNT 8
#define SCREEN_SIZE 1024 // width * number of pages

#include "driver/gpio.h"
#include "driver/i2c.h"
#include "driver/i2c.h"
#include <strings.h>
#include <string.h>


typedef struct s_display {
    uint8_t addr;           // I2C address
    i2c_port_t port;        // I2C interface port
    uint8_t buffer[8][128]; // page buffer
} t_display;

void oled_initialization(t_display *display);
void oled_config(t_display *display);
void init_i2c(void);
void display_fill(t_display *display);
void display_clear(t_display *display);
void buffer_to_oled(t_display *display);
void AsciiStr_to_fontStr(char *str, t_display *display);
#endif
#ifndef CONSOLE_H
#define CONSOLE_H

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
#include <unistd.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "driver/uart.h"
#include "esp_system.h"
#include "esp_spi_flash.h"
#include "driver/gpio.h"
//#include "queue.h"

#define GPIO_LED_1 27
#define GPIO_LED_2 26
#define GPIO_LED_3 33


#define UART_TX_PIN 17
#define UART_RX_PIN 16
#define BUF_SIZE                1024

#define ERR_COMM_NOT_FOUND      "rtos: command not found\n\r"
#define ERR_TO_MANY_ARG         "rtos: too many arguments\n\r"
#define ERR_BAD_ARG             "rtos: bad argument\n\r"
#define ERR_ADD_PARAM           "rtos: please add parameters\n\r"

//#define




//typedef void (*f_funcPtr)(void*);

//typedef struct s_command {
//    char        *command_name;
//    f_funcPtr   func_name;
//}               t_command;

typedef struct s_list {
    void        *data;
    struct      s_list *next;
}               t_list;

typedef struct s_app {

} t_app;

t_list  *mx_create_node(void *data);
void mx_push_front(t_list **list, void *data);
void mx_push_back(t_list **list, void *data);
void mx_pop_front(t_list **head);
void mx_pop_back(t_list **head);
int mx_list_size(t_list *list);
t_list *mx_sort_list(t_list *lst, bool (*cmp)(void *, void *));
char **mx_strsplit(const char *s, char c);
int mx_arr_size(char **arr);
int leds_module(int argc, char **argv);

#endif

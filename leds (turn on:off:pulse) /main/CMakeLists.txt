idf_component_register(SRCS "main.c"
                        SRCS "data_from_uart.c"
                        INCLUDE_DIRS "."
                        REQUIRES leds
                        REQUIRES mx_function
                        )
idf_component_register(SRCS "main.c"
                        SRCS "data_from_uart.c"
                        INCLUDE_DIRS "."
                        REQUIRES dht11
                        REQUIRES include
                        REQUIRES make_noise
                        REQUIRES mx_function
                        REQUIRES timer
                        REQUIRES oled
                        REQUIRES leds

        )
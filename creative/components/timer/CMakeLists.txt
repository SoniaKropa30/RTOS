idf_component_register( SRCS "timer.c"
                        SRCS "set_stop_alarm.c"
                        REQUIRES mx_function
                        REQUIRES include
                        REQUIRES oled
                        INCLUDE_DIRS ".")
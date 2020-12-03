idf_component_register(SRCS "dht11.c"
                        SRCS "data_from_dht11.c"
                        SRCS "timer.c"
                        REQUIRES mx_function
                        REQUIRES include
                        INCLUDE_DIRS ".")
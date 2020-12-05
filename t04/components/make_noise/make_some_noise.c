#include "make_some_noise.h"

u_int8_t sound[] = {0xFF};
size_t size_i2s = 0;

static xTaskHandle noise_handler = NULL;


void init_i2s() {
    ESP_ERROR_CHECK(dac_output_enable(DAC_CHANNEL_1));
    ESP_ERROR_CHECK(gpio_set_direction(23, GPIO_MODE_OUTPUT)); // AMPLYFIER
    ESP_ERROR_CHECK(gpio_set_direction(23, 1)); // AMPLYFIER

    static const i2s_config_t i2s_config = {
            .mode = I2S_MODE_MASTER | I2S_MODE_TX | I2S_MODE_DAC_BUILT_IN,
            .sample_rate = 44100,
            .bits_per_sample = 16, /* the DAC module will only take the 8bits from MSB */
            .channel_format = I2S_CHANNEL_FMT_RIGHT_LEFT,
            .intr_alloc_flags = 0, // default interrupt priority
            .dma_buf_count = 2,
            .dma_buf_len = 1024,
            .use_apll = true
    };


    i2s_driver_install(I2S_NUM_0, &i2s_config, 0, NULL);   //install and start i2s driver
    i2s_set_pin(I2S_NUM_0, NULL);
    i2s_start(I2S_NUM_0);
    i2s_write(I2S_NUM_0, sound, sizeof(sound), &size_i2s, 100);
    i2s_stop(I2S_NUM_0);
}

void noise_task(void *data) {

    while (1) {
        i2s_start(I2S_NUM_0);
        i2s_write(I2S_NUM_0, sound, sizeof(sound), &size_i2s, 500);
        i2s_stop(I2S_NUM_0);
        vTaskDelay(10/portTICK_RATE_MS);
    }
}


int make_some_noise(char *argv) {
    if(!strcmp(argv, "on")) {
        xTaskCreate(&noise_task, "noise_task", 2048, NULL, 3, &noise_handler);
        return EXIT_SUCCESS;
    }
    else if(!strcmp(argv, "off")) {
        vTaskDelete(noise_handler);
        noise_handler = NULL;
        return EXIT_SUCCESS;
    }
    else {
        uart_write_bytes( UART_NUM_1, ERR_COMM_NOT_FOUND, sizeof(ERR_COMM_NOT_FOUND));
        return EXIT_FAILURE;
    }
}


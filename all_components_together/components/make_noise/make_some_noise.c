#include "make_some_noise.h"

void init_i2s() {
    ESP_ERROR_CHECK(dac_output_enable(DAC_CHANNEL_1));
    ESP_ERROR_CHECK(gpio_set_direction(AMPLYFIER, GPIO_MODE_OUTPUT));
    ESP_ERROR_CHECK(gpio_set_direction(AMPLYFIER, 1));

    static const i2s_config_t i2s_config = {
            .mode = I2S_MODE_MASTER | I2S_MODE_TX | I2S_MODE_DAC_BUILT_IN,
            .sample_rate = 44100,
            .bits_per_sample = 16, /* the DAC module will only take the 8bits from MSB */
            .channel_format = I2S_CHANNEL_FMT_RIGHT_LEFT,
            .intr_alloc_flags = 0, // default interrupt priority
            .dma_buf_count = 8,
            .dma_buf_len = 1024,
            .use_apll = true
    };
    u_int8_t sound[] = {0xFF, 0xFF, 0xFF, 0xFF, 0xFF};
    size_t size_i2s = 0;
    ESP_ERROR_CHECK(i2s_driver_install(I2S_NUM_0, &i2s_config, 0, NULL));   //install and start i2s driver
    ESP_ERROR_CHECK(i2s_set_pin(I2S_NUM_0, NULL));
    ESP_ERROR_CHECK(i2s_start(I2S_NUM_0));
    ESP_ERROR_CHECK(i2s_write(I2S_NUM_0, sound, sizeof(sound), &size_i2s, 100));
    ESP_ERROR_CHECK(i2s_stop(I2S_NUM_0));
}

int make_some_noise(char *argv) {
    if (!strcmp(argv, "on")) {
        ESP_ERROR_CHECK(i2s_start(I2S_NUM_0));
        return EXIT_SUCCESS;
    }
    else if(!strcmp(argv, "off")) {
        ESP_ERROR_CHECK(i2s_stop(I2S_NUM_0));
        return EXIT_SUCCESS;
    }
    else {
        uart_write_bytes( UART_NUM_1, ERR_COMM_NOT_FOUND, sizeof(ERR_COMM_NOT_FOUND));
        return EXIT_FAILURE;
    }
}


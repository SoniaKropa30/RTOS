#include "oled.h"
#include "photoresistor.h"

void change_contrast(t_display *display, int value) {
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, (display->addr << 1) | I2C_MASTER_WRITE, true);
    ESP_ERROR_CHECK(i2c_master_write_byte(cmd, 0x00, true));
    ESP_ERROR_CHECK(i2c_master_write_byte(cmd, 0x81, true));
    ESP_ERROR_CHECK(i2c_master_write_byte(cmd, value, true));
    i2c_master_stop(cmd);
    i2c_master_cmd_begin(display->port, cmd, 10 / portTICK_PERIOD_MS);
    i2c_cmd_link_delete(cmd);

}

void initialization(t_display *display) {
    oled_config(display);
    oled_initialization(display);
    display_fill(display);
    buffer_to_oled(display);
    adc1_config_width(ADC_WIDTH_BIT_12);
    adc1_config_channel_atten(ADC1_CHANNEL_0, ADC_ATTEN_DB_0);
}


void data_from_photoresistor_to_oled(void *arg) {
    t_data *app = (t_data*)arg;
    t_display *display = malloc(sizeof(t_display));
    initialization(display);
    int val = 0;

    while (1) {
        val = adc1_get_raw(ADC1_CHANNEL_0);
        printf("%d\n", val);
        app->light = 255 - (val / 40.95 * 2.55);
        printf("%d\n", app->light);
        change_contrast(display, app->light);
        vTaskDelay(10 / portTICK_PERIOD_MS);
    }
}

void app_main() {
        t_data *app = malloc(sizeof(t_data));

    xTaskCreate(data_from_photoresistor_to_oled, "data_from_photoresistor_to_oled",
                4096, app, 5, NULL);
}






//pthread_t tid[2];
//pthread_mutex_t lock;

//in main
// int err;
//
//        if (pthread_mutex_init(&lock, NULL) != 0)
//            printf("\n mutex init failed\n");
//        err = pthread_create(&(tid[0]), NULL, &data_from_photoresistor, &app);
//        if (err != 0)
//            printf("\ncan't create thread :[%s]", strerror(err));
//        err = pthread_create(&(tid[1]), NULL, &data_to_oled, &app);
//        if (err != 0)
//            printf("\ncan't create thread :[%s]", strerror(err));
//        pthread_join(tid[0], NULL);
//        pthread_join(tid[1], NULL);
//        pthread_mutex_destroy(&lock);


//void *data_to_oled(void *arg) {
//    t_data *app = (t_data*)arg;
//    t_display *display = malloc(sizeof(t_display));
//    oled_config(display);
//    oled_initialization(display);
//    display_fill(display);
//    buffer_to_oled(display);
//    adc1_config_width(ADC_WIDTH_BIT_12);
//    adc1_config_channel_atten(ADC1_CHANNEL_0, ADC_ATTEN_DB_0);
//    int val = 0;
//
//    while (1) {
//        val = adc1_get_raw(ADC1_CHANNEL_0);
//        printf("%d\n", val);
//        app->light = val / 40.95 * 2.55;
//        printf("%d\n", app->light);
////        vTaskDelay(10 / portTICK_PERIOD_MS);
//        change_contrast(display, app->light);
//        vTaskDelay(10 / portTICK_PERIOD_MS);
//    }
//}

//void *data_to_oled(void *arg) {
//    t_data *app = (t_data*)arg;
//    t_display *display = malloc(sizeof(t_display));
//    oled_config(display);
//    oled_initialization(display);
//    display_fill(display);
//    buffer_to_oled(display);
//
//    while (1) {
//        change_contrast(display, app->light);
//        vTaskDelay(10 / portTICK_PERIOD_MS);
//    }
//}
//
//void *data_from_photoresistor(void *arg) {
//    t_data *app = (t_data*)arg;
//    int val = 0;
//
//    adc1_config_width(ADC_WIDTH_BIT_12);
//    adc1_config_channel_atten(ADC1_CHANNEL_0, ADC_ATTEN_DB_0);
//    while (1) {
//        val = adc1_get_raw(ADC1_CHANNEL_0);
//        printf("%d\n", val);
//        app->light = val / 40.95 * 2.55;
//        printf("%d\n", app->light);
//        vTaskDelay(10 / portTICK_PERIOD_MS);
//    }
//}

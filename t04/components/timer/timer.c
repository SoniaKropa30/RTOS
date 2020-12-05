#include "clock.h"


static void  IRAM_ATTR change_timer_interrupt_setting(void *data) {
    t_app *app = (t_app*)data;
    timer_spinlock_take(TIMER_GROUP_0);
    uint64_t timer_val = timer_group_get_counter_value_in_isr(TIMER_GROUP_0, TIMER_0);
    timer_group_clr_intr_status_in_isr(TIMER_GROUP_0, 0);
    uint64_t next_alarm = timer_val + ( 1 * TIMER_SCALE);
    timer_group_set_alarm_value_in_isr(TIMER_GROUP_0, TIMER_0, next_alarm);
    timer_group_enable_alarm_in_isr(TIMER_GROUP_0, 0);
    xTaskNotifyFromISR(app->clock, timer_val / 1000000, eSetValueWithOverwrite, 0);
    timer_spinlock_give(TIMER_GROUP_0);
}

void timer_initialise (t_app *app) {
    timer_config_t timer_config_1 = {
            .alarm_en = TIMER_ALARM_DIS,
            .counter_en = TIMER_START,
            .intr_type = TIMER_INTR_LEVEL,
            .counter_dir = TIMER_COUNT_UP,
            .auto_reload = TIMER_AUTORELOAD_DIS,
            .divider = TIMER_DIVIDER,
    };
    ESP_ERROR_CHECK(timer_init(TIMER_GROUP_1, TIMER_0, &timer_config_1));
    timer_config_t timer_config_2 = {
            .alarm_en = TIMER_ALARM_EN,
            .counter_en = TIMER_PAUSE,
            .intr_type = TIMER_INTR_LEVEL,
            .counter_dir = TIMER_COUNT_UP,
            .auto_reload = TIMER_AUTORELOAD_DIS,
            .divider = TIMER_DIVIDER,
    };
    ESP_ERROR_CHECK(timer_init(TIMER_GROUP_0, 0, &timer_config_2));
    ESP_ERROR_CHECK(timer_set_alarm_value(TIMER_GROUP_0, TIMER_0, 1 * TIMER_SCALE));
    ESP_ERROR_CHECK(timer_enable_intr(TIMER_GROUP_0, TIMER_0));
    timer_isr_register(TIMER_GROUP_0, TIMER_0, &change_timer_interrupt_setting, app,
                       ESP_INTR_FLAG_IRAM, NULL);
}


void timer_task(void *data) {
    t_app *app = (t_app *)data;
    double res = 0;
    int hms[3] = {0, 0, 0};
    uint32_t cur_time = 0;

    timer_start(TIMER_GROUP_0, TIMER_0);
    while (1) {
        xTaskNotifyWait(0xffffffff, 0, &cur_time, portMAX_DELAY);
        timer_get_counter_time_sec(TIMER_GROUP_0, TIMER_0, &res);
        if(res >= DAILY_TIME) {
            memset(&hms, 0, sizeof(int) * 3);
            timer_set_counter_value(TIMER_GROUP_0, TIMER_0, 0);
            timer_set_alarm_value(TIMER_GROUP_0, TIMER_0, 1);
        }
        else {
            hms[0] = (int) cur_time / 3600;
            hms[1] = ((int) cur_time % 3600) / 60;
            hms[2] = (int) cur_time % 3600 % 60;
        }
        memset(app->time, 0, 9);
        sprintf(app->time, "%02d:%02d:%02d", hms[0], hms[1], hms[2]);
        vTaskDelay( 10 / portTICK_PERIOD_MS);
    }
}
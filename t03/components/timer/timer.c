#include "clock.h"

void timer_initialise () {
    timer_config_t config = {
            .alarm_en = TIMER_ALARM_DIS,
            .counter_en = TIMER_START,
            .intr_type = TIMER_INTR_LEVEL,
            .counter_dir = TIMER_COUNT_UP,
            .auto_reload = TIMER_AUTORELOAD_DIS,
            .divider = TIMER_DIVIDER,
    };
    timer_init(TIMER_GROUP_0, TIMER_0, &config);
    timer_set_counter_value(TIMER_GROUP_0, TIMER_0, 0);
    timer_set_alarm_value(TIMER_GROUP_0, TIMER_0, 1);

    timer_enable_intr(TIMER_GROUP_0, TIMER_0);
//    timer_isr_register(TIMER_GROUP_0, TIMER_0, &timer_tg0_isr, NULL, 0, &s_timer_handle);

    timer_start(TIMER_GROUP_0, TIMER_0);
}

//todo
void adf() {
    timer_spinlock_take(TIMER_GROUP_0);
    uint64_t timer_val = timer_group_get_counter_value_in_isr(TIMER_GROUP_0, TIMER_0);
    timer_group_clr_intr_status_in_isr(TIMER_GROUP_0, 0);
    uint64_t next_alarm = timer_val + ( 1 * TIMER_SCALE);
    timer_group_set_alarm_value_in_isr(TIMER_GROUP_0, TIMER_0, next_alarm);
    timer_group_enable_alarm_in_isr(TIMER_GROUP_0, 0);
    xTaskNotifyFromISR(d->oled_time_task, timer_val / 1000000, eSetValueWithOverwrite, 0);
    timer_spinlock_give(TIMER_GROUP_0);
}
//todo

void timer_task(void *data) {
    t_app *app = (t_app *)data;
    double res = 0;
    int h = 0;
    int m = 0;
    int s = 0;

    while (1) {
        memset(app->time, 0, 6);
        timer_get_counter_time_sec(TIMER_GROUP_0, TIMER_0, &res);
        if(res < DAILY_TIME) {
            h = (int) res / 3600;
            m = ((int) res % 3600) / 60;
            s = (int) res % 3600 % 60;
            sprintf(app->time, "%02d:%02d:%02d", h, m, s);
        }
        else {
            // reset time
            sprintf(app->time, "%02D:%02d:%02d", 0, 0, 0);
        }
        vTaskDelay(10);
    }
}
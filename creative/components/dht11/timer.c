#include "dht11.h"

void timer_initialise () {
//    timer_config_t config = {
//            .alarm_en = true,				//Alarm Enable
//            .counter_en = false,			//If the counter is enabled it will start incrementing / decrementing immediately after calling timer_init()
//            .intr_type = TIMER_INTR_LEVEL,	//Is interrupt is triggered on timer’s alarm (timer_intr_mode_t)
//            .counter_dir = TIMER_COUNT_UP,	//Does counter increment or decrement (timer_count_dir_t)
//            .auto_reload = true,			//If counter should auto_reload a specific initial value on the timer’s alarm, or continue incrementing or decrementing.
//            .divider = TIMER_DIVIDER   		//Divisor of the incoming 80 MHz (12.5nS) APB_CLK clock. E.g. 80 = 1uS per timer tick
//    };
    timer_config_t config = {
            .alarm_en = TIMER_ALARM_DIS,
            .counter_en = TIMER_START,
            .intr_type = TIMER_INTR_LEVEL,
            .counter_dir = TIMER_COUNT_UP,
            .auto_reload = TIMER_AUTORELOAD_DIS,
            .divider = TIMER_DIVIDER,
    };

    timer_init(TIMER_GROUP_0, TIMER_0, &config);
//    timer_set_counter_value(TIMER_GROUP_0, TIMER_0, 0);
//    timer_set_alarm_value(TIMER_GROUP_0, TIMER_0, timer_period_us);
//    timer_enable_intr(TIMER_GROUP_0, TIMER_0);
//    timer_isr_register(TIMER_GROUP_0, TIMER_0, &timer_tg0_isr, NULL, 0, &s_timer_handle);
//
//    timer_start(TIMER_GROUP_0, TIMER_0);
}
#include <sc32_conf.h>
#include <rtthread.h>
#include <stdio.h>

int main()
{
    while (1) {
        rt_kprintf("Hello world!\n");
        rt_thread_delay(500);
    }
}

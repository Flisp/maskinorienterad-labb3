/*
 * 	startup.c
 *
 */
#include "gpio.h"
#include "GrafiskDisp.h"
void startup(void) __attribute__((naked)) __attribute__((section(".start_section")));

void startup(void)
{
    asm volatile(" LDR R0,=0x2001C000\n" /* set stack */
                 " MOV SP,R0\n"
                 " BL main\n"   /* call main */
                 ".L1: B .L1\n" /* never return */
        );
}

void main(void)
{
    uint32_t i;
    init_app();
    graphic_initialize();
    graphic_clearScreen();

    for(i = 1; i <= 128; i++)
        pixel(i, 10, 1);
    for(i = 1; i <= 64; i++)
        pixel(10, i, 1);

    delay_ms(500);

    for(i = 1; i <= 128; i++)
        pixel(i, 10, 0);
    for(i = 1; i <= 64; i++)
        pixel(10, i, 0);
}

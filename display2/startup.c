/*
 * 	startup.c
 *
 */
 
#include "gameObj.h"
#include "delay.h"
#include "gpio.h"
#include "grafikDisp.h"
 
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	".L1: B .L1\n"				/* never return */
	) ;
}

static GEOMETRY ball_geometry = {
    12,         /* antal punkter */
    4, 4,       /* bredd och höjd */
    {
               {0,1}, {0,2},
        {1,0}, {1,1}, {1,2}, {1,3},
        {2,0}, {2,1}, {2,2}, {2,3},
               {3,1}, {3,2}
    }
};

/* Initiera en struct OBJECT */
static OBJECT ball = {
    &ball_geometry,
    0, 0,
    1, 1,
    draw_object,
    clear_object,
    move_object,
    set_object_speed
};

void main(void)
{
    POBJECT p= &ball;
    init_app();
    graphic_initialize();
    graphic_clearScreen();
    p->set_speed (p,8,1);
    
    while(1) 
    {
        p->move(p);
        delay_ms (40);
    }
}


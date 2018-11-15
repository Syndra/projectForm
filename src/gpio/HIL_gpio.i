# 1 "./src/HIL_gpio.c"
# 1 "/home/pi/Desktop/gpio_control/src/gpio//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./src/HIL_gpio.c"
# 1 "../../hdr/HIL_defs.h" 1
# 2 "./src/HIL_gpio.c" 2
# 1 "../../hdr/HIL_types.h" 1
# 36 "../../hdr/HIL_types.h"
typedef signed long s32;
typedef unsigned long u32;
typedef signed short s16;
typedef unsigned short u16;
typedef signed char s8;
typedef unsigned char u8;




typedef s32* ps32;
typedef u32* pu32;
typedef s16* ps16;
typedef u16* pu16;
typedef s8* ps8;
typedef u8* pu8;




typedef u32 HIL_RESULT;
typedef int HIL_BOOL;
# 3 "./src/HIL_gpio.c" 2
# 1 "./hdr/HIL_gpio.h" 1
# 9 "./hdr/HIL_gpio.h"
HIL_RESULT gpio_write(u32 pin, u32 value);




HIL_RESULT gpio_read(u32 pin, u32 *value);
# 4 "./src/HIL_gpio.c" 2
# 1 "./hdr/wiringpi_gpio.h" 1
# 9 "./hdr/wiringpi_gpio.h"
HIL_RESULT wiringpi_gpio_write(u32 pin, u32 value);




HIL_RESULT wiringpi_gpio_read(u32 pin, u32 *value);
# 5 "./src/HIL_gpio.c" 2
# 1 "./hdr/bcm_gpio.h" 1
# 9 "./hdr/bcm_gpio.h"
HIL_RESULT bcm_gpio_write(u32 pin, u32 value);




HIL_RESULT bcm_gpio_read(u32 pin, u32 *value);
# 6 "./src/HIL_gpio.c" 2
# 1 "./hdr/dev_gpio.h" 1
# 9 "./hdr/dev_gpio.h"
HIL_RESULT dev_gpio_write(u32 pin, u32 value);




HIL_RESULT dev_gpio_read(u32 pin, u32 *value);
# 7 "./src/HIL_gpio.c" 2

HIL_RESULT gpio_write(u32 pin, u32 value) {
    HIL_RESULT result;


    result = dev_gpio_write(pin, value);


    return result;
}

HIL_RESULT gpio_read(u32 pin, u32 *value) {
    HIL_RESULT result;


    result = dev_gpio_read(pin, value);


    return result;
}

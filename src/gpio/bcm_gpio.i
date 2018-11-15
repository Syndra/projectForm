# 1 "./src/bcm_gpio.c"
# 1 "/home/pi/Desktop/gpio_control/src/gpio//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./src/bcm_gpio.c"
# 1 "../../hdr/HIL_defs.h" 1
# 2 "./src/bcm_gpio.c" 2
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
# 3 "./src/bcm_gpio.c" 2
# 1 "./hdr/bcm_gpio.h" 1
# 9 "./hdr/bcm_gpio.h"
HIL_RESULT bcm_gpio_write(u32 pin, u32 value);




HIL_RESULT bcm_gpio_read(u32 pin, u32 *value);
# 4 "./src/bcm_gpio.c" 2
# 1 "/usr/local/include/bcm2835.h" 1 3
# 529 "/usr/local/include/bcm2835.h" 3
# 1 "/usr/lib/gcc/arm-linux-gnueabihf/6/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/arm-linux-gnueabihf/6/include/stdint.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
# 25 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 364 "/usr/include/features.h" 3 4
# 1 "/usr/include/arm-linux-gnueabihf/sys/cdefs.h" 1 3 4
# 415 "/usr/include/arm-linux-gnueabihf/sys/cdefs.h" 3 4
# 1 "/usr/include/arm-linux-gnueabihf/bits/wordsize.h" 1 3 4
# 416 "/usr/include/arm-linux-gnueabihf/sys/cdefs.h" 2 3 4
# 365 "/usr/include/features.h" 2 3 4
# 388 "/usr/include/features.h" 3 4
# 1 "/usr/include/arm-linux-gnueabihf/gnu/stubs.h" 1 3 4
# 10 "/usr/include/arm-linux-gnueabihf/gnu/stubs.h" 3 4
# 1 "/usr/include/arm-linux-gnueabihf/gnu/stubs-hard.h" 1 3 4
# 11 "/usr/include/arm-linux-gnueabihf/gnu/stubs.h" 2 3 4
# 389 "/usr/include/features.h" 2 3 4
# 26 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/arm-linux-gnueabihf/bits/wchar.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/arm-linux-gnueabihf/bits/wordsize.h" 1 3 4
# 28 "/usr/include/stdint.h" 2 3 4
# 36 "/usr/include/stdint.h" 3 4

# 36 "/usr/include/stdint.h" 3 4
typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;



__extension__
typedef long long int int64_t;




typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;





__extension__
typedef unsigned long long int uint64_t;






typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;



__extension__
typedef long long int int_least64_t;



typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;



__extension__
typedef unsigned long long int uint_least64_t;






typedef signed char int_fast8_t;





typedef int int_fast16_t;
typedef int int_fast32_t;
__extension__
typedef long long int int_fast64_t;



typedef unsigned char uint_fast8_t;





typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
__extension__
typedef unsigned long long int uint_fast64_t;
# 125 "/usr/include/stdint.h" 3 4
typedef int intptr_t;


typedef unsigned int uintptr_t;
# 137 "/usr/include/stdint.h" 3 4
__extension__
typedef long long int intmax_t;
__extension__
typedef unsigned long long int uintmax_t;
# 10 "/usr/lib/gcc/arm-linux-gnueabihf/6/include/stdint.h" 2 3 4
# 530 "/usr/local/include/bcm2835.h" 2 3
# 607 "/usr/local/include/bcm2835.h" 3
extern uint32_t *bcm2835_peripherals_base;

extern uint32_t bcm2835_peripherals_size;


extern uint32_t *bcm2835_peripherals;




extern volatile uint32_t *bcm2835_st;




extern volatile uint32_t *bcm2835_gpio;




extern volatile uint32_t *bcm2835_pwm;




extern volatile uint32_t *bcm2835_clk;




extern volatile uint32_t *bcm2835_pads;




extern volatile uint32_t *bcm2835_spi0;




extern volatile uint32_t *bcm2835_bsc0;




extern volatile uint32_t *bcm2835_bsc1;




extern volatile uint32_t *bcm2835_aux;




extern volatile uint32_t *bcm2835_spi1;





typedef enum
{
    BCM2835_REGBASE_ST = 1,
    BCM2835_REGBASE_GPIO = 2,
    BCM2835_REGBASE_PWM = 3,
    BCM2835_REGBASE_CLK = 4,
    BCM2835_REGBASE_PADS = 5,
    BCM2835_REGBASE_SPI0 = 6,
    BCM2835_REGBASE_BSC0 = 7,
    BCM2835_REGBASE_BSC1 = 8,
 BCM2835_REGBASE_AUX = 9,
 BCM2835_REGBASE_SPI1 = 10
} bcm2835RegisterBase;
# 728 "/usr/local/include/bcm2835.h" 3
typedef enum
{
    BCM2835_GPIO_FSEL_INPT = 0x00,
    BCM2835_GPIO_FSEL_OUTP = 0x01,
    BCM2835_GPIO_FSEL_ALT0 = 0x04,
    BCM2835_GPIO_FSEL_ALT1 = 0x05,
    BCM2835_GPIO_FSEL_ALT2 = 0x06,
    BCM2835_GPIO_FSEL_ALT3 = 0x07,
    BCM2835_GPIO_FSEL_ALT4 = 0x03,
    BCM2835_GPIO_FSEL_ALT5 = 0x02,
    BCM2835_GPIO_FSEL_MASK = 0x07
} bcm2835FunctionSelect;




typedef enum
{
    BCM2835_GPIO_PUD_OFF = 0x00,
    BCM2835_GPIO_PUD_DOWN = 0x01,
    BCM2835_GPIO_PUD_UP = 0x02
} bcm2835PUDControl;
# 772 "/usr/local/include/bcm2835.h" 3
typedef enum
{
    BCM2835_PAD_GROUP_GPIO_0_27 = 0,
    BCM2835_PAD_GROUP_GPIO_28_45 = 1,
    BCM2835_PAD_GROUP_GPIO_46_53 = 2
} bcm2835PadGroup;
# 793 "/usr/local/include/bcm2835.h" 3
typedef enum
{
    RPI_GPIO_P1_03 = 0,
    RPI_GPIO_P1_05 = 1,
    RPI_GPIO_P1_07 = 4,
    RPI_GPIO_P1_08 = 14,
    RPI_GPIO_P1_10 = 15,
    RPI_GPIO_P1_11 = 17,
    RPI_GPIO_P1_12 = 18,
    RPI_GPIO_P1_13 = 21,
    RPI_GPIO_P1_15 = 22,
    RPI_GPIO_P1_16 = 23,
    RPI_GPIO_P1_18 = 24,
    RPI_GPIO_P1_19 = 10,
    RPI_GPIO_P1_21 = 9,
    RPI_GPIO_P1_22 = 25,
    RPI_GPIO_P1_23 = 11,
    RPI_GPIO_P1_24 = 8,
    RPI_GPIO_P1_26 = 7,


    RPI_V2_GPIO_P1_03 = 2,
    RPI_V2_GPIO_P1_05 = 3,
    RPI_V2_GPIO_P1_07 = 4,
    RPI_V2_GPIO_P1_08 = 14,
    RPI_V2_GPIO_P1_10 = 15,
    RPI_V2_GPIO_P1_11 = 17,
    RPI_V2_GPIO_P1_12 = 18,
    RPI_V2_GPIO_P1_13 = 27,
    RPI_V2_GPIO_P1_15 = 22,
    RPI_V2_GPIO_P1_16 = 23,
    RPI_V2_GPIO_P1_18 = 24,
    RPI_V2_GPIO_P1_19 = 10,
    RPI_V2_GPIO_P1_21 = 9,
    RPI_V2_GPIO_P1_22 = 25,
    RPI_V2_GPIO_P1_23 = 11,
    RPI_V2_GPIO_P1_24 = 8,
    RPI_V2_GPIO_P1_26 = 7,
    RPI_V2_GPIO_P1_29 = 5,
    RPI_V2_GPIO_P1_31 = 6,
    RPI_V2_GPIO_P1_32 = 12,
    RPI_V2_GPIO_P1_33 = 13,
    RPI_V2_GPIO_P1_35 = 19,
    RPI_V2_GPIO_P1_36 = 16,
    RPI_V2_GPIO_P1_37 = 26,
    RPI_V2_GPIO_P1_38 = 20,
    RPI_V2_GPIO_P1_40 = 21,


    RPI_V2_GPIO_P5_03 = 28,
    RPI_V2_GPIO_P5_04 = 29,
    RPI_V2_GPIO_P5_05 = 30,
    RPI_V2_GPIO_P5_06 = 31,


    RPI_BPLUS_GPIO_J8_03 = 2,
    RPI_BPLUS_GPIO_J8_05 = 3,
    RPI_BPLUS_GPIO_J8_07 = 4,
    RPI_BPLUS_GPIO_J8_08 = 14,
    RPI_BPLUS_GPIO_J8_10 = 15,
    RPI_BPLUS_GPIO_J8_11 = 17,
    RPI_BPLUS_GPIO_J8_12 = 18,
    RPI_BPLUS_GPIO_J8_13 = 27,
    RPI_BPLUS_GPIO_J8_15 = 22,
    RPI_BPLUS_GPIO_J8_16 = 23,
    RPI_BPLUS_GPIO_J8_18 = 24,
    RPI_BPLUS_GPIO_J8_19 = 10,
    RPI_BPLUS_GPIO_J8_21 = 9,
    RPI_BPLUS_GPIO_J8_22 = 25,
    RPI_BPLUS_GPIO_J8_23 = 11,
    RPI_BPLUS_GPIO_J8_24 = 8,
    RPI_BPLUS_GPIO_J8_26 = 7,
    RPI_BPLUS_GPIO_J8_29 = 5,
    RPI_BPLUS_GPIO_J8_31 = 6,
    RPI_BPLUS_GPIO_J8_32 = 12,
    RPI_BPLUS_GPIO_J8_33 = 13,
    RPI_BPLUS_GPIO_J8_35 = 19,
    RPI_BPLUS_GPIO_J8_36 = 16,
    RPI_BPLUS_GPIO_J8_37 = 26,
    RPI_BPLUS_GPIO_J8_38 = 20,
    RPI_BPLUS_GPIO_J8_40 = 21
} RPiGPIOPin;
# 974 "/usr/local/include/bcm2835.h" 3
typedef enum
{
    BCM2835_SPI_BIT_ORDER_LSBFIRST = 0,
    BCM2835_SPI_BIT_ORDER_MSBFIRST = 1
}bcm2835SPIBitOrder;




typedef enum
{
    BCM2835_SPI_MODE0 = 0,
    BCM2835_SPI_MODE1 = 1,
    BCM2835_SPI_MODE2 = 2,
    BCM2835_SPI_MODE3 = 3
}bcm2835SPIMode;




typedef enum
{
    BCM2835_SPI_CS0 = 0,
    BCM2835_SPI_CS1 = 1,
    BCM2835_SPI_CS2 = 2,
    BCM2835_SPI_CS_NONE = 3
} bcm2835SPIChipSelect;
# 1016 "/usr/local/include/bcm2835.h" 3
typedef enum
{
    BCM2835_SPI_CLOCK_DIVIDER_65536 = 0,
    BCM2835_SPI_CLOCK_DIVIDER_32768 = 32768,
    BCM2835_SPI_CLOCK_DIVIDER_16384 = 16384,
    BCM2835_SPI_CLOCK_DIVIDER_8192 = 8192,
    BCM2835_SPI_CLOCK_DIVIDER_4096 = 4096,
    BCM2835_SPI_CLOCK_DIVIDER_2048 = 2048,
    BCM2835_SPI_CLOCK_DIVIDER_1024 = 1024,
    BCM2835_SPI_CLOCK_DIVIDER_512 = 512,
    BCM2835_SPI_CLOCK_DIVIDER_256 = 256,
    BCM2835_SPI_CLOCK_DIVIDER_128 = 128,
    BCM2835_SPI_CLOCK_DIVIDER_64 = 64,
    BCM2835_SPI_CLOCK_DIVIDER_32 = 32,
    BCM2835_SPI_CLOCK_DIVIDER_16 = 16,
    BCM2835_SPI_CLOCK_DIVIDER_8 = 8,
    BCM2835_SPI_CLOCK_DIVIDER_4 = 4,
    BCM2835_SPI_CLOCK_DIVIDER_2 = 2,
    BCM2835_SPI_CLOCK_DIVIDER_1 = 1
} bcm2835SPIClockDivider;
# 1078 "/usr/local/include/bcm2835.h" 3
typedef enum
{
    BCM2835_I2C_CLOCK_DIVIDER_2500 = 2500,
    BCM2835_I2C_CLOCK_DIVIDER_626 = 626,
    BCM2835_I2C_CLOCK_DIVIDER_150 = 150,
    BCM2835_I2C_CLOCK_DIVIDER_148 = 148
} bcm2835I2CClockDivider;




typedef enum
{
    BCM2835_I2C_REASON_OK = 0x00,
    BCM2835_I2C_REASON_ERROR_NACK = 0x01,
    BCM2835_I2C_REASON_ERROR_CLKT = 0x02,
    BCM2835_I2C_REASON_ERROR_DATA = 0x04
} bcm2835I2CReasonCodes;
# 1153 "/usr/local/include/bcm2835.h" 3
typedef enum
{
    BCM2835_PWM_CLOCK_DIVIDER_2048 = 2048,
    BCM2835_PWM_CLOCK_DIVIDER_1024 = 1024,
    BCM2835_PWM_CLOCK_DIVIDER_512 = 512,
    BCM2835_PWM_CLOCK_DIVIDER_256 = 256,
    BCM2835_PWM_CLOCK_DIVIDER_128 = 128,
    BCM2835_PWM_CLOCK_DIVIDER_64 = 64,
    BCM2835_PWM_CLOCK_DIVIDER_32 = 32,
    BCM2835_PWM_CLOCK_DIVIDER_16 = 16,
    BCM2835_PWM_CLOCK_DIVIDER_8 = 8,
    BCM2835_PWM_CLOCK_DIVIDER_4 = 4,
    BCM2835_PWM_CLOCK_DIVIDER_2 = 2,
    BCM2835_PWM_CLOCK_DIVIDER_1 = 1
} bcm2835PWMClockDivider;
# 1197 "/usr/local/include/bcm2835.h" 3
    extern int bcm2835_init(void);




    extern int bcm2835_close(void);
# 1211 "/usr/local/include/bcm2835.h" 3
    extern void bcm2835_set_debug(uint8_t debug);




    extern unsigned int bcm2835_version(void);
# 1233 "/usr/local/include/bcm2835.h" 3
    extern uint32_t* bcm2835_regbase(uint8_t regbase);
# 1243 "/usr/local/include/bcm2835.h" 3
    extern uint32_t bcm2835_peri_read(volatile uint32_t* paddr);
# 1255 "/usr/local/include/bcm2835.h" 3
    extern uint32_t bcm2835_peri_read_nb(volatile uint32_t* paddr);
# 1269 "/usr/local/include/bcm2835.h" 3
    extern void bcm2835_peri_write(volatile uint32_t* paddr, uint32_t value);
# 1283 "/usr/local/include/bcm2835.h" 3
    extern void bcm2835_peri_write_nb(volatile uint32_t* paddr, uint32_t value);
# 1297 "/usr/local/include/bcm2835.h" 3
    extern void bcm2835_peri_set_bits(volatile uint32_t* paddr, uint32_t value, uint32_t mask);
# 1311 "/usr/local/include/bcm2835.h" 3
    extern void bcm2835_gpio_fsel(uint8_t pin, uint8_t mode);






    extern void bcm2835_gpio_set(uint8_t pin);






    extern void bcm2835_gpio_clr(uint8_t pin);






    extern void bcm2835_gpio_set_multi(uint32_t mask);






    extern void bcm2835_gpio_clr_multi(uint32_t mask);







    extern uint8_t bcm2835_gpio_lev(uint8_t pin);
# 1357 "/usr/local/include/bcm2835.h" 3
    extern uint8_t bcm2835_gpio_eds(uint8_t pin);






    extern uint32_t bcm2835_gpio_eds_multi(uint32_t mask);






    extern void bcm2835_gpio_set_eds(uint8_t pin);





    extern void bcm2835_gpio_set_eds_multi(uint32_t mask);
# 1387 "/usr/local/include/bcm2835.h" 3
    extern void bcm2835_gpio_ren(uint8_t pin);




    extern void bcm2835_gpio_clr_ren(uint8_t pin);
# 1402 "/usr/local/include/bcm2835.h" 3
    extern void bcm2835_gpio_fen(uint8_t pin);




    extern void bcm2835_gpio_clr_fen(uint8_t pin);





    extern void bcm2835_gpio_hen(uint8_t pin);




    extern void bcm2835_gpio_clr_hen(uint8_t pin);





    extern void bcm2835_gpio_len(uint8_t pin);




    extern void bcm2835_gpio_clr_len(uint8_t pin);







    extern void bcm2835_gpio_aren(uint8_t pin);




    extern void bcm2835_gpio_clr_aren(uint8_t pin);







    extern void bcm2835_gpio_afen(uint8_t pin);




    extern void bcm2835_gpio_clr_afen(uint8_t pin);







    extern void bcm2835_gpio_pud(uint8_t pud);







    extern void bcm2835_gpio_pudclk(uint8_t pin, uint8_t on);






    extern uint32_t bcm2835_gpio_pad(uint8_t group);
# 1487 "/usr/local/include/bcm2835.h" 3
    extern void bcm2835_gpio_set_pad(uint8_t group, uint32_t control);
# 1499 "/usr/local/include/bcm2835.h" 3
    extern void bcm2835_delay (unsigned int millis);
# 1514 "/usr/local/include/bcm2835.h" 3
    extern void bcm2835_delayMicroseconds (uint64_t micros);





    extern void bcm2835_gpio_write(uint8_t pin, uint8_t on);





    extern void bcm2835_gpio_write_multi(uint32_t mask, uint8_t on);





    extern void bcm2835_gpio_write_mask(uint32_t value, uint32_t mask);






    extern void bcm2835_gpio_set_pud(uint8_t pin, uint8_t pud);
# 1557 "/usr/local/include/bcm2835.h" 3
    extern int bcm2835_spi_begin(void);





    extern void bcm2835_spi_end(void);
# 1572 "/usr/local/include/bcm2835.h" 3
    extern void bcm2835_spi_setBitOrder(uint8_t order);






    extern void bcm2835_spi_setClockDivider(uint16_t divider);





   extern void bcm2835_spi_set_speed_hz(uint32_t speed_hz);






    extern void bcm2835_spi_setDataMode(uint8_t mode);







    extern void bcm2835_spi_chipSelect(uint8_t cs);
# 1610 "/usr/local/include/bcm2835.h" 3
    extern void bcm2835_spi_setChipSelectPolarity(uint8_t cs, uint8_t active);
# 1622 "/usr/local/include/bcm2835.h" 3
    extern uint8_t bcm2835_spi_transfer(uint8_t value);
# 1635 "/usr/local/include/bcm2835.h" 3
    extern void bcm2835_spi_transfernb(char* tbuf, char* rbuf, uint32_t len);
# 1644 "/usr/local/include/bcm2835.h" 3
    extern void bcm2835_spi_transfern(char* buf, uint32_t len);







    extern void bcm2835_spi_writenb(const char* buf, uint32_t len);
# 1663 "/usr/local/include/bcm2835.h" 3
    extern void bcm2835_spi_write(uint16_t data);






    extern int bcm2835_aux_spi_begin(void);





    extern void bcm2835_aux_spi_end(void);




    extern void bcm2835_aux_spi_setClockDivider(uint16_t divider);






    extern uint16_t bcm2835_aux_spi_CalcClockDivider(uint32_t speed_hz);







    extern void bcm2835_aux_spi_write(uint16_t data);






    extern void bcm2835_aux_spi_writenb(const char *buf, uint32_t len);
# 1712 "/usr/local/include/bcm2835.h" 3
    extern void bcm2835_aux_spi_transfern(char *buf, uint32_t len);
# 1722 "/usr/local/include/bcm2835.h" 3
    extern void bcm2835_aux_spi_transfernb(const char *tbuf, char *rbuf, uint32_t len);
# 1740 "/usr/local/include/bcm2835.h" 3
    extern int bcm2835_i2c_begin(void);





    extern void bcm2835_i2c_end(void);




    extern void bcm2835_i2c_setSlaveAddress(uint8_t addr);





    extern void bcm2835_i2c_setClockDivider(uint16_t divider);







    extern void bcm2835_i2c_set_baudrate(uint32_t baudrate);







    extern uint8_t bcm2835_i2c_write(const char * buf, uint32_t len);







    extern uint8_t bcm2835_i2c_read(char* buf, uint32_t len);
# 1797 "/usr/local/include/bcm2835.h" 3
    extern uint8_t bcm2835_i2c_read_register_rs(char* regaddr, char* buf, uint32_t len);
# 1809 "/usr/local/include/bcm2835.h" 3
    extern uint8_t bcm2835_i2c_write_read_rs(char* cmds, uint32_t cmds_len, char* buf, uint32_t buf_len);
# 1821 "/usr/local/include/bcm2835.h" 3
    extern uint64_t bcm2835_st_read(void);





    extern void bcm2835_st_delay(uint64_t offset_micros, uint64_t micros);
# 1844 "/usr/local/include/bcm2835.h" 3
    extern void bcm2835_pwm_set_clock(uint32_t divisor);







    extern void bcm2835_pwm_set_mode(uint8_t channel, uint8_t markspace, uint8_t enabled);






    extern void bcm2835_pwm_set_range(uint8_t channel, uint32_t range);







    extern void bcm2835_pwm_set_data(uint8_t channel, uint32_t data);
# 5 "./src/bcm_gpio.c" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 29 "/usr/include/stdio.h" 3 4




# 1 "/usr/lib/gcc/arm-linux-gnueabihf/6/include/stddef.h" 1 3 4
# 216 "/usr/lib/gcc/arm-linux-gnueabihf/6/include/stddef.h" 3 4
typedef unsigned int size_t;
# 34 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/include/arm-linux-gnueabihf/bits/types.h" 1 3 4
# 27 "/usr/include/arm-linux-gnueabihf/bits/types.h" 3 4
# 1 "/usr/include/arm-linux-gnueabihf/bits/wordsize.h" 1 3 4
# 28 "/usr/include/arm-linux-gnueabihf/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;




__extension__ typedef signed long long int __int64_t;
__extension__ typedef unsigned long long int __uint64_t;







__extension__ typedef long long int __quad_t;
__extension__ typedef unsigned long long int __u_quad_t;
# 121 "/usr/include/arm-linux-gnueabihf/bits/types.h" 3 4
# 1 "/usr/include/arm-linux-gnueabihf/bits/typesizes.h" 1 3 4
# 122 "/usr/include/arm-linux-gnueabihf/bits/types.h" 2 3 4


__extension__ typedef __u_quad_t __dev_t;
__extension__ typedef unsigned int __uid_t;
__extension__ typedef unsigned int __gid_t;
__extension__ typedef unsigned long int __ino_t;
__extension__ typedef __u_quad_t __ino64_t;
__extension__ typedef unsigned int __mode_t;
__extension__ typedef unsigned int __nlink_t;
__extension__ typedef long int __off_t;
__extension__ typedef __quad_t __off64_t;
__extension__ typedef int __pid_t;
__extension__ typedef struct { int __val[2]; } __fsid_t;
__extension__ typedef long int __clock_t;
__extension__ typedef unsigned long int __rlim_t;
__extension__ typedef __u_quad_t __rlim64_t;
__extension__ typedef unsigned int __id_t;
__extension__ typedef long int __time_t;
__extension__ typedef unsigned int __useconds_t;
__extension__ typedef long int __suseconds_t;

__extension__ typedef int __daddr_t;
__extension__ typedef int __key_t;


__extension__ typedef int __clockid_t;


__extension__ typedef void * __timer_t;


__extension__ typedef long int __blksize_t;




__extension__ typedef long int __blkcnt_t;
__extension__ typedef __quad_t __blkcnt64_t;


__extension__ typedef unsigned long int __fsblkcnt_t;
__extension__ typedef __u_quad_t __fsblkcnt64_t;


__extension__ typedef unsigned long int __fsfilcnt_t;
__extension__ typedef __u_quad_t __fsfilcnt64_t;


__extension__ typedef int __fsword_t;

__extension__ typedef int __ssize_t;


__extension__ typedef long int __syscall_slong_t;

__extension__ typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;


__extension__ typedef int __intptr_t;


__extension__ typedef unsigned int __socklen_t;
# 36 "/usr/include/stdio.h" 2 3 4
# 44 "/usr/include/stdio.h" 3 4
struct _IO_FILE;



typedef struct _IO_FILE FILE;





# 64 "/usr/include/stdio.h" 3 4
typedef struct _IO_FILE __FILE;
# 74 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/libio.h" 1 3 4
# 31 "/usr/include/libio.h" 3 4
# 1 "/usr/include/_G_config.h" 1 3 4
# 15 "/usr/include/_G_config.h" 3 4
# 1 "/usr/lib/gcc/arm-linux-gnueabihf/6/include/stddef.h" 1 3 4
# 16 "/usr/include/_G_config.h" 2 3 4




# 1 "/usr/include/wchar.h" 1 3 4
# 82 "/usr/include/wchar.h" 3 4
typedef struct
{
  int __count;
  union
  {

    unsigned int __wch;



    char __wchb[4];
  } __value;
} __mbstate_t;
# 21 "/usr/include/_G_config.h" 2 3 4
typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
# 32 "/usr/include/libio.h" 2 3 4
# 49 "/usr/include/libio.h" 3 4
# 1 "/usr/lib/gcc/arm-linux-gnueabihf/6/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/arm-linux-gnueabihf/6/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 50 "/usr/include/libio.h" 2 3 4
# 144 "/usr/include/libio.h" 3 4
struct _IO_jump_t; struct _IO_FILE;





typedef void _IO_lock_t;





struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;



  int _pos;
# 173 "/usr/include/libio.h" 3 4
};


enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
# 241 "/usr/include/libio.h" 3 4
struct _IO_FILE {
  int _flags;




  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;

  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;



  int _flags2;

  __off_t _old_offset;



  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];



  _IO_lock_t *_lock;
# 289 "/usr/include/libio.h" 3 4
  __off64_t _offset;







  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;

  size_t __pad5;
  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];

};


typedef struct _IO_FILE _IO_FILE;


struct _IO_FILE_plus;

extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
# 333 "/usr/include/libio.h" 3 4
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);







typedef __ssize_t __io_write_fn (void *__cookie, const char *__buf,
     size_t __n);







typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);


typedef int __io_close_fn (void *__cookie);
# 385 "/usr/include/libio.h" 3 4
extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
# 429 "/usr/include/libio.h" 3 4
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));

extern int _IO_peekc_locked (_IO_FILE *__fp);





extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 459 "/usr/include/libio.h" 3 4
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);

extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);

extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 75 "/usr/include/stdio.h" 2 3 4




typedef __gnuc_va_list va_list;
# 90 "/usr/include/stdio.h" 3 4
typedef __off_t off_t;
# 104 "/usr/include/stdio.h" 3 4
typedef __ssize_t ssize_t;







typedef _G_fpos_t fpos_t;




# 166 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/arm-linux-gnueabihf/bits/stdio_lim.h" 1 3 4
# 167 "/usr/include/stdio.h" 2 3 4



extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;







extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));




extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));








extern FILE *tmpfile (void) ;
# 211 "/usr/include/stdio.h" 3 4
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;





extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;
# 229 "/usr/include/stdio.h" 3 4
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;








extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);

# 254 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 268 "/usr/include/stdio.h" 3 4






extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 297 "/usr/include/stdio.h" 3 4

# 308 "/usr/include/stdio.h" 3 4
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) ;
# 321 "/usr/include/stdio.h" 3 4
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) ;




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__)) ;






extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));





extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__));


extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));








extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));





extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));

# 414 "/usr/include/stdio.h" 3 4
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));








extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
# 445 "/usr/include/stdio.h" 3 4
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf")

                               ;
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf")
                              ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ , __leaf__))

                      ;
# 465 "/usr/include/stdio.h" 3 4








extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
# 496 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")



     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")

     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__ ((__format__ (__scanf__, 2, 0)));
# 524 "/usr/include/stdio.h" 3 4









extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);

# 552 "/usr/include/stdio.h" 3 4
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 563 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream);











extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);

# 596 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream);







extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);








extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;
# 642 "/usr/include/stdio.h" 3 4

# 667 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
          size_t *__restrict __n, int __delimiter,
          FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
        size_t *__restrict __n, int __delimiter,
        FILE *__restrict __stream) ;







extern __ssize_t getline (char **__restrict __lineptr,
       size_t *__restrict __n,
       FILE *__restrict __stream) ;








extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);

# 739 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);








extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);

# 775 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence);




extern __off_t ftello (FILE *__stream) ;
# 794 "/usr/include/stdio.h" 3 4






extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 817 "/usr/include/stdio.h" 3 4

# 826 "/usr/include/stdio.h" 3 4


extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;








extern void perror (const char *__s);






# 1 "/usr/include/arm-linux-gnueabihf/bits/sys_errlist.h" 1 3 4
# 26 "/usr/include/arm-linux-gnueabihf/bits/sys_errlist.h" 3 4
extern int sys_nerr;
extern const char *const sys_errlist[];
# 856 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
# 874 "/usr/include/stdio.h" 3 4
extern FILE *popen (const char *__command, const char *__modes) ;





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));
# 914 "/usr/include/stdio.h" 3 4
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
# 944 "/usr/include/stdio.h" 3 4

# 6 "./src/bcm_gpio.c" 2


# 7 "./src/bcm_gpio.c"
HIL_RESULT bcm_gpio_write(u32 pin, u32 value)
{
 HIL_RESULT ret_val;
 HIL_RESULT result;
 ret_val = bcm2835_init();

 if(ret_val == 0) result = ( ( 0x80000000 ) | 0x00000007 );
 if(( (result) & 0x80000000 )) return result;

 bcm2835_gpio_fsel((uint8_t)pin, BCM2835_GPIO_FSEL_OUTP);

 bcm2835_gpio_write((uint8_t)pin, (uint8_t)value);

 ret_val = bcm2835_close();

 return ret_val;
}

HIL_RESULT bcm_gpio_read(u32 pin, u32* value)
   {
    HIL_RESULT ret_val;
  HIL_RESULT result;
    ret_val = bcm2835_init();

    if(ret_val == 0) result = ( ( 0x80000000 ) | 0x00000007 );
    if(( (result) & 0x80000000 )) return result;

    bcm2835_gpio_fsel((uint8_t)pin, BCM2835_GPIO_FSEL_INPT);

    *value = bcm2835_gpio_lev((uint8_t)pin);

    ret_val = bcm2835_close();

    return ret_val;
 }

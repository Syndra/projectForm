#ifndef __DEV_GPIO_H__
#define __DEV_GPIO_H__
#include <HIL_defs.h>
#include <HIL_types.h>

/*
 *  GPIO Write Interface Function
 * */
HIL_RESULT dev_gpio_write(u32 pin, u32 value);

/*
 *  GPIO Read Interface Function
 * */
HIL_RESULT dev_gpio_read(u32 pin, u32 *value);

#endif

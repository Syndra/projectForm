#include <HIL_defs.h>
#include <HIL_types.h>
#include <wiringpi_gpio.h>
#include <wiringPi.h>
#include <stdio.h>

HIL_RESULT wiringpi_gpio_write(u32 pin, u32 value) {
     HIL_RESULT result = 0;
	result = wiringPiSetup();
	pinMode(pin, OUTPUT);
	digitalWrite(pin, value);
     return result;
}

HIL_RESULT wiringpi_gpio_read(u32 pin, u32 *value)
{
	HIL_RESULT result;
	result = wiringPiSetup();
	pinMode(pin, INPUT);
	*value = digitalRead(pin);
	return result;
}

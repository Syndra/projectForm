#include <HIL_defs.h>
#include <HIL_types.h>
#include <bcm_gpio.h>
#include <bcm2835.h>
#include <stdio.h>

HIL_RESULT bcm_gpio_write(u32 pin, u32 value) 
{
	HIL_RESULT ret_val;
	HIL_RESULT result;
	ret_val = bcm2835_init();

	if(ret_val == 0) result = HIL_E_FEATURES_ERR;
	if(HIL_FAILED(result)) return result;
	
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
    
    if(ret_val == 0) result = HIL_E_FEATURES_ERR;
    if(HIL_FAILED(result)) return result;
    
    bcm2835_gpio_fsel((uint8_t)pin, BCM2835_GPIO_FSEL_INPT);
    
    *value = bcm2835_gpio_lev((uint8_t)pin);
    
    ret_val = bcm2835_close();
    
    return ret_val;
 }


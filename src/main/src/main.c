#include <stdio.h>
#include <stdlib.h>
#include <bcm2835.h>
#include <bmp180.h>

int main(int argc,char **argv)
{
  float temp, press, alti;

  /* Init bmp */
  printf("BMP180 Test Program ...\n");
  if(!bcm2835_init()) return 1;
  bcm2835_i2c_begin();
  bcm2835_i2c_setSlaveAddress(BMP180_Address);
  bcm2835_i2c_set_baudrate(10000);

  while (1)
  {
    //Calibration
  	load_calibration();
    temp = read_temperature();  // 'C
    press = read_pressure()/100;    // Pa
    alti = read_altitude();     // h

    /* Logging */
    kernelLog(fp, temp, press, alti);

    /* Monitoring */

		bcm2835_delay(1000);

  }
	return 0;
}

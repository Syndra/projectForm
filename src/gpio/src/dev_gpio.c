#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <HIL_defs.h>
#include <HIL_types.h>
#include <dev_gpio.h>

#define GPIO_OUTPUT 0
#define GPIO_INPUT 1
#define GPIO_HIGH  1
#define GPIO_LOW  0

#define GPIO_NONE  "none"
#define GPIO_FALLING "falling"
#define GPIO_RISING "rising"
#define GPIO_BOTH  "both"

#define SYSFS_GPIO_DIR "/sys/class/gpio"

#define MAX_BUF 64

int gpio_export(unsigned int gpio)
{
   int fd, len;
   char buf[MAX_BUF];

   fd = open(SYSFS_GPIO_DIR "/export", O_WRONLY);

   if (fd < 0) {
       fprintf(stderr, "Can't export GPIO %d pin: %s\n", gpio, strerror(errno));
       return fd;
   }

   len = snprintf(buf, sizeof(buf), "%d", gpio);
   write(fd, buf, len);
   close(fd);

   return 0;
}

int gpio_unexport(unsigned int gpio)
{
   int fd, len;
   char buf[MAX_BUF];

   fd = open(SYSFS_GPIO_DIR "/unexport", O_WRONLY);

   if (fd < 0) {
       fprintf(stderr, "Can't unexport GPIO %d pin: %s\n", gpio, strerror(errno));
       return fd;
   }

   len = snprintf(buf, sizeof(buf), "%d", gpio);
   write(fd, buf, len);
   close(fd);

   return 0;
}

int gpio_get_dir(unsigned int gpio, unsigned int *dir)
{
   int fd, len;
   char buf[MAX_BUF];

   len = snprintf(buf, sizeof(buf), SYSFS_GPIO_DIR "/gpio%d/direction", gpio);

   fd = open(buf, O_RDONLY);

   if (fd < 0) {
       fprintf(stderr, "Can't get GPIO %d pin direction: %s\n", gpio, strerror(errno));
       return fd;
   }

   read(fd, &buf, MAX_BUF);
   close(fd);

   if (stricmp(buf, "in") == 0)
       *dir = GPIO_INPUT;
   else
       *dir = GPIO_OUTPUT;

   return 0;
}

int gpio_set_dir(unsigned int gpio, unsigned int dir, unsigned int val)
{
   int fd, len;
   char buf[MAX_BUF];

   len = snprintf(buf, sizeof(buf), SYSFS_GPIO_DIR  "/gpio%d/direction", gpio);

   fd = open(buf, O_WRONLY);

   if (fd < 0) {
       fprintf(stderr, "Can't set GPIO %d pin direction: %s\n", gpio, strerror(errno));
       return fd;
   }

   if (dir == GPIO_OUTPUT) {
       if (val == GPIO_HIGH)
           write(fd, "high", 5);
       else
           write(fd, "out", 4);
   } else {
       write(fd, "in", 3);
   }

   close(fd);

   return 0;
}

int gpio_get_val(unsigned int gpio, unsigned int *val)
{
   int fd, len;
   char buf[MAX_BUF];

   len = snprintf(buf, sizeof(buf), SYSFS_GPIO_DIR "/gpio%d/value", gpio);

   fd = open(buf, O_RDONLY);

   if (fd < 0) {
       fprintf(stderr, "Can't get GPIO %d pin value: %s\n", gpio, strerror(errno));
       return fd;
   }

   read(fd, buf, 1);
   close(fd);

   if (*buf != '0')
       *val = GPIO_HIGH;
   else
       *val = GPIO_LOW;

   return 0;
}

int gpio_set_val(unsigned int gpio, unsigned int val)
{
   int fd, len;
   char buf[MAX_BUF];

   len = snprintf(buf, sizeof(buf), SYSFS_GPIO_DIR "/gpio%d/value", gpio);

   fd = open(buf, O_WRONLY);

   if (fd < 0) {
       fprintf(stderr, "Can't set GPIO %d pin value: %s\n", gpio, strerror(errno));
       return fd;
   }

   if (val == GPIO_HIGH)
       write(fd, "1", 2);
   else
       write(fd, "0", 2);

   close(fd);

   return 0;
}

int gpio_set_edge(unsigned int gpio, char *edge)
{
   int fd, len;
   char buf[MAX_BUF];

   len = snprintf(buf, sizeof(buf), SYSFS_GPIO_DIR "/gpio%d/edge", gpio);

   fd = open(buf, O_WRONLY);

   if (fd < 0) {
       fprintf(stderr, "Can't set GPIO %d pin edge: %s\n", gpio, strerror(errno));
       return fd;
   }

   write(fd, edge, strlen(edge)+1);
   close(fd);

   return 0;
}

int gpio_open(unsigned int gpio)
{
   int fd, len;
   char buf[MAX_BUF];

   len = snprintf(buf, sizeof(buf), SYSFS_GPIO_DIR "/gpio%d/value", gpio);

   fd = open(buf, O_RDONLY|O_NONBLOCK);

   if (fd < 0)
       fprintf(stderr, "Can't open GPIO %d pin: %s\n", gpio, strerror(errno));

   return fd;
}

int gpio_close(int fd)
{
   return close(fd);
}

int gpio_read(int fd, unsigned int *val)
{
   int ret;
   char ch;

   lseek(fd, 0, SEEK_SET);

   ret = read(fd, &ch, 1);

   if (ret != 1) {
       fprintf(stderr, "Can't read GPIO %d pin: %s\n", gpio, strerror(errno));
       return ret;
   }

   if (ch != '0')
       *val = GPIO_HIGH;
   else
       *val = GPIO_LOW;

   return 0;
}

HIL_RESULT dev_gpio_write(u32 pin, u32 value)
{
   u32 gpio;
   u32 val;

   gpio = pin;
   val = value;

   gpio_export(gpio);
   gpio_set_output(gpio, val);
   gpio_unexport(gpio);

   return 0;
}

HIL_RESULT dev_gpio_read(u32 pin, u32* value)
{
   u32 gpio;
   u32* val;

   gpio = pin;
   gpio_export(gpio);
   gpio_set_input(gpio);
   gpio_get_val(gpio, val);
   gpiof_unexport(gpio);
   fprintf(stderr, "gpio%d = %d\n", gpio, val);

   return 0;
}

#include <stdio.h>
#include <stdlib.h>
#include "logger.h"

int kernelLog(File *fp, float temp, float press, float alti)
{

  int result = fprintf(fp, temp, press, alti);

  return result;
}

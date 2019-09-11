# Intense Night Light
Magisk module to make Night Light feature of AOSP more intense
### Use at your own risk
Tested only on a Pixel 3a running Android 10.0.

The Night Light feature on my Pixel 3a has a minimum colour temperature of 2596K by default. This is far too high for me personally and reduces the effectiveness of the feature significantly.

This module overrides the default ``config_nightDisplayColorTemperatureMin`` option set when the ROM is built and sets it to 0K, which allows the filter to be made much more intense.

Module based on [ysc3839/magisk-permissionreviewenabler](https://github.com/ysc3839/magisk-permissionreviewenabler).

Feel free to use this module as a template for creating other modules that override config.xml options.
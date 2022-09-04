# Intense Night Light
Magisk module to make Night Light feature of AOSP more intense

## There is a newer version of this module for the Sony Xperia 10 IV.

I recently upgraded from my Pixel 3a to a Sony Xperia 10 IV, and a few device-specific changes were needed for this module due to Sony changing the colour temperature curves. The updated module can be found in the `murray` branch.

### Use at your own risk
Tested only on a Pixel 3a running Android 10.0.

The Night Light feature on my Pixel 3a has a minimum colour temperature of 2596K by default. This is far too high for me personally and reduces the effectiveness of the feature significantly.

This module overrides the default ``config_nightDisplayColorTemperatureMin`` option set when the ROM is built and sets it to 0K, which allows the filter to be made much more intense.

Module based on [ysc3839/magisk-permissionreviewenabler](https://github.com/ysc3839/magisk-permissionreviewenabler).

Feel free to use this module as a template for creating other modules that override config.xml options.
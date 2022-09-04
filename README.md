# Intense Night Light
Magisk module to make Night Light feature of Android more intense for the Sony Xperia 10 IV (murray).
### Use at your own risk
Tested only on a Sony Xperia 10 IV running Android 12.

The Night Light feature on my Sony Xperia 10 IV has a minimum colour temperature of 2596K by default. This is far too high for me personally and reduces the effectiveness of the feature significantly.

This module overrides the default `config_nightDisplayColorTemperatureMin` option set when the ROM is built and sets it to -2500K, which allows the filter to be made much more intense.

It appears that Sony have customised the color temperature curves, which somehow means that the screen turns magenta instead of red when set to very low temperatures. To fix this I have restored the default curves from AOSP, which may result in a worse colour quality at normal night light colour temperatures.

Module based on [ysc3839/magisk-permissionreviewenabler](https://github.com/ysc3839/magisk-permissionreviewenabler).

Feel free to use this module as a template for creating other modules that override config.xml options.
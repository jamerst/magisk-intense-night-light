#!/bin/bash

pushd app
aapt package -M AndroidManifest.xml -S res/ \
  -I "$HOME/Android/Sdk/platforms/android-28/android.jar" \
  -F IntenseNightLight.apk || exit 1

mv IntenseNightLight.apk ..
popd

pushd magisk
mv ../IntenseNightLight.apk system/vendor/overlay/IntenseNightLight/

find -exec touch -d @0 -h {} +
find -type d -exec chmod 0755 {} +
find -type f -exec chmod 0644 {} +

version=$(grep -Po "version=\K.*" module.prop)
zip -r -y -9 ../magisk-intense-night-light-$version.zip . || exit 1
popd

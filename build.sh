#!/bin/bash

pushd app

mkdir -p compiled
aapt2 compile --dir res/ -o compiled/ || exit 1
aapt2 link -o IntenseNightLight.apk -I "$HOME/Android/Sdk/platforms/android-32/android.jar" compiled/values_config.arsc.flat --manifest AndroidManifest.xml || exit 1

mv IntenseNightLight.apk ..
popd

pushd magisk
mkdir -p system/vendor/overlay/IntenseNightLight/
mv ../IntenseNightLight.apk system/vendor/overlay/IntenseNightLight/

find -exec touch -d @0 -h {} +
find -type d -exec chmod 0755 {} +
find -type f -exec chmod 0644 {} +

version=$(grep -Po "version=\K.*" module.prop)
zip -r -y -9 ../magisk-intense-night-light-murray-$version.zip . || exit 1
popd

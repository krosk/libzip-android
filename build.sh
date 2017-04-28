#!/bin/sh
cd `dirname $0`

#set the path to the android ndk here:
export ANDROID_NDK=/home/declan/Documents/zone/mid/lib/android/crystax/crystax-ndk-10.3.2_2017_03_08



export PATH=${ANDROID_NDK}:$PATH

export NDK_PROJECT_PATH=./


# Pass various options here. Can also be specified in Application.mk, but those will be overridden by any also passed here
# see https://developer.android.com/ndk/guides/application_mk.html
# and https://developer.android.com/ndk/guides/ndk-build.html

ndk-build APP_STL=gnustl_shared     \
          APP_PLATFORM=android-9    \
          APP_ABI="armeabi armeabi-v7a"     \
          NDK_TOOLCHAIN_VERSION=5   \
          NDK_PROJECT_PATH=./       \
          $@

#ndk-build clean APP_STL=gnustl_shared

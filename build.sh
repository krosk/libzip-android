#!/bin/sh
cd `dirname $0`

#set the path to the android ndk here:
export ANDROID_NDK=~/Library/Android/sdk/ndk-bundle/



export PATH=${ANDROID_NDK}:$PATH

export NDK_PROJECT_PATH=./


# Pass various options here. Can also be specified in Application.mk, but those will be overridden by any also passed here
# see https://developer.android.com/ndk/guides/application_mk.html
# and https://developer.android.com/ndk/guides/ndk-build.html

ndk-build APP_STL=c++_shared     \
          APP_PLATFORM=android-26    \
          APP_ABI="arm64-v8a x86_64"     \
          NDK_TOOLCHAIN_VERSION=clang
          NDK_PROJECT_PATH=./       \
          $@

#ndk-build clean APP_STL=gnustl_shared

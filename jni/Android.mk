LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ECHO := $(shell wget -nc https://github.com/nih-at/libzip/archive/refs/tags/rel-1-2-0.zip; unzip -n rel-1-2-0.zip libzip-rel-1-2-0/lib/* -x *win32* -d $(LOCAL_PATH))

LOCAL_MODULE := libzip

LOCAL_CFLAGS := -DHAVE_CONFIG_H=1
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libzip-rel-1-2-0/lib/gladman-fcrypt

LOCAL_SRC_FILES := $(wildcard $(LOCAL_PATH)/**/**/*.c)
#LOCAL_SRC_FILES += $(wildcard $(LOCAL_PATH)/**/**/**/*.c)
LOCAL_SRC_FILES := $(LOCAL_SRC_FILES:$(LOCAL_PATH)/%=%)

# link library libz
LOCAL_LDLIBS := -lz

include $(BUILD_SHARED_LIBRARY)
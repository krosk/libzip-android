LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LIB_FOLDER := libzip-rel-1-2-0/lib
ECHO := $(shell wget -nc https://github.com/nih-at/libzip/archive/refs/tags/rel-1-2-0.zip; unzip -n rel-1-2-0.zip $(LIB_FOLDER)/* -x *win32* -d $(LOCAL_PATH))

LOCAL_MODULE := libzip

LOCAL_CFLAGS := -DHAVE_CONFIG_H=1
LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(LIB_FOLDER)/gladman-fcrypt

LOCAL_SRC_FILES := $(wildcard $(LOCAL_PATH)/**/**/*.c)
#LOCAL_SRC_FILES += $(wildcard $(LOCAL_PATH)/**/**/**/*.c)
LOCAL_SRC_FILES := $(LOCAL_SRC_FILES:$(LOCAL_PATH)/%=%)

LOCAL_LDLIBS := -lz

include $(BUILD_SHARED_LIBRARY)

ifndef NDK_LIBS_OUT
NDK_LIBS_OUT := ./libs
endif

all:
	[ -e $(NDK_LIBS_OUT)/../include ] || mkdir $(NDK_LIBS_OUT)/../include
	cp $(LOCAL_PATH)/zipconf.h $(NDK_LIBS_OUT)/../include
	cp $(LOCAL_PATH)/$(LIB_FOLDER)/zip.h $(NDK_LIBS_OUT)/../include
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:= \
	AudioHardware.cpp

LOCAL_CFLAGS := -fno-strict-aliasing

LOCAL_MODULE := audio.primary.s5pc110
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_STATIC_LIBRARIES:= libmedia_helper
LOCAL_SHARED_LIBRARIES:= \
	libutils \
	libhardware_legacy \
	libtinyalsa \
	libaudioutils

LOCAL_WHOLE_STATIC_LIBRARIES := libaudiohw_legacy
LOCAL_MODULE_TAGS := optional

LOCAL_SHARED_LIBRARIES += libdl
LOCAL_C_INCLUDES += \
	external/tinyalsa/include \
	$(call include-path-for, audio-effects) \
	$(call include-path-for, audio-utils)

include $(BUILD_SHARED_LIBRARY)

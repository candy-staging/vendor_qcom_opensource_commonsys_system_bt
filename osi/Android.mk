 ##############################################################################
 #
 #  Copyright (C) 2014 Google, Inc.
 #
 #  Licensed under the Apache License, Version 2.0 (the "License");
 #  you may not use this file except in compliance with the License.
 #  You may obtain a copy of the License at:
 #
 #  http://www.apache.org/licenses/LICENSE-2.0
 #
 #  Unless required by applicable law or agreed to in writing, software
 #  distributed under the License is distributed on an "AS IS" BASIS,
 #  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 #  See the License for the specific language governing permissions and
 #  limitations under the License.
 #
 ##############################################################################

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include

LOCAL_SRC_FILES := \
    ./src/alarm.c \
    ./src/config.c \
    ./src/fixed_queue.c \
    ./src/hash_map.c \
    ./src/list.c \
    ./src/reactor.c \
    ./src/semaphore.c \
    ./src/thread.c

LOCAL_CFLAGS := -std=c99 -Wall -Werror
LOCAL_MODULE := libosi
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := libc liblog
LOCAL_MODULE_CLASS := STATIC_LIBRARIES

include $(BUILD_STATIC_LIBRARY)

#####################################################

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include

LOCAL_SRC_FILES := \
    ./test/alarm_test.cpp \
    ./test/config_test.cpp \
    ./test/list_test.cpp \
    ./test/reactor_test.cpp \
    ./test/thread_test.cpp

LOCAL_CFLAGS := -Wall -Werror
LOCAL_MODULE := ositests
LOCAL_MODULE_TAGS := tests
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_STATIC_LIBRARIES := libosi

include $(BUILD_NATIVE_TEST)

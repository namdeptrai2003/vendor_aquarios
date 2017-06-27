# Copyright (C) 2017 AquariOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/aquarios/overlay/common

# Common build prop overrides 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dateformat=MM-dd-yyyy \
    drm.service.enabled=true \
    ro.build.selinux=1 

# Added Packages
PRODUCT_PACKAGES += \
    Nova \
    ThemeInterfacer \
    HotwordEnrollment \
    Substratum \
    OmniJaws \
    OmniStyle \
    LiveWallpapersPicker

# Include explicitly to work around Facelock issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full

# DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils

# Build Magisk root method (NEEDS DEVICE FLAG)
ifneq ($(DEFAULT_ROOT_METHOD),Magisk)
PRODUCT_PACKAGES += \
    MagiskManager
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/zip/magisk.zip:system/addon.d/magisk.zip
endif
    
# Backup Tool
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bin/backuptool.sh:install/bin/backuptool.sh \
    $(LOCAL_PATH)/bin/backuptool.functions:install/bin/backuptool.functions \
    $(LOCAL_PATH)/addon.d/50-base.sh:system/addon.d/50-base.sh   

# ROM versioning
AQUARIOS_VERSION := $(PLATFORM_VERSION)-$(shell date +%Y%m%d-%H%M)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.aquarios.version=$(AQUARIOS_VERSION)

# AquariOS bootanimation 
-include vendor/aquarios/configs/bootanima.mk

# For stereo widening effect
ifneq ($(TARGET_NO_DSPMANAGER), true)
    PRODUCT_PACKAGES += \
        libcyanogen-dsp \
        audio_effects.conf
endif

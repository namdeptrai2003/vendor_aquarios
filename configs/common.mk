# Aquarios common make file


# Local path for prebuilts
LOCAL_PATH:= vendor/aquarios/prebuilt

# Common build prop overrides 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.setupwizard.rotation_locked=true \
    ro.opa.eligible_device=true \
    ro.com.android.dateformat=MM-dd-yyyy \
    drm.service.enabled=true \
    ro.build.selinux=1 

# Common overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/aquarios/overlay/common

# Added Packages
PRODUCT_PACKAGES += \
    Launcher3 \
    AdAway \
    KernelAdiutor \
    masquerade \
    Substratum \
    OmniStyle

# DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils

# Include explicitly to work around Facelock issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full
    
# Add SuperSU
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/addon.d/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip
    
# Add osmOsis Busybox
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/addon.d/UPDATE-Busybox.zip:system/addon.d/UPDATE-Busybox.zip
    
# init.d script support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bin/sysinit:system/bin/sysinit \
    $(LOCAL_PATH)/root/init.aquarios.rc:root/init.aquarios.rc
    
# Backup Tool
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bin/backuptool.sh:install/bin/backuptool.sh \
    $(LOCAL_PATH)/bin/backuptool.functions:install/bin/backuptool.functions \
    $(LOCAL_PATH)/addon.d/50-base.sh:system/addon.d/50-base.sh   

# Add aquarios sounds
-include vendor/aquarios/configs/aquarios_sounds.mk

# Add stock bootanimation 
-include vendor/aquarios/configs/bootani.mk

# Add fingerprints
-include vendor/aquarios/configs/aquarios_fingerprints.mk

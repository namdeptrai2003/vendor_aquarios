# Aquarios angler make file

# Include aquarios phone amke file.
include vendor/aquarios/configs/aquarios_phone.mk

# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Override AOSP build properties
PRODUCT_NAME := shamu
PRODUCT_BRAND := google
PRODUCT_DEVICE := shamu
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola

# Bring in AquariOS ramdisk defaults
PRODUCT_COPY_FILES += \
	vendor/aquarios/prebuilt/root/init.aqua_shamu.rc:root/init.aqua_shamu.rc

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:7.1.1/N6F26R/3582520:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 7.1.1 N6F26R 3582520 release-keys"

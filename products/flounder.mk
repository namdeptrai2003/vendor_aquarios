# AquariOS flounder make file

# Inlude tablet make file
include vendor/aquarios/configs/aquarios_tab.mk

# Inherit AOSP device configuration for mako
$(call inherit-product, device/htc/flounder/aosp_flounder.mk)


# Override AOSP build properties
PRODUCT_NAME := flounder
PRODUCT_BRAND := google
PRODUCT_DEVICE := flounder
PRODUCT_MODEL := Nexus 9
PRODUCT_MANUFACTURER := HTC


# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=volantis \
    BUILD_FINGERPRINT=google/volantis/flounder:7.1.1/N4F26Q/3623443:user/release-keys \
    PRIVATE_BUILD_DESC="volantis-user 7.1.1 N4F26Q 3623443 release-keys"

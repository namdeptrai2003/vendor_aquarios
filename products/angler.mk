# Aquarios angler make file

# Include aquarios phone make file
include vendor/aquarios/configs/aquarios_phone.mk

# Inherit AOSP device configuration for angler
$(call inherit-product, device/huawei/angler/aosp_angler.mk)


# Override AOSP build properties
PRODUCT_NAME := angler
PRODUCT_BRAND := google
PRODUCT_DEVICE := angler
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:7.1.1/N4F26O/3582057:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 7.1.1 N4F26O 3582057 release-keys"

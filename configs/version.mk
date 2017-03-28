# AquariOS version make

ROM_NAME := aquarios
ROM_VERSION := $(ROM_NAME)-$(PLATFORM_VERSION)-$(shell date +%Y%m%d-%H%M)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.aquarios.version=$(ROM_VERSION)

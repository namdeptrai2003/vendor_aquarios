# Sensitive Phone Numbers list
PRODUCT_COPY_FILES += \
    vendor/aquarios/prebuilt/common/etc/sensitive_pn.xml:system/etc/sensitive_pn.xml

# World APN list
PRODUCT_COPY_FILES += \
    vendor/aquarios/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

<<<<<<< HEAD
# Selective SPN list for operator number who has the problem.
PRODUCT_COPY_FILES += \
    vendor/aquarios/prebuilt/common/etc/selective-spn-conf.xml:system/etc/selective-spn-conf.xml

=======
>>>>>>> 75d609f... Revert "cm: add selective based spn (2/2)"
# Telephony packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    messaging \
    Stk

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Orion.ogg

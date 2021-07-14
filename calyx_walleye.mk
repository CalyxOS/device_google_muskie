# Exclude generic APN/NFC configs
TARGET_EXCLUDE_GENERIC_CONFIGS := true

# Inherit some common stuff.
$(call inherit-product, vendor/calyx/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/wahoo/device-calyx.mk)
$(call inherit-product, device/google/muskie/aosp_walleye.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_walleye
PRODUCT_MODEL := Pixel 2
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_SOONG_NAMESPACES += vendor/google_devices/walleye

$(call inherit-product, device/samsung/quincyatt/full_quincyatt.mk)

# Inherit some common Broken-extra stuff.
$(call inherit-product, vendor/broken/config/broken_extras.mk)

# Enhanced NFC
$(call inherit-product, vendor/broken/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/broken/config/common_full_phone.mk)

# Inherit Broken common stuff.
$(call inherit-product, vendor/broken/config/common.mk)

## PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I717 TARGET_DEVICE=SGH-I717 BUILD_FINGERPRINT="samsung/SGH-I717/SGH-I717:5.0.2/LRX22G/I717UCMD3:user/release-keys" PRIVATE_BUILD_DESC="SGH-I717-user 5.0.2 LRX22G UCMD3 release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I717 TARGET_DEVICE=SGH-I717 BUILD_FINGERPRINT="samsung/SGH-I717/SGH-I717:5.1.1/LMY47V/I717UCMD3:user/release-keys" PRIVATE_BUILD_DESC="SGH-I717-user 5.1.1 LMY47V I717UCMD3 release-keys"

PRODUCT_NAME := broken_quincyatt
PRODUCT_DEVICE := quincyatt

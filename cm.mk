# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit device configuration
$(call inherit-product, device/alcatel/cocktail/cocktail.mk)

# Correct boot animation size for the screen.
TARGET_BOOTANIMATION_NAME := vertical-480x800

## Device identifier. This must come after all inclusions

PRODUCT_NAME := cm_cocktail
PRODUCT_DEVICE := cocktail
PRODUCT_BRAND := Alcatel
PRODUCT_MODEL := OT-995
PRODUCT_MANUFACTURER := Alcatel
PRODUCT_RELEASE_NAME := OT-995

# Spoof stock fingerprint for now
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=one_touch_995_ALEU \
                                BUILD_FINGERPRINT=TCT/one_touch_995_ALEU/one_touch_995_gsm:4.0.4/IceCreamSandwich/531:user/release-keys \
                                PRIVATE_BUILD_DESC="one_touch_995_ALEU-user 4.0.4 IceCreamSandwich 531 release-keys"

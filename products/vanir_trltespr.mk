PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-shamu

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1440x2560.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Enhanced NFC
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/trltespr/cm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_trltespr
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N910P

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=trltespr BUILD_FINGERPRINT=samsung/trltespr/trltespr:4.4.4/KTU84P/N910PVPU1ANK2:user/release-keys PRIVATE_BUILD_DESC="trltespr-user 4.4.4 KTU84P N910PVPU1ANK2 release-keys"

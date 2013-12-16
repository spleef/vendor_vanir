#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-m4

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/gsm.mk)
# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)
# Inherit common product files.
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit model specific configuration.
$(call inherit-product, device/htc/m4/full_m4.mk)

# Device naming
PRODUCT_DEVICE := m4
PRODUCT_NAME := vanir_m4
PRODUCT_BRAND := htc
PRODUCT_MODEL := One Mini
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m4 BUILD_ID=JDQ39 BUILD_FINGERPRINT="htc/cingular_us/htc_m4:4.2.2/JDQ39/224405.3:user/release-keys" PRIVATE_BUILD_DESC="1.24.502.3 CL224405 release-keys"

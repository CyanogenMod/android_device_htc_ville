$(call inherit-product, device/htc/ville/full_ville.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device naming
PRODUCT_DEVICE := ville
PRODUCT_NAME := cm_ville
PRODUCT_BRAND := htc
PRODUCT_MODEL := One S
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="ville" \
    PRODUCT_NAME="ville" \
    BUILD_FINGERPRINT="htc_europe/ville/ville:4.1.1/JRO03C/128506.8:user/release-keys" \
    PRIVATE_BUILD_DESC="3.16.401.8 CL128506 release-keys"

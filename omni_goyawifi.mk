$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, build/target/product/embedded.mk)

$(call inherit-product, build/target/product/full_base_telephony.mk)
$(call inherit-product, build/target/product/languages_full.mk)
# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_RELEASE_NAME := Samsung Galaxy Tab 3 Lite 7.0
PRODUCT_MODEL := SM-T110
PRODUCT_DEVICE := goyawifi
PRODUCT_NAME := omni_goyawifi
TARGET_VENDOR := samsung

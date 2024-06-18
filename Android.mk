LOCAL_PATH := $(call my-dir)

ifneq ($(filter goya3g goyawifi,$(TARGET_DEVICE)),)

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
TARGET_VENDOR := samsung

ifneq ($(filter goyawifi,$(TARGET_DEVICE)),)
PRODUCT_MODEL := SM-T110
PRODUCT_DEVICE := goyawifi
PRODUCT_NAME := omni_goyawifi
else
PRODUCT_MODEL := SM-T111
PRODUCT_DEVICE := goya3g
PRODUCT_NAME := omni_goya3g
endif

include $(call all-makefiles-under,$(LOCAL_PATH))
endif

include $(CLEAR_VARS)
ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

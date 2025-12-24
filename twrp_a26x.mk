#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

# Inherit some common pbrp stuff.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

# Inherit from a26x device
$(call inherit-product, device/samsung/a26x/device.mk)

PRODUCT_DEVICE := a26x
PRODUCT_NAME := twrp_a26x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A266B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a26xxx-user 13 TP1A.220624.014 A266BXXS4AYG9 release-keys"

BUILD_FINGERPRINT := samsung/a26xxx/a26x:13/TP1A.220624.014/A266BXXS4AYG9:user/release-keys

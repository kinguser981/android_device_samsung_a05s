#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a05s device
$(call inherit-product, device/samsung/a05s/device.mk)

PRODUCT_DEVICE := a05s
PRODUCT_NAME := omni_a05s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A057F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a05snsdxx-user 13 TP1A.220624.014 A057FXXU4CXG2 release-keys"

BUILD_FINGERPRINT := samsung/a05snsdxx/a05s:13/TP1A.220624.014/A057FXXU4CXG2:user/release-keys

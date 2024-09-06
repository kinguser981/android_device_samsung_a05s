#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/a05s


# API level
PRODUCT_SHIPPING_API_LEVEL := 34

# Enable developer GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    fastbootd 

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-service \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery

# Boot Control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl.recovery \
    android.hardware.boot@1.1-impl 

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

# Recovery additional binaries
TARGET_RECOVERY_DEVICE_MODULES += \
    libion \
    libxml2

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libxml2.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so

# Additional Libraries
TARGET_RECOVERY_DEVICE_MODULES += \
    libkeymaster4 \
    libpuresoftkeymasterdevice

# Qualcomm Decryption 
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

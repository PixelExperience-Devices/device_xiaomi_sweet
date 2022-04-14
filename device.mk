#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6150-common
$(call inherit-product, device/xiaomi/sm6150-common/sm6150.mk)

# API level, the device has been commercially launched on
PRODUCT_SHIPPING_API_LEVEL := 30

# Audio
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Display
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/display/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Thermal
TARGET_USE_QTI_THERMAL_SERVICE := true

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/sweet/sweet-vendor.mk)

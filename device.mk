#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Product launched with 11.0
PRODUCT_SHIPPING_API_LEVEL := 30

# Don't build super.img.
PRODUCT_BUILD_SUPER_PARTITION := false

# Enable Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit vendor
$(call inherit-product, vendor/xiaomi/sweet/sweet-vendor.mk)

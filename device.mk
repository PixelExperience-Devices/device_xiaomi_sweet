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

# AID/fs configs
PRODUCT_PACKAGES += \
    fs_config_dirs \
    fs_config_files

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.common@1.0:64 \
    android.hardware.camera.device@3.6:64 \
    android.hardware.camera.provider@2.4-impl:64 \
    android.hardware.camera.provider@2.4-service_64 \
    android.hardware.camera.provider@2.6:64

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml

# Consumer IR
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    android.hardware.ir@1.0-service

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml

# Display/Graphics
PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.4-service \
    android.hardware.graphics.mapper@3.0-impl-qti-display \
    android.hardware.graphics.mapper@4.0-impl-qti-display \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service

PRODUCT_PACKAGES += \
    gralloc.sm6150 \
    hwcomposer.sm6150 \
    libqdMetaData \
    libqdMetaData.vendor \
    memtrack.sm6150 \
    vendor.display.config@2.0

PRODUCT_PACKAGES += \
    vendor.qti.hardware.display.allocator-service \
    vendor.qti.hardware.display.allocator@4.0.vendor \
    vendor.qti.hardware.display.mapper@2.0.vendor \
    vendor.qti.hardware.display.mapperextensions@1.1.vendor

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.software.vulkan.deqp.level-2020-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.vulkan.deqp.level.xml

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Overlays
PRODUCT_PACKAGES += \
    CarrierConfigResSweet \
    FrameworksResSweet \
    SystemUIResSweet \
    TelephonyResSweet \
    WifiResSweet

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.dcvs.sh \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.sweet.rc \
    init.target.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom \
    $(LOCAL_PATH)/rootdir/ueventd.qcom.rc:$(TARGET_COPY_OUT_VENDOR)/ueventd.rc

# Don't build super.img.
PRODUCT_BUILD_SUPER_PARTITION := false

# Enable Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit vendor
$(call inherit-product, vendor/xiaomi/sweet/sweet-vendor.mk)

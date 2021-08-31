#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/sweet

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a76

# Bootloader
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_CMDLINE += console=ttyMSM0,115200n8 androidboot.console=ttyMSM0
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE += androidboot.memcg=1 lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE += service_locator.enable=1
BOARD_KERNEL_CMDLINE += swiotlb=1 androidboot.usbcontroller=a600000.dwc3
BOARD_KERNEL_CMDLINE += loop.max_part=7

#BOARD_KERNEL_CMDLINE += video=vfb:640x400,bpp=32,memsize=3072000 earlycon=msm_geni_serial,0x880000

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DTBO := true

TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CONFIG := vendor/sweet_user_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/sweet

# inherit from the proprietary version
-include vendor/xiaomi/sweet/BoardConfigVendor.mk

#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oppo/CPH1989

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_64_BIT),$(TARGET_CPU_ABI_LIST_32_BIT)

# APEX
OVERRIDE_TARGET_FLATTEN_APEX := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6771
TARGET_BOARD_PLATFORM_GPU := Mali-G72 MP3
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x14f88000
BOARD_KERNEL_TAGS_OFFSET := 0x13f88000
BOARD_SECOND_OFFSET := 0xbff88000
BOARD_DTB_OFFSET := 0x13f88000
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --cmdline $(BOARD_KERNEL_CMDLINE)
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)

BOARD_KERNEL_IMAGE_NAME := kernel
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_KERNEL_CONFIG := CPH1989_defconfig
TARGET_KERNEL_SOURCE := kernel/oppo/CPH1989

# Kernel - prebuilt
TARGET_FORCE_PREBUILT_KERNEL := true
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/$(BOARD_KERNEL_IMAGE_NAME)
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtb
BOARD_KERNEL_SEPARATED_DTBO := $(BOARD_PREBUILT_DTBOIMAGE)
endif

BOARD_AVB_ENABLE := true
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
# TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_SYSTEM := system

# Platform
TARGET_BOARD_PLATFORM := mt6771
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# File systems
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
# BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Recovery
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_MTP := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false

# Related to Booting
androidboot.selinux=permissive
androidboot.boot_devices=bootdevice,soc/11230000.mmc,11230000.mmc,soc/11270000.ufshci,11270000.ufshci

# Metadata
BOARD_USES_METADATA_PARTITION := true
BOARD_ROOT_EXTRA_FOLDERS := metadata my_product my_heytap my_company my_preload my_stock my_carrier my_region my_engineering my_manifest

# Security patch level
VENDOR_SECURITY_PATCH := 2021-08-01

TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# TWRP Configuration
TW_DEVICE_VERSION := 1_SeifHecker2099
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_DEFAULT_BRIGHTNESS := 531
# TW_INCLUDE_LOGICAL := my_product my_heytap my_company my_preload my_stock my_carrier my_region my_engineering my_manifest
TW_SCREEN_BLANK_ON_BOOT := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
RECOVERY_SDCARD_ON_DATA := true
TW_THEME_BLACK=0,0,0
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_EXCLUDE_APEX := true
TARGET_USES_MKE2FS := true
TW_USE_UFS := true
TW_UMS_LUNFILE := "/sys/class/misc/ufs_lun/lun"
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true
# Crypto
# TW_INCLUDE_CRYPTO := true
# TW_CRYPTO_FS_TYPE := "ext4"
# TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/bootdevice/by-name/userdata"
# TW_CRYPTO_MNT_POINT := "/data"
# TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,noauto_da_alloc,data=ordered"

# PBRP specific build flags
PB_TORCH_PATH := "/proc/qcom_flash"
PB_TORCH_MAX_BRIGHTNESS := 1

# MTK Hardware 
 BOARD_HAS_MTK_HARDWARE := true 
 BOARD_USES_MTK_HARDWARE := true 
 MTK_HARDWARE := true

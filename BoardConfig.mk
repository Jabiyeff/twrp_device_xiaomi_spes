#
# Copyright (C) 2022 The OrangeFox Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/xiaomi/mojito

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a55

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS := \
    boot \
    dtbo \
    product \
    system \
    system_ext \
    vbmeta \
    vbmeta_system \
    vendor_boot

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE := 4096

BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_BOOT_HEADER_VERSION := 3
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

BOARD_KERNEL_CMDLINE += androidboot.console=ttyMSM0
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE += androidboot.memcg=1
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a600000.dwc3
BOARD_KERNEL_CMDLINE += console=ttyMSM0,115200n8
BOARD_KERNEL_CMDLINE += earlycon=msm_geni_serial,0x880000
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += service_locator.enable=1
BOARD_KERNEL_CMDLINE += swiotlb=1
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE += video=vfb:640x400,bpp=32,memsize=3072000
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CONFIG := mojito_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/mojito

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 112419745792
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 100663296

# Dynamic Partitions
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 9122611200 # (BOARD_SUPER_PARTITION_SIZE - 4MB)
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := \
	system \
	vendor \
	system_ext \
	product

# Platform
TARGET_BOARD_PLATFORM := sm6150

# QCOM
BOARD_USES_QCOM_HARDWARE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true

# Recovery
TARGET_NO_RECOVERY := true
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USES_MKE2FS := true
RECOVERY_SDCARD_ON_DATA := true

# Encryption
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
BOARD_USES_QCOM_FBE_DECRYPTION := true

# Metadata
BOARD_USES_METADATA_PARTITION := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true

# TWRP Flags
TW_THEME := portrait_hdpi
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_USE_TOOLBOX := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_REPACKTOOLS := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 1200
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_APEX := true

# Debug
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

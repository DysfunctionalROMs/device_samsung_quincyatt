# Copyright (C) 2009 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from common quincy
-include device/samsung/quincy-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/quincyatt/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := MSM8660_SURF

# Assert
TARGET_OTA_ASSERT_DEVICE := SGH-I717,quincyatt
TARGET_BOARD_INFO_FILE ?= device/samsung/quincyatt/board-info.txt

# Logging
TARGET_USES_LOGD := false


# Resoultion
DEVICE_RESOLUTION := 800x1280

# Build with Oracle JDK 7
#ORACLE_JDK7 := true

# Kernel
TARGET_KERNEL_CONFIG := wicked_quincyatt_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/msm8660-common
##TARGET_GCC_VERSION_ARM := 4.7-sm
TARGET_CPU_VARIANT	:= scorpion
TARGET_HARDWARE_VARIANT := msm8960

# Build with compressed odex! (thanks Ken!!)
WITH_DEXPREOPT_COMP=true

#KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
#KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilt/linux-x86_64/toolchain/Linaro-4.7q/bin

# Keepin it block based for the sake of SuperSu
BLOCK_BASED_OTA=true

# Partitions
TARGET_BOARD_INFO_FILE := device/samsung/quincyatt/board-info.txt
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_CACHEIMAGE_PARTITION_SIZE := 316669952
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_FLASH_BLOCK_SIZE := 131072

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/quincyatt/bluetooth

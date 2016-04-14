# Copyright (C) 2009 The Android Open Source Project
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

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from S4 common
-include device/htc/s4-common/BoardConfigCommon.mk

# Require bootloader version
TARGET_BOARD_INFO_FILE ?= device/htc/ville/board-info.txt

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := ville

# Kernel
TARGET_KERNEL_CONFIG := ville_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/ville/bluetooth

# Camera
BOARD_CAMERA_FRONT_VGA := true

# Use libril in the device tree
BOARD_PROVIDES_LIBRIL := true
BOARD_RIL_FIVE_SEARCH_RESPONSES := true

# cat /proc/emmc
#dev:        size     erasesize name
#mmcblk0p23: 000ffa00 00000200 "misc"
#mmcblk0p22: 00fffe00 00000200 "recovery"
#mmcblk0p21: 01000000 00000200 "boot"
#mmcblk0p33: 67fffc00 00000200 "system"
#mmcblk0p30: 00140200 00000200 "local"
#mmcblk0p34: 0ffffe00 00000200 "cache"
#mmcblk0p35: 310000000 00000200 "userdata"
#mmcblk0p26: 01400000 00000200 "devlog"
#mmcblk0p28: 00040000 00000200 "pdata"
#mmcblk0p36: 030d4000 00000200 "fat"
#mmcblk0p31: 00010000 00000200 "extra"
#mmcblk0p32: 0616a000 00000200 "reserve"
#mmcblk0p17: 02d00000 00000200 "radio"
#mmcblk0p18: 00a00000 00000200 "adsp"
#mmcblk0p16: 00100000 00000200 "dsps"
#mmcblk0p19: 00500000 00000200 "wcnss"
#mmcblk0p20: 007ffa00 00000200 "radio_config"
#mmcblk0p24: 00400000 00000200 "modem_st1"
#mmcblk0p25: 00400000 00000200 "modem_st2"
#mmcblk0p32: 0616a000 00000200 "reserve"

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1744829440
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13153337344
BOARD_CACHEIMAGE_PARTITION_SIZE := 268434944
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# Vold
BOARD_VOLD_MAX_PARTITIONS := 37

# Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
TARGET_RECOVERY_FSTAB := device/htc/ville/rootdir/etc/fstab.qcom

#
# Copyright (C) 2011 The CyanogenMod Project
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

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/htc/ville/ville-vendor.mk)

# Inherit s4-common
$(call inherit-product, device/htc/s4-common/s4.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/ville/overlay

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Audio
PRODUCT_COPY_FILES += \
    device/htc/ville/dsp/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x

# FM radio
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# Input
PRODUCT_COPY_FILES += \
    device/htc/ville/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/ville/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    device/htc/ville/idc/tv-touchscreen.idc:system/usr/idc/tv-touchscreen.idc

PRODUCT_COPY_FILES += \
    device/htc/ville/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/ville/keylayout/cy8c-touchkey.kl:system/usr/keylayout/cy8c-touchkey.kl \
    device/htc/ville/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/ville/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/htc/ville/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/htc/ville/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl

# Media config
PRODUCT_COPY_FILES += \
    device/htc/ville/configs/media_profiles.xml:system/etc/media_profiles.xml

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.target.rc

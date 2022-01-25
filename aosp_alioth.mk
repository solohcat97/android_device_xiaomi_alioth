#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common aosp stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)
TARGET_USES_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true

#USE_PIXEL_CHARGING := true
TARGET_BOOT_ANIMATION_RES := 1080
#USE_AOSP_CLOCK := true
PRODUCT_NAME := aosp_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

ARCANA_DEVICE := alioth
ARCANA_MAINTAINER := Eidoron1
WITH_GAPPS := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="alioth_global-user 11 RKQ1.200826.002 V12.5.4.0.RKHMIXM release-keys"

BUILD_FINGERPRINT := Redmi/alioth_global/alioth:11/RKQ1.200826.002/V12.5.4.0.RKHMIXM:user/release-keys

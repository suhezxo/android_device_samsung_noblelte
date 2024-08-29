#
# Copyright (C) 2020 The LineageOS Project
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

LOCAL_PATH := device/samsung/noblelte

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, $(LOCAL_PATH)/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l.mk)

# Inherit some common Cherish stuff.
BUILD_WITH_GAPPS := true
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

CHERISH_BUILD_TYPE := Unofficial
WITH_GMS := true
# Cherish props
CHERISH_MAINTAINER := suhezxo

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := cherish_noblelte
PRODUCT_DEVICE := noblelte
PRODUCT_MODEL := SM-N920C
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=nobleltejv \
	TARGET_DEVICE=noblelte \
	PRIVATE_BUILD_DESC="nobleltejv-user 7.0 NRD90M N920CXXS5CRH3 release-keys"

BUILD_FINGERPRINT := "samsung/nobleltejv/noblelte:7.0/NRD90M/N920CXXS5CRH3:user/release-keys"

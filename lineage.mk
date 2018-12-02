#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from PL2 device
$(call inherit-product, device/nokia/PL2/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_PL2
PRODUCT_DEVICE := PL2
PRODUCT_MANUFACTURER := Nokia
PRODUCT_BRAND := Nokia

PRODUCT_GMS_CLIENTID_BASE := android-nokia

TARGET_VENDOR_PRODUCT_NAME := PL2
TARGET_VENDOR_DEVICE_NAME := PL2

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=PL2 \
    PRODUCT_NAME=PL2

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.model

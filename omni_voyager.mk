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

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/gsm.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

TARGET_BOOTANIMATION_SIZE := 1080p
AB_OTA_UPDATER := true

# Inherit from pioneer device
$(call inherit-product, device/sony/voyager/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_voyager
PRODUCT_DEVICE := voyager
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia XA2 Plus
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=voyager PRODUCT_NAME=XA2Plus

PRODUCT_GMS_CLIENTID_BASE := android-sony

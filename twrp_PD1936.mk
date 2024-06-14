#
# Copyright (C) 2019 The TwrpBuilder Open-Source Project
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

# Release name
PRODUCT_RELEASE_NAME := PD1936
DEVICE_PATH := device/vivo/PD1936

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)



# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := PD1936
PRODUCT_NAME := twrp_PD1936
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V1936A
PRODUCT_MANUFACTURER := vivo

# vivo
PRODUCT_PROPERTY_OVERRIDES += ro.vendor.vivo.product.model=$(PRODUCT_RELEASE_NAME)

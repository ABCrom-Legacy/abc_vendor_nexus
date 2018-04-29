# Copyright (C) 2016 The Pure Nexus Project
#
# Licensed under the Apache License, Version 2.0 (the "License"); you 
# may not use this file except in compliance with the License. You 
# may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software 
# distributed under the License is distributed on an "AS IS" BASIS, 
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
# implied. See the License for the specific language governinig
# permissions and limitations under the License. Include pure

# telephony configuration
include vendor/nexus/configs/abc_phone.mk

# Inherit AOSP device configuration for potter
$(call inherit-product, device/motorola/potter/abc_potter.mk)

# Override AOSP build properties
PRODUCT_NAME := potter
PRODUCT_DEVICE := potter
PRODUCT_BRAND : Motorola
PRODUCT_MODEL := Moto G5+
PRODUCT_MANUFACTURER := Motorola

# Copyright (C) 2016 The Pure Nexus Project
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

# init.d script support
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/nexus/prebuilt/bin/sysinit:system/bin/sysinit

# APN
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Copy all ABC-specific init rc files
$(foreach f,$(wildcard vendor/nexus/prebuilt/etc/init/*.rc),\
	$(eval PRODUCT_COPY_FILES += $(f):system/etc/init/$(notdir $f)))

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/nexus/prebuilt/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/nexus/prebuilt/bin/50-base.sh:system/addon.d/50-base.sh \

# Prebuilt busybox fstrim command
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/bin/fstrim:system/bin/fstrim

# Security Enhanced Linux
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.selinux=1

# Set Pixel blue light theme on Gboard
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.ime.theme_id=5

# Don't compile SystemUITests
EXCLUDE_SYSTEMUI_TESTS := true

# DU Utils Library
PRODUCT_BOOT_JARS += \
   org.dirtyunicorns.utils

# DU Utils Library
PRODUCT_PACKAGES += \
   org.dirtyunicorns.utils

# Packages
PRODUCT_PACKAGES += \
    GBoardDarkTheme \
    SystemUIDarkTheme \
    SettingsDarkTheme \
    SystemDarkTheme

# Overlays
PRODUCT_PACKAGES += \
    AmberAccent \
    BlackAccent \
    BlueAccent \
    BlueGreyAccent \
    BrownAccent \
    CyanAccent \
    DeepOrangeAccent \
    DeepPurpleAccent \
    GreenAccent \
    GreyAccent \
    IndigoAccent \
    LightBlueAccent \
    LightGreenAccent \
    LimeAccent \
    OrangeAccent \
    PinkAccent \
    PurpleAccent \
    RedAccent \
    TealAccent \
    YellowAccent \
    WhiteAccent

# Analog clocks
PRODUCT_PACKAGES += \
    DeepNightClock

# MusicFX advanced effects
ifneq ($(TARGET_NO_DSPMANAGER), true)
PRODUCT_PACKAGES += \
    libcyanogen-dsp \
    audio_effects.conf
endif

# Disable Rescue Party
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.disable_rescue=true

# Set custom volume steps
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.config.media_vol_steps=30 \
    ro.config.bt_sco_vol_steps=30

$(call inherit-product-if-exists, vendor/nexus/prebuilt/prebuilt.mk)

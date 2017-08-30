#
# This policy configuration will be used by all qcom products
# that inherit from ABC
#

BOARD_SEPOLICY_DIRS += \
    vendor/nexus/sepolicy/qcom/common \
    vendor/nexus/sepolicy/qcom/$(TARGET_BOARD_PLATFORM)
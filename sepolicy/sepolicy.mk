#
# This policy configuration will be used by all products that
# inherit from pure
#

include vendor/nexus/sepolicy/common/sepolicy.mk
include vendor/nexus/sepolicy/qcom/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    vendor/nexus/sepolicy

#
# This policy configuration will be used by all products that
# inherit from ABC
#

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    vendor/nexus/sepolicy/common/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    vendor/nexus/sepolicy/common/private

BOARD_SEPOLICY_DIRS += \
    vendor/nexus/sepolicy/common/vendor

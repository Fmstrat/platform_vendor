# Inherit AOSP device configuration for flo
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit common product files
#$(call inherit-product, vendor/nowsci/configs/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := nowsci_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

# For backups
PRODUCT_COPY_FILES += \
    vendor/nowsci/prebuilts/common/system/addon.d/50-nowsci.sh:system/addon.d/50-nowsci.sh:lge \
    vendor/nowsci/prebuilts/common/system/bin/backuptool.functions:system/bin/backuptool.functions:lge \
    vendor/nowsci/prebuilts/common/system/bin/backuptool.sh:system/bin/backuptool.sh:lge


# Local path for prebuilts
LOCAL_PATH:= vendor/nowsci/prebuilts/common/system


# Backuptool support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/addon.d/50-nowsci.sh:system/addon.d/50-nowsci.sh \
    $(LOCAL_PATH)/bin/backuptool.functions:system/bin/backuptool.functions \
    $(LOCAL_PATH)/bin/backuptool.sh:system/bin/backuptool.sh


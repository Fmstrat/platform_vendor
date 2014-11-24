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

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="occam" BUILD_FINGERPRINT="google/occam/mako:5.0/LRX21V/1576899:user/release-keys" PRIVATE_BUILD_DESC="occam-user 5.0 LRX21V 1576899 release-keys"

# Common build prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    keyguard.no_require_sim=true \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false

# For backups
PRODUCT_COPY_FILES += \
    vendor/nowsci/prebuilts/common/system/addon.d/50-nowsci.sh:system/addon.d/50-nowsci.sh:lge \
    vendor/nowsci/prebuilts/common/system/bin/backuptool.functions:system/bin/backuptool.functions:lge \
    vendor/nowsci/prebuilts/common/system/bin/backuptool.sh:system/bin/backuptool.sh:lge

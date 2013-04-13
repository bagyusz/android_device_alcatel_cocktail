$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_small.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Proprietary bits and pieces
$(call inherit-product-if-exists, device/alcatel/cocktail/vendor_cocktail.mk)

DEVICE_PACKAGE_OVERLAYS += device/alcatel/cocktail/overlay

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/prebuilt/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/alcatel/cocktail/prebuilt/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh

# CNE config
PRODUCT_COPY_FILES += \
   device/alcatel/cocktail/prebuilt/OperatorPolicy.xml:system/etc/OperatorPolicy.xml \
   device/alcatel/cocktail/prebuilt/UserPolicy.xml:system/etc/UserPolicy.xml

# ramdisk
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/init.cocktail.usb.rc:root/init.cocktail.usb.rc \
    device/alcatel/cocktail/init.rc:root/init.rc \
    device/alcatel/cocktail/init.cocktail.rc:root/init.cocktail.rc \
    device/alcatel/cocktail/ueventd.cocktail.rc:root/ueventd.cocktail.rc

# vold
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/vold.fstab:system/etc/vold.fstab

# Input config
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/keyfiles/surf_keypad.kcm:system/usr/keychars/surf_keypad.kcm \
    device/alcatel/cocktail/keyfiles/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/alcatel/cocktail/keyfiles/fluid-keypad.kl:system/usr/keylayout/fluid-keypad.kl \
    device/alcatel/cocktail/keyfiles/msm_tma300_ts.kl:system/usr/keylayout/msm_tma300_ts.kl \
    device/alcatel/cocktail/keyfiles/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    device/alcatel/cocktail/keyfiles/ft5306_ts.idc:system/usr/idc/ft5306_ts.idc \
    device/alcatel/cocktail/keyfiles/ft5306_ts.kcm:system/usr/keychars/ft5306_ts.kcm \
    device/alcatel/cocktail/keyfiles/ft5306_ts.kl:system/usr/keylayout/ft5306_ts.kl

# apn fix
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/prebuilt/apns-conf.xml:system/etc/apns-conf.xml \
    device/alcatel/cocktail/prebuilt/spn-conf.xml:system/etc/spn-conf.xml

# Media codecs & audio policy
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/media_codecs.xml:system/etc/media_codecs.xml \
    device/alcatel/cocktail/media_profiles.xml:system/etc/media_profiles.xml \
    device/alcatel/cocktail/audio_policy.conf:system/etc/audio_policy.conf

# use high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += hdpi

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Bletooth
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf

# Kernel - prebuilt for now
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/alcatel/cocktail/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Video
PRODUCT_PACKAGES += \
    copybit.msm7x30 \
    gralloc.msm7x30 \
    hwcomposer.msm7x30 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer \
    libinvensense_hal

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm7x30 \
    audio.primary.msm7x30 \
    libaudioutils

PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    libstagefrighthw \
    libI420colorconvert

# Video
#PRODUCT_PACKAGES += \
#    libstagefrighthw \
#    libmm-omxcore \
#    libOmxCore

# Wireless AP
PRODUCT_PACKAGES += \
    hostapd_cli \
    hostapd

# GPS
PRODUCT_PACKAGES += \
    gps.cocktail

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni

# Ship Torch
PRODUCT_PACKAGES += Torch

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_cocktail
PRODUCT_DEVICE := cocktail
PRODUCT_MANUFACTURER := Alcatel
PRODUCT_MODEL := OT-995

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Proprietary bits and pieces
$(call inherit-product-if-exists, device/alcatel/cocktail/vendor_cocktail.mk)

DEVICE_PACKAGE_OVERLAYS += device/alcatel/cocktail/overlay

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/prebuilt/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh

# init.rc and ueventd.rc
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/init.rc:root/init.rc \
    device/alcatel/cocktail/init.cocktail.rc:root/init.cocktail.rc \
    device/alcatel/cocktail/init.cocktail.usb.rc:root/init.cocktail.usb.rc \
    device/alcatel/cocktail/ueventd.cocktail.rc:root/ueventd.cocktail.rc

# vold
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/vold.fstab:system/etc/vold.fstab

# Input config
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/ft5306_ts.idc:system/usr/idc/ft5306_ts.idc \
    device/alcatel/cocktail/ft5306_ts.kcm:system/usr/keychars/ft5306_ts.kcm \
    device/alcatel/cocktail/ft5306_ts.kl:system/usr/keylayout/ft5306_ts.kl \

# apn fix
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/prebuilt/apns-conf.xml:system/etc/apns-conf.xml \
    device/alcatel/cocktail/prebuilt/spn-conf.xml:system/etc/spn-conf.xml

# Media codecs & audio policy
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/media_codecs.xml:system/etc/media_codecs.xml \
    device/alcatel/cocktail/media_profiles.xml:system/etc/media_profiles.xml \
    device/alcatel/cocktail/audio_policy.conf:system/etc/audio_policy.conf


# CNE config
PRODUCT_COPY_FILES += \
   device/alcatel/cocktail/OperatorPolicy.xml:system/etc/OperatorPolicy.xml \
   device/alcatel/cocktail/UserPolicy.xml:system/etc/UserPolicy.xml

# Use HDPI phone dalvik config
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Kernel - prebuilt for now
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/alcatel/cocktail/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel


# Additional packages
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

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libI420colorconvert \
    mm-vdec-omx-test \
    mm-venc-omx-test720p \
    mm-video-driver-test \
    mm-video-encdrv-test \
    libOmxCore.so \
    libOmxVdec.so \
    libOmxVenc.so \
    libstagefrighthw

# GPS
PRODUCT_PACKAGES += \
    librpc \
    gps.cocktail

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Power
PRODUCT_PACKAGES += \
    power.msm7x30

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# Ship Torch
PRODUCT_PACKAGES += Torch

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    make_ext4fs \
    setup_fs


PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    ro.opengles.version=131072 \
    wifi.interface=wlan0

# System properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.cne.UseCne=vendor \
    persist.cne.UseSwim=false \
    persist.cne.bat.range.low.med=30 \
    persist.cne.bat.range.med.high=60 \
    persist.cne.loc.policy.op=/system/etc/OperatorPolicy.xml \
    persist.cne.loc.policy.user=/system/etc/UserPolicy.xml \
    persist.cne.bwbased.rat.sel=false \
    persist.cne.snsr.based.rat.mgt=false \
    persist.cne.bat.based.rat.mgt=false \
    persist.cne.rat.acq.time.out=30000 \
    persist.cne.rat.acq.retry.tout=0 \
    persist.cne.nsrm.mode=false \
    debug.sf.nobootanimation=1 \
    persist.sys.shutdown.mode=hibernate \
    persist.sys.usb.config=mass_storage


# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.hw=1 \
    debug.egl.hw=1

$(call inherit-product, build/target/product/full.mk)

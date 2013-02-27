# prebuilt libaudioalsa
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/libaudioalsa.so:obj/lib/libaudioalsa.so

# bcm4330 wlan fw
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/fw_bcmdhd.bin:/system/etc/firmware/fw_bcmdhd.bin \
    device/alcatel/cocktail/proprietary/fw_bcmdhd_apsta.bin:/system/etc/firmware/fw_bcmdhd_apsta.bin \
    device/alcatel/cocktail/proprietary/fw_bcmdhd_p2p.bin:/system/etc/firmware/fw_bcmdhd_p2p.bin \
    device/alcatel/cocktail/bcmdhd.cal:/system/etc/wifi/bcmdhd.cal

# omx
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/omx/libOmxAacDec.so:/system/lib/libOmxAacDec.so \
    device/alcatel/cocktail/proprietary/omx/libOmxAacEnc.so:/system/lib/libOmxAacEnc.so \
    device/alcatel/cocktail/proprietary/omx/libOmxAdpcmDec.so:/system/lib/libOmxAdpcmDec.so \
    device/alcatel/cocktail/proprietary/omx/libOmxAmrDec.so:/system/lib/libOmxAmrDec.so \
    device/alcatel/cocktail/proprietary/omx/libOmxAmrEnc.so:/system/lib/libOmxAmrEnc.so \
    device/alcatel/cocktail/proprietary/omx/libOmxAmrRtpDec.so:/system/lib/libOmxAmrRtpDec.so \
    device/alcatel/cocktail/proprietary/omx/libOmxAmrwbDec.so:/system/lib/libOmxAmrwbDec.so \
    device/alcatel/cocktail/proprietary/omx/libOmxEvrcDec.so:/system/lib/libOmxEvrcDec.so \
    device/alcatel/cocktail/proprietary/omx/libOmxEvrcEnc.so:/system/lib/libOmxEvrcEnc.so \
    device/alcatel/cocktail/proprietary/omx/libOmxMp3Dec.so:/system/lib/libOmxMp3Dec.so \
    device/alcatel/cocktail/proprietary/omx/libOmxQcelp13Dec.so:/system/lib/libOmxQcelp13Dec.so \
    device/alcatel/cocktail/proprietary/omx/libOmxQcelp13Enc.so:/system/lib/libOmxQcelp13Enc.so \
    device/alcatel/cocktail/proprietary/omx/libOmxQcelpHwDec.so:/system/lib/libOmxQcelpHwDec.so \
    device/alcatel/cocktail/proprietary/omx/libOmxVdec.so:/system/lib/libOmxVdec.so \
    device/alcatel/cocktail/proprietary/omx/libOmxVenc.so:/system/lib/libOmxVenc.so \
    device/alcatel/cocktail/proprietary/omx/libOmxWmaDec.so:/system/lib/libOmxWmaDec.so

# hdmi
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/hdmid:/system/bin/hdmid

# USB-OTG modules (995S 3.0.8 Kernel)
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/modules/OTG/fuse.ko:/system/lib/modules/fuse.ko \
    device/alcatel/cocktail/modules/OTG/hid-logitech.ko:/system/lib/modules/hid-logitech.ko \
    device/alcatel/cocktail/modules/OTG/hid-microsoft.ko:/system/lib/modules/hid-microsoft.ko \
    device/alcatel/cocktail/modules/OTG/ntfs.ko:/system/lib/modules/ntfs.ko \
    device/alcatel/cocktail/modules/OTG/usbhid.ko:/system/lib/modules/usbhid.ko \
    device/alcatel/cocktail/modules/OTG/usb-storage.ko:/system/lib/modules/usb-storage.ko

# USB-OTG
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/usbhub:/system/bin/usbhub \
    device/alcatel/cocktail/proprietary/usbhub_init:/system/bin/usbhub_init

# bcm4330 bt fw
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/bcm4330.hcd:/system/etc/firmware/bcm4330.hcd

# battery
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/battery_charging:/system/bin/battery_charging \
    device/alcatel/cocktail/proprietary/battery_charge_0.rle:/system/battery_charge_0.rle \
    device/alcatel/cocktail/proprietary/battery_charge_1.rle:/system/battery_charge_1.rle \
    device/alcatel/cocktail/proprietary/battery_charge_2.rle:/system/battery_charge_2.rle \
    device/alcatel/cocktail/proprietary/battery_charge_3.rle:/system/battery_charge_3.rle \
    device/alcatel/cocktail/proprietary/battery_charge_4.rle:/system/battery_charge_4.rle \
    device/alcatel/cocktail/proprietary/battery_charge_5.rle:/system/battery_charge_5.rle \
    device/alcatel/cocktail/proprietary/battery_charge_6.rle:/system/battery_charge_6.rle \
    device/alcatel/cocktail/proprietary/battery_charge_7.rle:/system/battery_charge_7.rle \
    device/alcatel/cocktail/proprietary/battery_charge_8.rle:/system/battery_charge_8.rle \
    device/alcatel/cocktail/proprietary/battery_charge_9.rle:/system/battery_charge_9.rle \
    device/alcatel/cocktail/proprietary/battery_charge_full.rle:/system/battery_charge_full.rle \
    device/alcatel/cocktail/proprietary/initlogo.rle:/system/initlogo.rle

# video codecs
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    device/alcatel/cocktail/proprietary/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
    device/alcatel/cocktail/proprietary/firmware/vidc_720p_command_control.fw:/system/etc/firmware/vidc_720p_command_control.fw \
    device/alcatel/cocktail/proprietary/firmware/vidc_720p_h263_dec_mc.fw:/system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/alcatel/cocktail/proprietary/firmware/vidc_720p_h264_dec_mc.fw:/system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/alcatel/cocktail/proprietary/firmware/vidc_720p_h264_enc_mc.fw:/system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/alcatel/cocktail/proprietary/firmware/vidc_720p_mp4_dec_mc.fw:/system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/alcatel/cocktail/proprietary/firmware/vidc_720p_mp4_enc_mc.fw:/system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/alcatel/cocktail/proprietary/firmware/vidc_720p_vc1_dec_mc.fw:/system/etc/firmware/vidc_720p_vc1_dec_mc.fw

# sensors
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/sensors.qcom.so:/system/lib/hw/sensors.cocktail.so \
    device/alcatel/cocktail/proprietary/akmd8975:/system/bin/akmd8975

# adreno
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/libgsl.so:/system/lib/libgsl.so \
    device/alcatel/cocktail/proprietary/libOpenVG.so:/system/lib/libOpenVG.so \
    device/alcatel/cocktail/proprietary/libC2D2.so:/system/lib/libC2D2.so \
    device/alcatel/cocktail/proprietary/eglsubAndroid.so:/system/lib/egl/eglsubAndroid.so \
    device/alcatel/cocktail/proprietary/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
    device/alcatel/cocktail/proprietary/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
    device/alcatel/cocktail/proprietary/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
    device/alcatel/cocktail/proprietary/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \
    device/alcatel/cocktail/proprietary/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw \
    device/alcatel/cocktail/proprietary/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    device/alcatel/cocktail/proprietary/libsc-a2xx.so:/system/lib/libsc-a2xx.so

# misc
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/ds_fmc_appd:/system/bin/ds_fmc_appd \
    device/alcatel/cocktail/prebuilt/thermald.conf:/system/etc/thermald.conf \
    device/alcatel/cocktail/proprietary/thermald:/system/bin/thermald \
    device/alcatel/cocktail/proprietary/mm-pp-daemon:/system/bin/mm-pp-daemon \
    device/alcatel/cocktail/proprietary/libaudioalsa.so:/system/lib/libaudioalsa.so \
    device/alcatel/cocktail/proprietary/rmt_storage:/system/bin/rmt_storage \
    device/alcatel/cocktail/proprietary/lights.msm7630_surf.so:/system/lib/hw/lights.cocktail.so

# camera
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/camera.msm7630_surf.so:/system/lib/hw/camera.cocktail.so \
    device/alcatel/cocktail/proprietary/liboemcamera.so:/system/lib/liboemcamera.so \
    device/alcatel/cocktail/proprietary/libgemini.so:/system/lib/libgemini.so \
    device/alcatel/cocktail/proprietary/libmmipl.so:/system/lib/libmmipl.so \
    device/alcatel/cocktail/proprietary/libmmjpeg.so:/system/lib/libmmjpeg.so \
    device/alcatel/cocktail/proprietary/libchromatix_ov5647_preview.so:/system/lib/libchromatix_ov5647_preview.so

# modules
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/modules/ansi_cprng.ko:/system/lib/modules/ansi_cprng.ko \
    device/alcatel/cocktail/modules/cls_flow.ko:/system/lib/modules/cls_flow.ko \
    device/alcatel/cocktail/modules/cpaccess.ko:/system/lib/modules/cpaccess.ko \
    device/alcatel/cocktail/modules/dal_remotetest.ko:/system/lib/modules/dal_remotetest.ko \
    device/alcatel/cocktail/modules/dma_test.ko:/system/lib/modules/dma_test.ko \
    device/alcatel/cocktail/modules/evbug.ko:/system/lib/modules/evbug.ko \
    device/alcatel/cocktail/modules/gspca_main.ko:/system/lib/modules/gspca_main.ko \
    device/alcatel/cocktail/modules/mtd_erasepart.ko:/system/lib/modules/mtd_erasepart.ko \
    device/alcatel/cocktail/modules/mtd_nandecctest.ko:/system/lib/modules/mtd_nandecctest.ko \
    device/alcatel/cocktail/modules/mtd_oobtest.ko:/system/lib/modules/mtd_oobtest.ko \
    device/alcatel/cocktail/modules/mtd_pagetest.ko:/system/lib/modules/mtd_pagetest.ko \
    device/alcatel/cocktail/modules/mtd_readtest.ko:/system/lib/modules/mtd_readtest.ko \
    device/alcatel/cocktail/modules/mtd_speedtest.ko:/system/lib/modules/mtd_speedtest.ko \
    device/alcatel/cocktail/modules/mtd_stresstest.ko:/system/lib/modules/mtd_stresstest.ko \
    device/alcatel/cocktail/modules/mtd_subpagetest.ko:/system/lib/modules/mtd_subpagetest.ko \
    device/alcatel/cocktail/modules/mtd_torturetest.ko:/system/lib/modules/mtd_torturetest.ko \
    device/alcatel/cocktail/modules/oprofile.ko:/system/lib/modules/oprofile.ko \
    device/alcatel/cocktail/modules/qce.ko:/system/lib/modules/qce.ko \
    device/alcatel/cocktail/modules/qcedev.ko:/system/lib/modules/qcedev.ko \
    device/alcatel/cocktail/modules/qcrypto.ko:/system/lib/modules/qcrypto.ko \
    device/alcatel/cocktail/modules/sch_dsmark.ko:/system/lib/modules/sch_dsmark.ko \
    device/alcatel/cocktail/modules/scsi_wait_scan.ko:/system/lib/modules/scsi_wait_scan.ko

# vendor lib
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/vendor/lib/libwvdrm_L3.so:/system/vendor/lib/libwvdrm_L3.so \
    device/alcatel/cocktail/vendor/lib/libwvm.so:/system/vendor/lib/libwvm.so \
    device/alcatel/cocktail/vendor/lib/libWVStreamControlAPI_L3.so:/system/vendor/lib/libWVStreamControlAPI_L3.so \
    device/alcatel/cocktail/vendor/lib/drm/libdrmwvmplugin.so:/system/vendor/lib/drm/libdrmwvmplugin.so

# ril
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/libidl.so:/system/lib/libidl.so \
    device/alcatel/cocktail/proprietary/libnetmgr.so:/system/lib/libnetmgr.so \
    device/alcatel/cocktail/proprietary/libqdp.so:/system/lib/libqdp.so \
    device/alcatel/cocktail/proprietary/libqdi.so:/system/lib/libqdi.so \
    device/alcatel/cocktail/proprietary/libqmi.so:/system/lib/libqmi.so \
    device/alcatel/cocktail/proprietary/libqmiservices.so:/system/lib/libqmiservices.so \
    device/alcatel/cocktail/proprietary/libril-qc-qmi-1.so:/system/lib/libril-qc-qmi-1.so \
    device/alcatel/cocktail/proprietary/libril-qcril-hook-oem.so:/system/lib/libril-qcril-hook-oem.so \
    device/alcatel/cocktail/proprietary/libdsi_netctrl.so:/system/lib/libdsi_netctrl.so \
    device/alcatel/cocktail/proprietary/libdiag.so:/system/lib/libdiag.so \
    device/alcatel/cocktail/proprietary/libdsutils.so:/system/lib/libdsutils.so \
    device/alcatel/cocktail/proprietary/qmuxd:/system/bin/qmuxd \
    device/alcatel/cocktail/proprietary/qmiproxy:/system/bin/qmiproxy \
    device/alcatel/cocktail/proprietary/netmgrd:/system/bin/netmgrd \
    device/alcatel/cocktail/proprietary/cnd:/system/bin/cnd \
    device/alcatel/cocktail/proprietary/libxml.so:/system/lib/libxml.so \
    device/alcatel/cocktail/proprietary/libcneutils.so:/system/lib/libcneutils.so \
    device/alcatel/cocktail/proprietary/libcneqmiutils.so:/system/lib/libcneqmiutils.so

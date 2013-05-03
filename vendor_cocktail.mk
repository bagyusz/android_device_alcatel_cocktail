# audio
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/libaudcal.so:obj/lib/libaudcal.so \
    device/alcatel/cocktail/proprietary/libaudioalsa.so:obj/lib/libaudioalsa.so \
    device/alcatel/cocktail/proprietary/libaudioalsa.so:/system/lib/libaudioalsa.so

# bcm4330 bt fw
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/bcm4330.hcd:/system/bin/BCM4330B1_002.001.003.0087.0000_TCL_Cocktail_TESTONLY.hcd \
    device/alcatel/cocktail/prebuilt/bluetooth.addr:system/etc/bluetooth/bdaddr.txt

# bcm4330 wlan fw
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/p2p_supplicant.conf:/system/etc/wifi/p2p_supplicant.conf \
    device/alcatel/cocktail/proprietary/fw_bcmdhd.bin:/system/etc/wifi/firmware/fw_bcmdhd.bin \
    device/alcatel/cocktail/proprietary/fw_bcmdhd_apsta.bin:/system/etc/wifi/firmware/fw_bcmdhd_apsta.bin \
    device/alcatel/cocktail/proprietary/fw_bcmdhd_p2p.bin:/system/etc/wifi/firmware/fw_bcmdhd_p2p.bin \
    device/alcatel/cocktail/proprietary/fw_bcmdhd_test.bin:/system/etc/wifi/firmware/fw_bcmdhd_test.bin \
    device/alcatel/cocktail/bcmdhd.cal:/system/etc/wifi/bcmdhd.cal

# hdmi
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/hdmid:/system/bin/hdmid

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
    device/alcatel/cocktail/proprietary/omx/libOmxWmaDec.so:/system/lib/libOmxWmaDec.so

# USB-OTG modules (995S 3.0.8 Kernel)
#PRODUCT_COPY_FILES += \
#    device/alcatel/cocktail/modules/OTG/fuse.ko:/system/lib/modules/fuse.ko \
#    device/alcatel/cocktail/modules/OTG/hid-logitech.ko:/system/lib/modules/hid-logitech.ko \
#    device/alcatel/cocktail/modules/OTG/hid-microsoft.ko:/system/lib/modules/hid-microsoft.ko \
#    device/alcatel/cocktail/modules/OTG/ntfs.ko:/system/lib/modules/ntfs.ko \
#    device/alcatel/cocktail/modules/OTG/usbhid.ko:/system/lib/modules/usbhid.ko \
#    device/alcatel/cocktail/modules/OTG/usb-storage.ko:/system/lib/modules/usb-storage.ko


# USB-OTG
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/usbhub:/system/bin/usbhub \
    device/alcatel/cocktail/proprietary/usbhub_init:/system/bin/usbhub_init

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

# sensors
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/sensors.qcom.so:/system/lib/hw/sensors.cocktail.so \
    device/alcatel/cocktail/proprietary/lights.msm7630_surf.so:/system/lib/hw/lights.cocktail.so \
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

# V8 JavaScript Engine
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/libv8.so:obj/lib/libv8.so \
    device/alcatel/cocktail/proprietary/libv8.so:/system/lib/libv8.so

# misc
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/libcm.so:/system/lib/libcm.so \
    device/alcatel/cocktail/proprietary/libcneapiclient.so:/system/lib/libcneapiclient.so \
    device/alcatel/cocktail/proprietary/libcurl.so:/system/lib/libcurl.so \
    device/alcatel/cocktail/proprietary/libfilterfw.so:/system/lib/libfilterfw.so \
    device/alcatel/cocktail/proprietary/libfilterpack_facedetect.so:/system/lib/libfilterpack_facedetect.so \
    device/alcatel/cocktail/proprietary/libfilterpack_imageproc.so:/system/lib/libfilterpack_imageproc.so \
    device/alcatel/cocktail/proprietary/libfm_wan_api.so:/system/lib/libfm_wan_api.so \
    device/alcatel/cocktail/proprietary/libfrsdk.so:/system/lib/libfrsdk.so \
    device/alcatel/cocktail/proprietary/libI420colorconvert.so:/system/lib/libI420colorconvert.so \
    device/alcatel/cocktail/proprietary/libmm-abl.so:/system/lib/libmm-abl.so \
    device/alcatel/cocktail/proprietary/libmm-abl-oem.so:/system/lib/libmm-abl-oem.so \
    device/alcatel/cocktail/proprietary/libmm-color-convertor.so:/system/lib/libmm-color-convertor.so \
    device/alcatel/cocktail/proprietary/libNimsWrap.so:/system/lib/libNimsWrap.so \
    device/alcatel/cocktail/proprietary/libpicowrapper.so:/system/lib/libpicowrapper.so \
    device/alcatel/cocktail/proprietary/libauth.so:/system/lib/libauth.so \
    device/alcatel/cocktail/proprietary/libdsm.so:/system/lib/libdsm.so \
    device/alcatel/cocktail/proprietary/libdss.so:/system/lib/libdss.so \
    device/alcatel/cocktail/proprietary/libDivxDrm.so:/system/lib/libDivxDrm.so \
    device/alcatel/cocktail/proprietary/libgsdi_exp.so:/system/lib/libgsdi_exp.so \
    device/alcatel/cocktail/proprietary/libgstk_exp.so:/system/lib/libgstk_exp.so \
    device/alcatel/cocktail/proprietary/libmmgsdilib.so:/system/lib/libmmgsdilib.so \
    device/alcatel/cocktail/proprietary/libmmjps.so:/system/lib/libmmjps.so \
    device/alcatel/cocktail/proprietary/libmmmpo.so:/system/lib/libmmmpo.so \
    device/alcatel/cocktail/proprietary/libmmosal.so:/system/lib/libmmosal.so \
    device/alcatel/cocktail/proprietary/libmmparser.so:/system/lib/libmmparser.so \
    device/alcatel/cocktail/proprietary/libnv.so:/system/lib/libnv.so \
    device/alcatel/cocktail/proprietary/liboem_rapi.so:/system/lib/liboem_rapi.so \
    device/alcatel/cocktail/proprietary/liboncrpc.so:/system/lib/liboncrpc.so \
    device/alcatel/cocktail/proprietary/libQWiFiSoftApCfg.so:/system/lib/libQWiFiSoftApCfg.so \
    device/alcatel/cocktail/proprietary/libpbmlib.so:/system/lib/libpbmlib.so \
    device/alcatel/cocktail/proprietary/libqueue.so:/system/lib/libqueue.so \
    device/alcatel/cocktail/proprietary/libuim.so:/system/lib/libuim.so \
    device/alcatel/cocktail/proprietary/libwms.so:/system/lib/libwms.so \
    device/alcatel/cocktail/proprietary/libwmsts.so:/system/lib/libwmsts.so \
    device/alcatel/cocktail/proprietary/ccid_daemon:/system/bin/ccid_daemon \
    device/alcatel/cocktail/proprietary/curl:/system/bin/curl \
    device/alcatel/cocktail/proprietary/ds_fmc_appd:/system/bin/ds_fmc_appd \
    device/alcatel/cocktail/proprietary/fmconfig:/system/bin/fmconfig \
    device/alcatel/cocktail/proprietary/ftmdaemon:/system/bin/ftmdaemon \
    device/alcatel/cocktail/proprietary/mverproxy:/system/bin/mverproxy \
    device/alcatel/cocktail/proprietary/ndc:/system/bin/ndc \
    device/alcatel/cocktail/proprietary/nl_listener:/system/bin/nl_listener \
    device/alcatel/cocktail/proprietary/radish:/system/bin/radish \
    device/alcatel/cocktail/proprietary/readmmc:/system/bin/readmmc \
    device/alcatel/cocktail/proprietary/rmt_storage:/system/bin/rmt_storage \
    device/alcatel/cocktail/proprietary/test_gemini:/system/bin/test_gemini \
    device/alcatel/cocktail/proprietary/thermald:/system/bin/thermald \
    device/alcatel/cocktail/proprietary/trace_util:/system/bin/trace_util \
    device/alcatel/cocktail/proprietary/updater:/system/bin/updater

# "trace_util" BT/wifi mac loader, not work

# camera
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/mm-adec-omxaac-test:/system/bin/mm-adec-omxaac-test \
    device/alcatel/cocktail/proprietary/mm-adec-omxadpcm-test:/system/bin/mm-adec-omxadpcm-test \
    device/alcatel/cocktail/proprietary/mm-adec-omxamr-test:/system/bin/mm-adec-omxamr-test \
    device/alcatel/cocktail/proprietary/mm-adec-omxamrwb-test:/system/bin/mm-adec-omxamrwb-test \
    device/alcatel/cocktail/proprietary/mm-adec-omxmp3-test:/system/bin/mm-adec-omxmp3-test \
    device/alcatel/cocktail/proprietary/mm-adec-omxQcelpHw-test:/system/bin/mm-adec-omxQcelpHw-test \
    device/alcatel/cocktail/proprietary/mm-adec-omxvam-test:/system/bin/mm-adec-omxvam-test \
    device/alcatel/cocktail/proprietary/mm-adec-omxwma-test:/system/bin/mm-adec-omxwma-test \
    device/alcatel/cocktail/proprietary/mm-aenc-omxaac-test:/system/bin/mm-aenc-omxaac-test \
    device/alcatel/cocktail/proprietary/mm-aenc-omxamr-test:/system/bin/mm-aenc-omxamr-test \
    device/alcatel/cocktail/proprietary/mm-aenc-omxevrc-test:/system/bin/mm-aenc-omxevrc-test \
    device/alcatel/cocktail/proprietary/mm-aenc-omxqcelp13-test:/system/bin/mm-aenc-omxqcelp13-test \
    device/alcatel/cocktail/proprietary/mm-audio-alsa-test:/system/bin/mm-audio-alsa-test \
    device/alcatel/cocktail/proprietary/mm-audio-ctrl-test:/system/bin/mm-audio-ctrl-test \
    device/alcatel/cocktail/proprietary/mm-audio-mvs-test:/system/bin/mm-audio-mvs-test \
    device/alcatel/cocktail/proprietary/mm-audio-native-test:/system/bin/mm-audio-native-test \
    device/alcatel/cocktail/proprietary/mm-audio-voem_if-test:/system/bin/mm-audio-voem_if-test \
    device/alcatel/cocktail/proprietary/mm-jpeg-dec-test:/system/bin/mm-jpeg-dec-test \
    device/alcatel/cocktail/proprietary/mm-jpeg-enc-test:/system/bin/mm-jpeg-enc-test \
    device/alcatel/cocktail/proprietary/mm-jps-enc-test:/system/bin/mm-jps-enc-test \
    device/alcatel/cocktail/proprietary/mm-mpo-dec-test:/system/bin/mm-mpo-dec-test \
    device/alcatel/cocktail/proprietary/mm-mpo-enc-test:/system/bin/mm-mpo-enc-test \
    device/alcatel/cocktail/proprietary/mm-omx-devmgr:/system/bin/mm-omx-devmgr \
    device/alcatel/cocktail/proprietary/mm-pp-daemon:/system/bin/mm-pp-daemon \
    device/alcatel/cocktail/proprietary/mm-qcamera-daemon:/system/bin/mm-qcamera-daemon \
    device/alcatel/cocktail/proprietary/mm-qcamera-test:/system/bin/mm-qcamera-test \
    device/alcatel/cocktail/proprietary/mm-qcamera-testsuite-client:/system/bin/mm-qcamera-testsuite-client \
    device/alcatel/cocktail/proprietary/mm-vdec-omx-test:/system/bin/mm-vdec-omx-test \
    device/alcatel/cocktail/proprietary/mm-venc-omx-test720p:/system/bin/mm-venc-omx-test720p\
    device/alcatel/cocktail/proprietary/mm-video-driver-test:/system/bin/mm-video-driver-test\
    device/alcatel/cocktail/proprietary/mm-video-encdrv-test:/system/bin/mm-video-encdrv-test\
    device/alcatel/cocktail/proprietary/v4l2-qcamera-app:/system/bin/v4l2-qcamera-app\
    device/alcatel/cocktail/proprietary/camera.msm7630_surf.so:/system/lib/hw/camera.cocktail.so \
    device/alcatel/cocktail/proprietary/libcamera_client.so:/system/lib/libcamera_client.so \
    device/alcatel/cocktail/proprietary/liboemcamera.so:/system/lib/liboemcamera.so \
    device/alcatel/cocktail/proprietary/libgemini.so:/system/lib/libgemini.so \
    device/alcatel/cocktail/proprietary/libmmipl.so:/system/lib/libmmipl.so \
    device/alcatel/cocktail/proprietary/libmmjpeg.so:/system/lib/libmmjpeg.so \
    device/alcatel/cocktail/proprietary/libchromatix_imx074_default_video.so:/system/lib/libchromatix_imx074_default_video.so \
    device/alcatel/cocktail/proprietary/libchromatix_imx074_preview.so:/system/lib/libchromatix_imx074_preview.so \
    device/alcatel/cocktail/proprietary/libchromatix_imx074_zsl.so:/system/lib/libchromatix_imx074_zsl.so \
    device/alcatel/cocktail/proprietary/libchromatix_ov5647_default_video.so:/system/lib/libchromatix_ov5647_default_video.so \
    device/alcatel/cocktail/proprietary/libchromatix_ov5647_preview.so:/system/lib/libchromatix_ov5647_preview.so

# ril
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/libidl.so:/system/lib/libidl.so \
    device/alcatel/cocktail/proprietary/libnetmgr.so:/system/lib/libnetmgr.so \
    device/alcatel/cocktail/proprietary/libqdp.so:/system/lib/libqdp.so \
    device/alcatel/cocktail/proprietary/libqdi.so:/system/lib/libqdi.so \
    device/alcatel/cocktail/proprietary/libqmi.so:/system/lib/libqmi.so \
    device/alcatel/cocktail/proprietary/libqmiservices.so:/system/lib/libqmiservices.so \
    device/alcatel/cocktail/proprietary/libqc-opt.so:/system/lib/libqc-opt.so \
    device/alcatel/cocktail/proprietary/libril.so:/system/lib/libril.so \
    device/alcatel/cocktail/proprietary/libril-qc-1.so:/system/lib/libril-qc-1.so \
    device/alcatel/cocktail/proprietary/libril-qc-qmi-1.so:/system/lib/libril-qc-qmi-1.so \
    device/alcatel/cocktail/proprietary/libril-qcril-hook-oem.so:/system/lib/libril-qcril-hook-oem.so \
    device/alcatel/cocktail/proprietary/libdsi_netctrl.so:/system/lib/libdsi_netctrl.so \
    device/alcatel/cocktail/proprietary/libdiag.so:/system/lib/libdiag.so \
    device/alcatel/cocktail/proprietary/libdsutils.so:/system/lib/libdsutils.so \
    device/alcatel/cocktail/proprietary/libxml.so:/system/lib/libxml.so \
    device/alcatel/cocktail/proprietary/libcneutils.so:/system/lib/libcneutils.so \
    device/alcatel/cocktail/proprietary/libcneqmiutils.so:/system/lib/libcneqmiutils.so \
    device/alcatel/cocktail/proprietary/rild:/system/bin/rild \
    device/alcatel/cocktail/proprietary/qmuxd:/system/bin/qmuxd \
    device/alcatel/cocktail/proprietary/qmiproxy:/system/bin/qmiproxy \
    device/alcatel/cocktail/proprietary/netmgrd:/system/bin/netmgrd \
    device/alcatel/cocktail/proprietary/cnd:/system/bin/cnd


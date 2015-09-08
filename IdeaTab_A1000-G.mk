$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)
# Inherit some common cyanogenmod stuff.
(may or may not have to use this)
$(call inherit-product, vendor/source/products/common_full.mk)

$(call inherit-product-if-exists, vendor/LENOVO/IdeaTab_A1000-G/IdeaTab_A1000-G-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/LENOVO/IdeaTab_A1000-G/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/LENOVO/IdeaTab_A1000-G/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_PACKAGES += \
    hostap \
    librs_jni \
    gralloc.msm7k \
    overlay.default \
    screencap \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    com.android.future.usb.accessory \
    hostapd
    
PRODUCT_PACKAGES += \
    sensors.default \
    lights.msm7k

#kernel modules
PRODUCT_COPY_FILES += \
    device/LENOVO/IdeaTab_A1000-G/files/lib/modules/bthid.ko:root/lib/modules/bthid.ko \
    device/LENOVO/IdeaTab_A1000-G/files/lib/modules/cmc7xx_sdio.ko:root/lib/modules/cmc7xx_sdio.ko \
    device/LENOVO/IdeaTab_A1000-G/files/lib/modules/dhd.ko:root/lib/modules/dhd.ko \
    device/LENOVO/IdeaTab_A1000-G/files/lib/modules/qce.ko:root/lib/modules/qce.ko \
    device/LENOVO/IdeaTab_A1000-G/files/lib/modules/qcedev.ko:root/lib/modules/qcedev.ko \
    device/LENOVO/IdeaTab_A1000-G/files/system/lib/libdiag.so:system/lib/libdiag.so \
    device/LENOVO/IdeaTab_A1000-G/files/lib/modules/qcrypto.ko:root/lib/modules/qcrypto.ko

# Fix Logcat / Misc
PRODUCT_COPY_FILES += \
    device/LENOVO/IdeaTab_A1000-G/files/logcat:system/bin/logcat \
    vendor/LENOVO/IdeaTab_A1000-G/proprietary/lib/libgsl.so:system/lib/libgsl.so

# system/etc/init's
PRODUCT_COPY_FILES += \
    device/LENOVO/IdeaTab_A1000-G/init.cdma-pppd:system/etc/init.cdma-ppd \
    device/LENOVO/IdeaTab_A1000-G/init.gprs-pppd:system/etc/init.gprs-ppd \
    device/LENOVO/IdeaTab_A1000-G/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/LENOVO/IdeaTab_A1000-G/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/LENOVO/IdeaTab_A1000-G/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/LENOVO/IdeaTab_A1000-G/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/LENOVO/IdeaTab_A1000-G/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    device/LENOVO/IdeaTab_A1000-G/files/SPH-D600.rle:root/SPH-D600.rle \
    device/LENOVO/IdeaTab_A1000-G/files/charging.rle:root/charging.rle

# wifi files
PRODUCT_COPY_FILES += \
    device/LENOVO/IdeaTab_A1000-G/files/egl.cfg:system/lib/egl/egl.cfg \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/wifi/bcm4329_sta.bin:/system/etc/wifi/bcm4329_sta.bin \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/wifi/bcm4329_aps.bin:/system/etc/wifi/bcm4329_aps.bin \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/wifi/bcm4329_mfg.bin:/system/etc/wifi/bcm4329_mfg.bin \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/LENOVO/IdeaTab_A1000-G/files/system/bin/BCM4329B1_002.002.023.0746.0871.hcd:system/bin/BCM4329B1_002.002.023.0746.0871.hcd

# video drivers
PRODUCT_COPY_FILES += \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/firmware/vidc_720p_command_control.fw:/system/etc/firmware/vidc_720p_command_control.fw \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/firmware/vidc_720p_mp4_dec_mc.fw:/system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/firmware/vidc_720p_h263_dec_mc.fw:/system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/firmware/vidc_720p_mp4_enc_mc.fw:/system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/firmware/vidc_720p_h264_dec_mc.fw:/system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/firmware/vidc_720p_vc1_dec_mc.fw:/system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/firmware/vidc_720p_h264_enc_mc.fw:/system/etc/firmware/vidc_720p_h264_enc_mc.fw 
    
# misc firmware
PRODUCT_COPY_FILES += \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/firmware/wlan/cfg.dat:system/etc/firmware/wlan/cfg.dat \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/firmware/wlan/qcom_fw.bin:system/etc/firmware/wlan/qcom_fw.bin \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/firmware/wlan/volans/WCN1314_qcom_fw.bin:system/etc/firmware/wlan/volans/WCN1314_qcom_fw.bin \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/firmware/wlan/volans/WCN1314_qcom_wlan_nv.bin:system/etc/firmware/wlan/volans/WCN1314_qcom_wlan_nv.bin \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/firmware/wlan/volans/WCN1314_cfg.dat:system/etc/firmware/wlan/volans/WCN1314_cfg.dat \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/firmware/wlan/volans/WCN1314_qcom_cfg.ini:system/etc/firmware/wlan/volans/WCN1314_qcom_cfg.ini \
    device/LENOVO/IdeaTab_A1000-G/files/system/bin/pppd_runner:system/bin/pppd_runner \
    device/LENOVO/IdeaTab_A1000-G/files/system/bin/drexe:system/bin/drexe \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/wifi/wifi.conf:system/etc/wifi/wifi.conf \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/wifi/wl:system/etc/wifi/wl \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt

# Telephony property for CDMA
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=15 \
    ro.telephony.default_network=4 \
    ro.com.google.clientidbase=android-sprint-us \
    ro.cdma.home.operator.numeric=310120 \
    ro.cdma.home.operator.alpha=Sprint \
    net.cdma.pppd.authtype=require-pap \
    net.cdma.pppd.user=user[SPACE]SprintNextel \
    net.cdma.datalinkinterface=/dev/ttyCDMA0 \
    net.interfaces.defaultroute=cdma \
    net.cdma.ppp.interface=ppp0 \
    net.connectivity.type=CDMA1 \
    mobiledata.interfaces=ppp0,uwbr0 \
    ro.telephony.ril_class=LENOVO \
    ro.ril.LENOVO_cdma=true

# WiMAX Property setting for checking WiMAX interface
PRODUCT_PROPERTY_OVERRIDES += \
    ro.wimax.interface=uwbr0 \
    net.tcp.buffersize.wimax=4092,87380,1520768,4092,16384,1520768

# misc for now
PRODUCT_COPY_FILES += \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/LENOVO/IdeaTab_A1000-G/files/system/vendor/lib/libsec-ril.so:system/vendor/lib/libsec-ril.so \
    device/LENOVO/IdeaTab_A1000-G/files/system/bin/qmuxd:system/bin/qmuxd \
    device/LENOVO/IdeaTab_A1000-G/files/system/bin/rmt_storage:system/bin/rmt_storage \
    device/LENOVO/IdeaTab_A1000-G/files/system/bin/netmgrd:system/bin/netmgrd \
    device/LENOVO/IdeaTab_A1000-G/files/system/bin/thermald:system/bin/thermald \
    device/LENOVO/IdeaTab_A1000-G/files/system/bin/geomagneticd:system/bin/geomagneticd \
    device/LENOVO/IdeaTab_A1000-G/files/system/bin/orientationd:system/bin/orientationd \
    device/LENOVO/IdeaTab_A1000-G/files/system/bin/cnd:system/bin/cnd \
    device/LENOVO/IdeaTab_A1000-G/files/system/bin/mfgloader:system/bin/mfgloader \
    device/LENOVO/IdeaTab_A1000-G/files/system/bin/wlandutservice:system/bin/wlandutservice \
    device/LENOVO/IdeaTab_A1000-G/files/system/bin/btld:system/bin/btld \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/cdma-carriers-conf.xml:system/etc/cdma-carriers-conf.xml \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/loc_parameter.ini:system/etc/loc_parameter.ini \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/wimax_boot.bin:system/etc/wimax_boot.bin \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/wimaxfw.bin:system/etc/wimaxfw.bin \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/wimaxloader.bin:system/etc/wimaxloader.bin \
    device/LENOVO/IdeaTab_A1000-G/files/system/etc/thermald.conf:system/etc/thermald.conf

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml



$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES := \
wifi.interface=eth0\
wifi.supplicant_scan_interval=15\
ril.subscription.types=NV

# Perfomance tweaks and misc
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heapsize=48m \
    persist.sys.use_dithering=1 \
    ro.compcache.default=0

# Properties taken from build.prop
PRODUCT_PROPERTY_OVERRIDES += \
ro.setupwizard.mode=DISABLED \
ro.com.google.gmsversion=2.3_r9 \
ro.com.google.clientidbase=android-LENOVO \
ro.com.google.clientidbase.ms=android-sprint-us \
ro.com.google.clientidbase.yt=android-sprint-us \
ro.com.google.clientidbase.am=android-sprint-us \
ro.com.google.clientidbase.gmm=android-LENOVO 
    
# Set region
PRODUCT_DEFAULT_LANGUAGE := en_US
PRODUCT_DEFAULT_REGION := US

# IdeaTab_A1000-G uses medium-density artwork where available
PRODUCT_LOCALES += mdpi

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := cyanogenmod_IdeaTab_A1000-G
PRODUCT_DEVICE := IdeaTab_A1000-G
PRODUCT_BRAND := LENOVO
PRODUCT_MODEL := SPH-D600
PRODUCT_MANUFACTURER := LENOVO
CDMA_GOOGLE_BASE := android-sprint-us
CDMA_CARRIER_ALPHA := Sprint
CDMA_CARRIER_NUMERIC := 310120
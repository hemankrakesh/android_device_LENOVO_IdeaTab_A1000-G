# inherit from the proprietary version
-include vendor/acer/picasso/BoardConfigVendor.mk

(get most of this from build.prop)
# Board General info
TARGET_BOOTLOADER_BOARD_NAME := IdeaTab_A1000-G
TARGET_BOARD_PLATFORM := tegra
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
ARCH_ARM_HAVE_TLS_REGISTER := true


(i cant figure this one out, please pm me if you find it out)
# ril

# audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_PREBUILT_LIBAUDIO := true
BOARD_USES_AUDIO_LEGACY := true

(get this information from  system/etc and /modules)
# wifi

BOARD_WLAN_DEVICE := MT6628
WIFI_DRIVER_FW_PATH_STA := "/system/etc/wifi/p2p_supplicant.conf"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/wifi/wpa_supplicant.conf"
WIFI_DRIVER_MODULE_NAME := "mtk_wmt_wifi_mt6620"
WIFI_DRIVER_MODULE_PATH := "/system/wifi/mtk_wmt_wifi_mt6620.ko"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/wifi/p2p_supplicant.conf nvram_path=/system/etc/wifi/?"

(get this from system/etc)
# video
BOARD_EGL_CFG := /system/lib/egl.cfg
TARGET_BOARD_PLATFORM_GPU := ?

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

(get this from your boot.img unpacking)
# kernel
BOARD_KERNEL_CMDLINE := nvmem=128M@384M mem=1024M@0M vmalloc=256M video=tegrafb tegra_fbmem=4098560@0x18012000 console=none usbcore.old_scheme_first=1 brand=acer lp0_vec=8192@0x1840c000 tegraboot=sdmmc gpt
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 0x800
TARGET_PREBUILT_KERNEL := LENOVO/IdeaTab_A1000-G/kernel

# Partitioning setup (fix this up by examining /proc/mtd on a running device)
BOARD_BOOTIMAGE_PARTITION_SIZE := 3942646
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 4299162
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 681574400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 101711872
BOARD_FLASH_BLOCK_SIZE := 8325694

## PARTITION LAYOUT/INFO ##
BOARD_DATA_DEVICE := /dev/block/mmcblk0p8
BOARD_DATA_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p4
BOARD_CACHE_FILESYSTEM := ext4


# recovery
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_CUSTOM_GRAPHICS:= graphics.c (you might need this so check for it in your recovery source)

# JIT / Optimizations
WITH_DEXPREOPT := true
JS_ENGINE := v8

TARGET_SPECIFIC_HEADER_PATH += device/manufacturer/devicename/files

TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT :=
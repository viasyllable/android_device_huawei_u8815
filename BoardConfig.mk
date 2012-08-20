USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/huawei/u8815/BoardConfigVendor.mk

# CPU and Platform
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := u8815
TARGET_OTA_ASSERT_DEVICE := u8815,hwu8815,u8818,hwu8818

TARGET_SPECIFIC_HEADER_PATH := device/huawei/u8815/include

# Boot Animation
TARGET_BOOTANIMATION_USE_RGB565 := true
TARGET_BOOTANIMATION_PRELOAD := false
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Audio
BOARD_PROVIDES_LIBAUDIO := true

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# Camera
BOARD_USE_CAF_LIBCAMERA := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8815

# Graphics
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DREFRESH_RATE=60 -DICS_CAMERA_BLOB -DQCOM_NO_SECURE_PLAYBACK
BOARD_EGL_CFG := device/huawei/u8815/prebuilt/system/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true

TARGET_USES_GENLOCK := true
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_FORCE_CPU_UPLOAD := true

# Web Rendering
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_VOLD_MAX_PARTITIONS := 19
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# FM Radio
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO -DFM_RADIO
FM_RADIO := true

# RIL
BOARD_PROVIDES_LIBRIL := true

# Wi-Fi
BOARD_WLAN_DEVICE := bcmdhd
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_AP := "/system/wifi/fw_4330_b2.bin"
WIFI_DRIVER_FW_PATH_STA := "/system/wifi/fw_4330_b2.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/wifi/fw_4330_b2.bin"
WIFI_DRIVER_MODULE_PATH := "/system/wifi/dhd_4330.ko"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/wifi/fw_4330_b2.bin nvram_path=/system/wifi/nvram_4330.txt"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_EXT_MODULE_PATH := "/system/lib/modules/cfg80211.ko"
WIFI_EXT_MODULE_NAME := "cfg80211"

# Kernel 
TARGET_KERNEL_SOURCE := kernel/huawei/u8815
TARGET_KERNEL_CONFIG := cyanogen_u8815_defconfig
BOARD_KERNEL_CMDLINE := console=ttyDDC0 androidboot.hardware=huawei
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 2048

# Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/u8815/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u8815/recovery/recovery_ui.c
TARGET_RECOVERY_INITRC := device/huawei/u8815/recovery/etc/init.rc

# Partitions
BOARD_DATA_DEVICE := /dev/block/mmcblk0p13
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p12
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p6
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00C00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00C00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 314572800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 183500800
BOARD_FLASH_BLOCK_SIZE := 131072

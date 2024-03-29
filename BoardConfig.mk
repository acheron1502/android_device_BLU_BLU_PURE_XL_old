USE_CAMERA_STUB := true

# inherit from the proprietary version
LOCAL_PATH := device/BLU/BLU_PURE_XL
-include vendor/BLU/BLU_PURE_XL/BoardConfigVendor.mk

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_CORTEX_A53 := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6796
TARGET_BOOTLOADER_BOARD_NAME := mt6795

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
#BOARD_KERNEL_BASE := 0x40078000 
#BOARD_KERNEL_BASE := 0x4dffff00
#BOARD_KERNEL_PAGESIZE := 2048
#TARGET_KERNEL_SOURCE := kernel/BLU/BLU_PURE_XL
#TARGET_KERNEL_CONFIG := gionee6795_lwt_l1_defconfig
TARGET_PREBUILT_KERNEL := device/BLU/BLU_PURE_XL/kernel
TARGET_MKIMAGE := $(LOCAL_PATH)/mkimage
#BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --second_offset 0x00e88000 --tags_offset 0x0df88000 --board Acheron1502

# fix this up by examining /proc/mtd on a running device
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3011510272
BOARD_USERDATAIMAGE_PARTITION_SIZE := 58954612736
BOARD_FLASH_BLOCK_SIZE := 131072

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true

#EGL
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 2560
BOARD_EGL_WORKAROUND_BUG_10194508 := true




BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

# Platform
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a9
TARGET_BOARD_PLATFORM := mrvl
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

# Samsung Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/zImage
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive androidboot.hardware=pxa988
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset 0x01000000
BOARD_MKBOOTIMG_ARGS += --tags_offset 0x00000100
BOARD_MKBOOTIMG_ARGS += --cmdline "androidboot.selinux=permissive androidboot.hardware=pxa988"
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
BOARD_KERNEL_PAGESIZE  := 2048


# Partitions & Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1594884096
BOARD_CACHEIMAGE_PARTITION_SIZE := 360710144
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5509218304
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_REAL_SDCARD := true

# OTA
BLOCK_BASED_OTA := false
TARGET_OTA_ASSERT_DEVICE := goyawifi,goyawifiue,goyawifixx,goyawifixxx,goyawifizc,goyawifizs,goyawifi

# USB
BOARD_UMS_LUNFILE := "/sys/class/android_usb/f_mass_storage/lun/file"
TW_MTP_DEVICE := "/dev/usb_mtp_gadget"

# TWRP
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab
RECOVERY_FSTAB_VERSION := 2
RECOVERY_SDCARD_ON_DATA := false
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_CRYPTO := false
TW_EXCLUDE_ENCRYPTED_BACKUPS := true

TW_THEME := landscape_hdpi
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_TWRPAPP := true
TW_USE_TOOLBOX := false
TW_NO_CPU_TEMP := true
TW_NO_HAPTICS := true
TW_EXTRA_LANGUAGES := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true

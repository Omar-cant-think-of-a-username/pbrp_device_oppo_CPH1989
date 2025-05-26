


# Flashlight
export OF_FLASHLIGHT_ENABLE="1"
export OF_FL_PATH1="/system/flashlight"
export OF_USE_GREEN_LED="0"

export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_DONT_PATCH_ON_FRESH_INSTALLATION="1"

# no special MIUI/Samsung stuff
export OF_DISABLE_MIUI_SPECIFIC_FEATURES="1"
export OF_NO_MIUI_PATCH_WARNING=1
export OF_NO_ADDITIONAL_MIUI_PROPS_CHECK=1
export OF_DISABLE_MIUI_OTA_BY_DEFAULT="1"
export FOX_NO_SAMSUNG_SPECIAL="1"

export FOX_DISABLE_APP_MANAGER="0"
export FOX_ENABLE_APP_MANAGER="1"
export OF_ALLOW_DISABLE_NAVBAR="0"
export OF_USE_LEGACY_BATTERY_SERVICES="1"
export FOX_USE_NANO_EDITOR="1"
export FOX_REMOVE_AAPT="0"
export FOX_USE_XZ_UTILS="1"
export FOX_USE_SED_BINARY="1"
export FOX_USE_GREP_BINARY="1"
export FOX_USE_DATE_BINARY="1"

# for oppo/realme ozip decryption
export OF_SUPPORT_OZIP_DECRYPTION=1
export TW_OZIP_DECRYPT_KEY="ACAC1E13A72431AE4A1B22BBA1C1C6A2"

export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER="1"
#export OF_USE_TWRP_SAR_DETECT="1"
export OF_USE_MAGISKBOOT="1"
export OF_DONT_KEEP_LOG_HISTORY="1"
export OF_FBE_METADATA_MOUNT_IGNORE="1"
export FOX_INSTALLER_DISABLE_AUTOREBOOT="0"

# about
export OF_MAINTAINER="Omar"
#export FOX_MAINTAINER_PATCH_VERSION="R11.1"
export FOX_BUILD_TYPE="Unofficial"
export TARGET_DEVICE_ALT="OP4C4B"

export OF_SCREEN_H="2340"
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export FOX_USE_SPECIFIC_MAGISK_ZIP="~/Magisk/Magisk-27.0.zip"
#export OF_DEFAULT_KEYMASTER_VERSION="3.0"
#export OF_SKIP_FBE_DECRYPTION="1"
export FOX_SETTINGS_ROOT_DIRECTORY="/persist/OFRP"
export FOX_MISCELLANEOUS_ROOT_DIRECTORY="/data/media/OFRP"

export OF_ADVANCED_SECURITY=1
export OF_UNMOUNT_SDCARDS_BEFORE_REBOOT=1


#OF_SUPPORT_OZIP_DECRYPTION" [NEW]
 #- Set this to 1 to enable support for Realme oZip decryption
 #- do not use this unless you know what you are doing (see below)
 #- if this is enabled, you must also set "TW_OZIP_DECRYPT_KEY"
 #- Note: This is NOT required for realme devices that are released with android 10 or above, since realme has added 
 #- the decryptor inside of the updater binary removing the necessity for an external decryptor. For devices that
 #- are updated to android 10, this feature is necessary only for downgrades to pie or below.
 #- default = 0

 
 #export OF_QUICK_BACKUP_LIST="/boot;/metadata"
 #export FOX_DELETE_INITD_ADDON="1"
 #export OF_USE_TWRP_SAR_DETECT="1"

# "FOX_LOCAL_CALLBACK_SCRIPT"
 #  - point to a custom "callback" script that will be executed just before creating the final recovery image
  # - eg, a script to delete some files, or add some files to the ramdisk
#FOX_RESET_SETTINGS

 # ensure that /sdcard is bind-unmounted before f2fs data repair or format
	#export OF_UNBIND_SDCARD_F2FS=1
 #OF_NO_SPLASH_CHANGE
 
 #"OF_SPLASH_MAX_SIZE"
#- use this to specify the maximum size (in kilobytes) of image files that can safely be used for splash images
#- on some devices, the maximum safe size is 65 Kb; on others, the images can be very big (eg, megabytes)
#- Note: verify that the maximum value you set is not too big (ie, test it yourself)
#- if the splash image chosen by the user is too big, this can easily cause a "System is destroyed" scenario
#- in that case, the user will need to flash the recovery image again, via fastboot
#- eg, "export OF_SPLASH_MAX_SIZE=128" (ie, 128 Kb maximum)
#- default = 4096 (ie, 4mb maximum)

#OF_WIPE_METADATA_AFTER_DATAFORMAT" [NEW] [EXPERIMENTAL!!]
#- Set to 1 to automatically wipe /metadata after formatting the data partition
#- Use with care: use only if the device/ROM has a metadata partition - and - formatting /data doesn't automatically wipe it
#- It is up to you to verify for yourself that this is needed in the first place, and if used, that it works as expected
#- default = 0

#OF_DONT_KEEP_LOG_HISTORY"
#TARGET_DEVICE_ALT
#OF_REPORT_HARMLESS_MOUNT_ISSUES
#"
#   - point to a custom temp directory for creating the zip installer
#   - ensure that this is a directory that you have write access to
#   - there is no default
#
#"FOX_PORTS_INSTALLER" 
#   - point to a custom directory for amended/additional installer files 
#   - the contents will simply be copied over before creating the zip installer

#"FOX_PORTS_TMP"
#   - point to a custom temp directory for creating the zip installer
#  - ensure that this is a directory that you have write access to
#   - there is no default
#
#"FOX_PORTS_INSTALLER" 
#   - point to a custom directory for amended/additional installer files 
#   - the contents will simply be copied over before creating the zip installer





 

 


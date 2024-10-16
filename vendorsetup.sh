


# Flashlight
export OF_FLASHLIGHT_ENABLE="1"
export OF_FL_PATH1="/system/flashlight"
export OF_USE_GREEN_LED="0"

export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_DONT_PATCH_ENCRYPTED_DEVICE="1"
export OF_KEEP_FORCED_ENCRYPTION="1"
export OF_KEEP_DM_VERITY="1"
export OF_DONT_PATCH_ON_FRESH_INSTALLATION="1"
# no special MIUI stuff
export OF_DISABLE_MIUI_SPECIFIC_FEATURES="1"
export OF_NO_MIUI_PATCH_WARNING=1
export OF_DISABLE_MIUI_OTA_BY_DEFAULT="1"

export FOX_DISABLE_APP_MANAGER="0"
export FOX_ENABLE_APP_MANAGER="1"
export OF_ALLOW_DISABLE_NAVBAR="0"
export OF_USE_LEGACY_BATTERY_SERVICES="1"
export FOX_USE_NANO_EDITOR="1"
export FOX_REMOVE_AAPT="0"
export FOX_USE_XZ_UTILS="1"
export FOX_USE_SED_BINARY="1"
export OF_USE_HEXDUMP="1"
# for oppo/realme ozip decryption
export OF_SUPPORT_OZIP_DECRYPTION=1
export TW_OZIP_DECRYPT_KEY="0000"

export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER="1"
#export OF_USE_TWRP_SAR_DETECT="1"
export OF_USE_MAGISKBOOT="1"
export OF_DONT_KEEP_LOG_HISTORY="1"
export OF_FBE_METADATA_MOUNT_IGNORE="1"
export FOX_INSTALLER_DISABLE_AUTOREBOOT="1"
# ensure that /sdcard is bind-unmounted before f2fs data repair or format
export OF_UNBIND_SDCARD_F2FS=1
# about
export OF_MAINTAINER="Omar"
export FOX_VERSION="R11.1"
export FOX_BUILD_TYPE="Unofficial"

export OF_SCREEN_H="2340"
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export FOX_USE_SPECIFIC_MAGISK_ZIP="~/Magisk/Magisk-27.0.zip"
export OF_DEFAULT_KEYMASTER_VERSION="3.0"
export OF_SKIP_FBE_DECRYPTION="0"
export FOX_SETTINGS_ROOT_DIRECTORY="/persist/OFRP"

#OF_SUPPORT_OZIP_DECRYPTION" [NEW]
 #- Set this to 1 to enable support for Realme oZip decryption
 #- do not use this unless you know what you are doing (see below)
 #- if this is enabled, you must also set "TW_OZIP_DECRYPT_KEY"
 #- Note: This is NOT required for realme devices that are released with android 10 or above, since realme has added 
 #- the decryptor inside of the updater binary removing the necessity for an external decryptor. For devices that
 #- are updated to android 10, this feature is necessary only for downgrades to pie or below.
 #- default = 0

 #export FOX_DELETE_AROMAFM="1"
 #export FOX_ADVANCED_SECURITY="1"
 #export OF_QUICK_BACKUP_LIST="/boot;/metadata"
 #export FOX_DELETE_INITD_ADDON="1"
 #export OF_USE_TWRP_SAR_DETECT="1"
 #export OF_ENABLE_LPTOOLS="1"
 #FOX_INSTALLER_DISABLE_AUTOREBOOT="1"
 #export FOX_REMOVE_AAPT="1"
 #FOX_USE_SED_BINARY
 #OF_USE_HEXDUMP
# "FOX_LOCAL_CALLBACK_SCRIPT"
 #  - point to a custom "callback" script that will be executed just before creating the final recovery image
  # - eg, a script to delete some files, or add some files to the ramdisk
#FOX_RESET_SETTINGS
#OF_SKIP_MULTIUSER_FOLDERS_BACKUP

 # ensure that /sdcard is bind-unmounted before f2fs data repair or format
	#export OF_UNBIND_SDCARD_F2FS=1
 #
 

 


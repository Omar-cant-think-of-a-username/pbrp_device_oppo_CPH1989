


export OF_FL_PATH1="/proc/qcom_flash"
export OF_FL_PATH2="/proc/qcom_flash"
export OF_FLASHLIGHT_ENABLE="1"
export OF_DONT_PATCH_ENCRYPTED_DEVICE="1"
export OF_DISABLE_MIUI_SPECIFIC_FEATURES="1"
export OF_KEEP_FORCED_ENCRYPTION="1"
#export FOX_DELETE_AROMAFM="1"
export OF_USE_GREEN_LED="0"
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER="1"
export OF_USE_LEGACY_BATTERY_SERVICES="1"
export OF_MAINTAINER="Omar & Seif"

#FOX_VERSION
#OF_SUPPORT_OZIP_DECRYPTION" [NEW]
 #- Set this to 1 to enable support for Realme oZip decryption
 #- do not use this unless you know what you are doing (see below)
 #- if this is enabled, you must also set "TW_OZIP_DECRYPT_KEY"
 #- Note: This is NOT required for realme devices that are released with android 10 or above, since realme has added 
 #- the decryptor inside of the updater binary removing the necessity for an external decryptor. For devices that
 #- are updated to android 10, this feature is necessary only for downgrades to pie or below.
 #- default = 0

 #OF_FBE_METADATA_MOUNT_IGNORE


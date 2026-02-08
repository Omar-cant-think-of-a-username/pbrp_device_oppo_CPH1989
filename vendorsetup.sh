


# Flashlight
export OF_FLASHLIGHT_ENABLE="1"
export OF_FL_PATH1="/system/flashlight"
export OF_USE_GREEN_LED="0"

export OF_NO_TREBLE_COMPATIBILITY_CHECK="1"

# no special MIUI/Samsung stuff
export OF_DISABLE_MIUI_SPECIFIC_FEATURES="1"
export OF_NO_MIUI_PATCH_WARNING="1"
export OF_NO_ADDITIONAL_MIUI_PROPS_CHECK="1"
export OF_DISABLE_MIUI_OTA_BY_DEFAULT="1"

export FOX_DISABLE_APP_MANAGER="0"
export FOX_ENABLE_APP_MANAGER="1"
export OF_ALLOW_DISABLE_NAVBAR="0"
export OF_USE_LEGACY_BATTERY_SERVICES="1"
export FOX_EXCLUDE_NANO_EDITOR="0"
export FOX_USE_NANO_EDITOR="1"
export FOX_USE_XZ_UTILS="1"

# for oppo/realme ozip decryption
export OF_SUPPORT_OZIP_DECRYPTION=1

export OF_DONT_KEEP_LOG_HISTORY="1"
export OF_FBE_METADATA_MOUNT_IGNORE="1"

# about
export OF_MAINTAINER="Omar"
export FOX_BUILD_TYPE="Beta"
export TARGET_DEVICE_ALT="OP4C4B"
#export FOX_MAINTAINER_PATCH_VERSION="04"
#export FOX_VARIANT="FBE"

export OF_SCREEN_H="2340"
export OF_STATUS_INDENT_LEFT="73"
export OF_STATUS_INDENT_RIGHT="73"
export FOX_SETTINGS_ROOT_DIRECTORY="/persist/OFRP"
export FOX_MISCELLANEOUS_ROOT_DIRECTORY="/data/media/OFRP"
export OF_QUICK_BACKUP_LIST="/boot;/data;"
export OF_DEFAULT_TIMEZONE="WET-2"

export OF_ADVANCED_SECURITY=1

# Magisk
function download_magisk(){
    # Usage: download_magisk <destination_path>
    local DEST=$1
    if [ -n "${DEST}" ]; then
      if [ ! -e ${DEST} ]; then
        echo "Downloading Magisk Version 30.6..."
        local MAGISK_V30_URL="https://github.com/topjohnwu/Magisk/releases/download/v30.6/Magisk-v30.6.apk"
        mkdir -p $(dirname ${DEST})
        wget -q ${MAGISK_V30_URL} -O ${DEST} || wget ${MAGISK_V30_URL} -O ${DEST}
        local RCODE=$?
        if [ "$RCODE" = "0" ]; then
          echo "Successfully Downloaded Magisk v30.6 to ${DEST}!"
          echo "Done!"
        else
          echo "Failed to Download Magisk v30.6 to ${DEST}!"
        fi
      fi
    fi
}
export FOX_USE_SPECIFIC_MAGISK_ZIP=~/Magisk/Magisk.zip
download_magisk $FOX_USE_SPECIFIC_MAGISK_ZIP


#export OF_FIX_DECRYPTION_ON_DATA_MEDIA="1"
#"OF_NO_RELOAD_AFTER_DECRYPTION"
#OF_SKIP_FBE_DECRYPTION_SDKVERSION=31
#OF_SPLASH_MAX_SIZE


#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2026 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#

#set -o xtrace
FDEVICE="CPH1989"

fox_get_target_device() {
local chkdev
  if echo "$BASH_SOURCE" | grep -q "/$FDEVICE/"; then
      FOX_BUILD_DEVICE="$FDEVICE"
  elif set | grep BASH_ARGV | grep -w \"$FDEVICE\"; then
      FOX_BUILD_DEVICE="$FDEVICE"
  elif echo "${BASH_SOURCE[0]}" | grep -q "/$FDEVICE/"; then
      FOX_BUILD_DEVICE="$FDEVICE"
  elif echo "$0" | grep -q "$FDEVICE"; then
      FOX_BUILD_DEVICE="$FDEVICE"
  fi
}

if [ -z "$FOX_BUILD_DEVICE" ]; then
	fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then

# Flashlight
export OF_FLASHLIGHT_ENABLE="1"
export OF_FL_PATH1="/system/flashlight"
export OF_USE_GREEN_LED="0"

export OF_NO_TREBLE_COMPATIBILITY_CHECK="1"
export FOX_VANILLA_BUILD="1"

export FOX_ENABLE_APP_MANAGER="1"
export OF_ALLOW_DISABLE_NAVBAR="0"
export OF_USE_LEGACY_BATTERY_SERVICES="1"
export FOX_USE_NANO_EDITOR="1"
export FOX_USE_XZ_UTILS="1"

#reduce the size for booting
export FOX_REMOVE_AAPT="1"
export FOX_REMOVE_BASH="1"

# for oppo/realme ozip decryption
export OF_SUPPORT_OZIP_DECRYPTION=1

export OF_DONT_KEEP_LOG_HISTORY="1"
export OF_FBE_METADATA_MOUNT_IGNORE="1"

# about
export OF_MAINTAINER="Omar"
export FOX_BUILD_TYPE="Beta"
export FOX_TARGET_DEVICES="CPH1989,OP4C4B,OP4C4BL1"
export TARGET_DEVICE_ALT="OP4C4B"
export FOX_MAINTAINER_PATCH_VERSION="1"
#export FOX_VARIANT="Crypto"

export OF_SCREEN_H="2340"
export OF_STATUS_INDENT_LEFT="73"
export OF_STATUS_INDENT_RIGHT="73"
export FOX_SETTINGS_ROOT_DIRECTORY="/persist/OFRP"
export FOX_MISCELLANEOUS_ROOT_DIRECTORY="/data/media/OFRP"
export OF_QUICK_BACKUP_LIST="/boot;/data;"
export OF_DEFAULT_TIMEZONE="WET-2"
export OF_ADVANCED_SECURITY=1

export FOX_ALLOW_EARLY_SETTINGS_LOAD="1"
export OF_NO_RELOAD_AFTER_DECRYPTION="1"
export OF_FIX_DECRYPTION_ON_DATA_MEDIA="1"
export OF_UNBIND_SDCARD_F2FS="1"

fi

#OF_BIND_MOUNT_SDCARD_ON_FORMAT=1
#OF_SKIP_FBE_DECRYPTION_SDKVERSION=36
#OF_SPLASH_MAX_SIZE

#


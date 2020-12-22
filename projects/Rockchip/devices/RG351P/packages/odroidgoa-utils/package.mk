# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2020-present Shanti Gilbert (https://github.com/shantigilbert)

PKG_NAME="odroidgoa-utils"
PKG_VERSION=""
PKG_SHA256=""
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_DEPENDS_TARGET="toolchain rs97-commander-sdl2 python-evdev enable-oga-sleep"
PKG_SITE=""
PKG_URL=""
PKG_LONGDESC="Support scripts for the ODROID-GO Advance"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
	mkdir -p $INSTALL/usr/bin
        cp headphone_sense.sh $INSTALL/usr/bin
	cp battery.sh $INSTALL/usr/bin
        cp odroidgoa_utils.sh $INSTALL/usr/bin
        #cp oga_events.py $INSTALL/usr/bin
}

post_install() {  
	#enable_service odroidgoa-hotkeys.service
	enable_service odroidgoa-headphones.service
	enable_service battery.service
}

# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2020 Shanti Gilbert (https://github.com/KALEL1981)
# Copyright (C) 2020 Lucky (https://github.com/luciano2000/351ELEC)

PKG_NAME="es-theme-nes-box"
PKG_REV="1"
PKG_VERSION="0000000000000000000000000000000000000000"
PKG_ARCH="any"
PKG_LICENSE="CUSTOM"
PKG_SITE="https://github.com/KALEL1981/es-theme-nes-box"
PKG_URL="$PKG_SITE.git"
GET_HANDLER_SUPPORT="git"
PKG_SHORTDESC="NesBox"
PKG_LONGDESC="Nes Box"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  mkdir -p $INSTALL/usr/config/emulationstation/themes/$PKG_NAME
  cp -rf * $INSTALL/usr/config/emulationstation/themes/$PKG_NAME
}

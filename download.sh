#!/bin/sh

cd `dirname $0`

which axel 2>/dev/null 1>/dev/null
if [ $? -eq 0 ]; then
  CMD="axel"
else
  CMD="wget"
fi

if [ ! -f portage-20161120.tar.xz ]; then
  $CMD http://mirror.switch.ch/ftp/mirror/gentoo/releases/snapshots/current/portage-20161120.tar.xz || return $?
fi

if [ ! -f stage3-amd64-systemd-20161118.tar.bz2 ]; then
  $CMD http://mirror.switch.ch/ftp/mirror/gentoo/releases/amd64/autobuilds/current-stage3-amd64-systemd/stage3-amd64-systemd-20161118.tar.bz2
fi

if [ ! -f stage4-amd64-cloud-20161117.tar.bz2 ]; then
  $CMD http://mirror.switch.ch/ftp/mirror/gentoo/releases/amd64/autobuilds/current-stage4-amd64-cloud/stage4-amd64-cloud-20161117.tar.bz2
fi

if [ ! -f stage4-amd64-hardened+cloud-20161117.tar.bz2 ]; then
  $CMD http://mirror.switch.ch/ftp/mirror/gentoo/releases/amd64/autobuilds/current-stage4-amd64-hardened+cloud/stage4-amd64-hardened+cloud-20161117.tar.bz2
fi

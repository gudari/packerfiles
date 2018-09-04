#!/bin/sh -eux


echo "==> Installing ubuntu-desktop"
apt-get install -y ubuntu-desktop

USERNAME=vagrant
GDM_CUSTOM_CONFIG=/etc/gdm3/custom.conf

if [ -f $GDM_CUSTOM_CONFIG ]; then
    sed -i s/"daemon]$"/"daemon]\nAutomaticLoginEnable=true\nAutomaticLogin=${USERNAME}\nInitialSetupEnable=false"/ /etc/gdm3/custom.conf
fi

locale-gen
localectl set-locale LANG="en_US.UTF-8"
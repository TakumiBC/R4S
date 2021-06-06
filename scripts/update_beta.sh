#!/bin/sh
#By: Topsy Chen (thomaswcy)
#Licensed to the public under GPL General Public License 2.0
echo "Welcome to the RubikWrt NanoPi R4S Update Script (Beta Firmware)"
echo "Downloading the latest release of beta firmware"
wget -P /tmp https://github.com/thomaswcy/R4S/releases/download/$(date +%Y.%m.%d)-beta/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz
echo "Extracting Files"
cd /tmp/
unzip openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz
cd /
echo "Ready to reboot for updating after 3 seconds"
sleep 3s
sysupgrade /tmp/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img
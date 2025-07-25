#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i '1i src-git smpackage https://github.com/kenzok8/small-package\nsrc-git passwall https://github.com/xiaorouji/openwrt-passwall-packages\nsrc-git modem https://github.com/FUjr/modem_feeds.git;main' feeds.conf.default
git clone https://github.com/Siriling/5G-Modem-Support package/luci-app-modem
git clone https://github.com/animegasan/luci-app-dnsleaktest.git package/dnsleaktest

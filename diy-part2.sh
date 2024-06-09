#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
sed -i "s/hostname='.*'/hostname='LoganJin-GeHua'/g" package/base-files/files/bin/config_generate

sed -i "s/timezone='.*'/timezone='CST-8'/g" package/base-files/files/bin/config_generate

sed -i "/.*ttylogin='0'.*/i\                set system.@system[-1].zonename='Asia/Shanghai'" package/base-files/files/bin/config_generate

sed -i 's/\/bin\/login/\/bin\/login -f root/' ./feeds/packages/utils/ttyd/files/ttyd.config
sed -i 's/CONFIG_TARGET_x86=y/# CONFIG_TARGET_x86 is not set/g' .config

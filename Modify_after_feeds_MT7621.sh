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

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
# git_clone https://github.com/kiddin9/luci-app-dnsfilter
# git_clone https://github.com/timsaya/openwrt-bandix bandix2 && mv -f bandix2/openwrt-bandix ./;rm -rf bandix2
# svn export https://github.com/用户名/仓库名/trunk/文件夹路径
# 注意 URL 中的 /trunk/ 对应仓库的默认分支（通常是 main 或 master）。如果要下载其他分支，使用 /branches/分支名/。
# mv https://github.com/padavanonly/immortalwrt/package/emortal/luci-app-turboacc-mtk ./package/emortal/luci-app-turboacc-mtk
git clone https://github.com/theosoft-git/luci-app-easymesh ./package/luci-app-easymesh
git clone https://github.com/Hadesatan/Hades-packages
mkdir -p ./dl
mv ./Hades-packages/myipk/*.ipk ./dl/
mv ./Hades-packages/myipk/* ./package/
rm -rf ./Hades-packages

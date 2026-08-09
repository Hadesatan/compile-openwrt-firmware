mv ./packages/qbit/*.ipk ./openwrt/bin/packages/
cd openwrt
ls -la ./bin/targets/ramips/mt7621
make image PACKAGES="qbittorrent luci-app-qbittorrent luci-i18n-qbittorrent-zh-cn"
ls -la ./bin/targets//ramips/mt7621

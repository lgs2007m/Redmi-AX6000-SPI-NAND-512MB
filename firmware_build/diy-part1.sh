#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git messense https://github.com/messense/aliyundrive-webdav' >>feeds.conf.default


## 修改DTS的ubi为490MB的0x1ea00000
sed -i 's/reg = <0x600000 0x6e00000>/reg = <0x600000 0x1ea00000>/' target/linux/mediatek/files-5.4/arch/arm64/boot/dts/mediatek/mt7986a-xiaomi-redmi-router-ax6000-uboot.dts
## 修改DTS的memory为2048MB的0x80000000
#sed -i 's/reg = <0 0x40000000 0 0x10000000>/reg = <0 0x40000000 0 0x80000000>/' target/linux/mediatek/files-5.4/arch/arm64/boot/dts/mediatek/mt7986a-xiaomi-redmi-router-ax6000-uboot.dts
## 修改DTS的spi_nand的spi-max-frequency为104MHz，104000000。原闪存为104MHz，TC58CVG2S0HRAIJ为133MHz
#sed -i 's/spi-max-frequency = <20000000>/spi-max-frequency = <104000000>/' target/linux/mediatek/files-5.4/arch/arm64/boot/dts/mediatek/mt7986a-xiaomi-redmi-router-ax6000-uboot.dts

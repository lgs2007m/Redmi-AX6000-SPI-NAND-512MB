## 修改spi-nand的spi-max-frequency，原闪存104MHz对应52000000，新闪存TC58CVG2S0HRAIJ闪存最大频率133MHz修改为66500000
sed -i 's/spi-max-frequency = <52000000>/spi-max-frequency = <66500000>/' uboot-mtk-20220606/arch/arm/dts/mt7986a-redmi-ax6000.dts
## 修改nandinfo为4k+256，这个可有可无，不影响
sed -i 's/nandinfo=2k+64/nandinfo=4k+256/' uboot-mtk-20220606/arch/arm/mach-mediatek/Kconfig

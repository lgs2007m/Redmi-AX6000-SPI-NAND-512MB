## --------------atf config----------------
## 关闭atf里的NMBM，不然可能与uboot的NMBM冲突，只能启动一次，重启后卡在BL2的NMBM初始化，同时修改spim-nand的类型为spim:4k+256
echo '# CONFIG_NMBM is not set' >> atf-20220606-637ba581b/configs/mt7986_redmi_ax6000_defconfig
echo 'CONFIG_SPIM_NAND_TYPE="spim:4k+256"' >> atf-20220606-637ba581b/configs/mt7986_redmi_ax6000_defconfig
## ----------------------------------------

## --------------uboot config----------------
## 在CONFIG_ENABLE_NAND_NMBM后面增加CONFIG_NMBM_MAX_BLOCKS=64，修改默认mtdparts的ubi为490MB即501760k(ubi)
sed -i -e '/CONFIG_ENABLE_NAND_NMBM=y/ a\CONFIG_NMBM_MAX_BLOCKS=64' uboot-mtk-20220606/configs/mt7986_redmi_ax6000_defconfig
sed -i 's/112640k(ubi)/501760k(ubi)/' uboot-mtk-20220606/configs/mt7986_redmi_ax6000_defconfig
## ----------------------------------------

## 修改nandinfo为4k+256，这个可有可无，不影响
#sed -i 's/nandinfo=2k+64/nandinfo=4k+256/' uboot-mtk-20220606/arch/arm/mach-mediatek/Kconfig
## 修改spi-nand的spi-max-frequency，原闪存104MHz对应52000000，新闪存TC58CVG2S0HRAIJ闪存最大频率133MHz修改为66500000
sed -i 's/spi-max-frequency = <52000000>/spi-max-frequency = <66500000>/' uboot-mtk-20220606/arch/arm/dts/mt7986a-redmi-ax6000.dts

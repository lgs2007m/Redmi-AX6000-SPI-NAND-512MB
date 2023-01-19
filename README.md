# Redmi-AX6000-SPI-NAND-512MB
用于红米AX6000改512MB闪存atf和uboot云编译以及固件云编译。

固件已集成安装kmod-mtd-rw，知己运行下面命令解锁分区的写入：

`insmod /lib/modules/$(uname -r)/mtd-rw.ko i_want_a_brick=1`

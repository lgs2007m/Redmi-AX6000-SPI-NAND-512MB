# Redmi-AX6000-SPI-NAND-512MB
用于红米AX6000改512MB闪存atf_uboot以及固件云编译。

固件已集成kmod-mtd-rw，运行下面命令加载后解锁分区的写入：

```bash
insmod /lib/modules/$(uname -r)/mtd-rw.ko i_want_a_brick=1
```

# Redmi-AX6000-SPI-NAND-512MB
用于红米AX6000改512MB闪存atf_uboot以及固件云编译。  
已添加多分区布局uboot支持，但是未在实机上测试，请自行测试！！！  

已修复237大佬的18.06闭源驱动仓库编译支持并添加hanwckf大佬21.02闭源驱动仓库固件编译支持。  

固件已集成kmod-mtd-rw，运行下面命令加载后解锁分区的写入：

```bash
insmod /lib/modules/$(uname -r)/mtd-rw.ko i_want_a_brick=1
```

### 刷砖也不怕！可以通过串口救砖：[MediaTek Filogic 系列路由器串口救砖教程](https://www.cnblogs.com/p123/p/18046679)

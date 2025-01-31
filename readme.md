# 手搓带全键盘的便携Linux小电脑
## 简介
这是我在2025年1月底制作完成的Linux小板子，参考网上的开源项目。不仅有原本版本的USB，网卡，屏幕，声卡等驱动，还添加了自制的全键盘驱动电路，编写了对应的全键盘驱动，并接入命令行，使得小电脑在通上电之后不需要电脑给串口发消息，使用板载的全键盘就可以操作屏幕上的命令行，不管是在家，在外面都可以随时随地玩Linux命令行，甚至还可以安装软件，写各种代码，使用板载gcc编译并运行C语言代码,也能运行python，g++等软件
## 演示视频
https://www.bilibili.com/video/BV1h5F7e4Evs
## 使用方法
1.u-boot-nano-v2018.01文件夹是配置好的uboot，可以直接编译运行<br />
2.linux-5.7.1文件夹是配置好的Linux内核，可以直接编译运行<br />
3.buildroot-2018.02.11文件夹是已经配置完成的buildroot版本的Linux文件系统，可以直接编译运行<br />
4.debian文件夹是debian根文件系统<br />
5.ESP8089-SPI-master文件夹是配置好的网卡驱动，可以直接编译运行<br />
6.keyboard_drv文件夹是全键盘驱动，可以直接编译运行<br />
7.pcb文件夹是电路板工程，"Linux小核心板Snail_Core_2"是核心板电路，需要使用嘉立创标准版打开，"ProPrj_SCH_SnailCard底板_2025-01-03_23-10-43_2025-01-31"是底板电路，需要使用嘉立创专业版打开<br />
## 主要参考资料
1.WhyCan Forum(哇酷开发者社区) 首页» 全志 SOC» 小白自制Linux开发板(F1C200s)整理系列，持续更新中 ，https://whycan.com/t_7275.html<br />
2.立创开源硬件平台，F1C200S屏幕开发板，https://oshwhub.com/fanhuacloud/f1c200s_lcd_backup<br />
3.百问网，https://www.100ask.net/
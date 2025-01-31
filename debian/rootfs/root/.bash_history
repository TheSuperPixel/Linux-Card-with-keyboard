apt-get update
apt-get install wpasupplicant
apt-get install net-tools
apt-get install udhcpc
apt-get install wireless-tools 
apt install sudo vim openssh-server htop
apt install pciutils usbutils acpi
apt install pciutils usbutils
apt install acpi
apt install acpid
apt install dmidecode
root@llp-virtual-machine:/# apt install pciutils usbutils acpi
Reading package lists... Done
Building dependency tree       
Reading state information... Done
Package acpi is not available, but is referred to by another package.
This may mean that the package is missing, has been obsoleted, or
is only available from another source
passwd root
groupadd PixelCard
useradd -m -g PixelCard -s /bin/bash PixelCard
vi /etc/sudoers
vi /etc/sudoers
HOSTNAME = PixelCard
HOSTNAME=PixelCard
echo $HOSTNAME > /etc/hostname
echo $HOSTNAME > /proc/sys/kernel/hostname
sed -i '/localhost/s/$/\t'"$HOSTNAME"'/g' /etc/hosts
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
vi rootfs/etc/ssh/sshd_config
sudo vi rootfs/etc/ssh/sshd_config
vi rootfs/etc/ssh/sshd_config
sudo vi rootfs/etc/ssh/sshd_config
ls
ls
cd home/
ls
cd PixelCard/
ls
cd ../../..
ls
apt-cache clean
apt clean
exit
apt install gcc
apt install g++
apt install python
apt-get mplayer
apt-get install mplayer
sudo rm -rf /media/llp/rootfs/*
exit  #退出chroot
sudo apt get gdb
sudo apt install gdb
sudo apt install gdb
exit  #退出chroot
sudo apt install gdb
sudo apt install lightdm -y
cd /etc/lightdm/
ls
cd ..
exit

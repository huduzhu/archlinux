#! /usr/bin/bash
sudo su
timedatectl set-timezone Australia/Victoria
systemctl enable systemd-timesyncd
pacman -S intel-ucode
pacman -S xorg-server
pacman -S mesa
for x in {0..6}; do mkdir -p /etc/init.d/rc${x}.d; done
mount /dev/cdrom /mnt
tar xf /mnt/VMwareTools*.tar.gz -C /root
perl /root/vmware-tools-distrib/vmware-install.pl
nano /etc/systemd/system/vmwaretools.service
pacman -S virtualbox-guest-utils xf86-video-vmware
sudo pacman -S gnome-tweaks
sudo pacman -S gnome
sudo systemctl enable gdm
pacman -S adobe-source-han-sans-cn-fonts adobe-source-han-sans-tw-fonts adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts

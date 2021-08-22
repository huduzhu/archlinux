#! /usr/bin/bash

timedatectl set-timezone Australia/Victoria
systemctl enable systemd-timesyncd
pacman -Sy
pacman -Syu
pacman -S intel-ucode xorg-server mesa
curl -O https://raw.githubusercontent.com/huduzhu/archlinux/main/vmwaretools.service
nano vmwaretools.service
for x in {0..6}; do mkdir -p /etc/init.d/rc${x}.d; done
mv vmwaretools.service /etc/systemd/system/vmwaretools.service
mount /dev/cdrom /mnt
tar xf /mnt/VMwareTools*.tar.gz -C /root
perl /root/vmware-tools-distrib/vmware-install.pl
pacman -S virtualbox-guest-utils xf86-video-vmware
systemctl enable vmwaretools.service  
pacman -S xfce4 gvfs-smb xfce4-pulseaudio-plugin pulseaudio-alsa openssh
pacman -S pavucontrol
#sudo pacman -S lightdm lightdm-gtk-greeter
#sudo systemctl enable lightdm
sudo pacman -S lxdm
sudo systemctl enable lxdm
pacman -S adobe-source-han-sans-cn-fonts adobe-source-han-sans-tw-fonts adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts

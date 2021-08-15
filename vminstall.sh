#! /usr/bin/bash

timedatectl set-timezone Australia/Victoria
systemctl enable systemd-timesyncd
pacman -S intel-ucode
pacman -S xorg-server
pacman -S mesa
curl -O https://raw.githubusercontent.com/huduzhu/archlinux/main/vmwaretools.service
nano vmwaretools.service
for x in {0..6}; do mkdir -p /etc/init.d/rc${x}.d; done
mv vmwaretools.service /etc/systemd/system/vmwaretools.service
mount /dev/cdrom /mnt
tar xf /mnt/VMwareTools*.tar.gz -C /root
perl /root/vmware-tools-distrib/vmware-install.pl
pacman -S virtualbox-guest-utils xf86-video-vmware
sudo pacman -S gnome-tweaks
sudo pacman -S gnome --ignore gnome-backgrounds gnome-books gnome-clocks gnome-color-manager gnome-contacts gnome-disk-utility gnome-documents gnome-maps gnome-music gnome-photos gnome-software gnome-themes-extra gnome-weather orca totem yelp
sudo systemctl enable gdm
pacman -S adobe-source-han-sans-cn-fonts adobe-source-han-sans-tw-fonts adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts

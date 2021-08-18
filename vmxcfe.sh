#! /usr/bin/bash

timedatectl set-timezone Australia/Victoria
systemctl enable systemd-timesyncd
pacman -S intel-ucode
pacman -S xorg-server
pacman -S mesa
pacman -S open-vm-tools
sudo pacman -S xfce4 lightdm 
sudo pacman -S lightdm-gtk-greeter gvfs-smb
sudo systemctl enable lightdm-gtk-greeter
pacman -S adobe-source-han-sans-cn-fonts adobe-source-han-sans-tw-fonts adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts

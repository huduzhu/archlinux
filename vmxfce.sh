#! /usr/bin/bash

timedatectl set-timezone Australia/Victoria
systemctl enable systemd-timesyncd
pacman -S intel-ucode xorg-server mesa
pacman -S open-vm-tools
pacman -S xfce4 lightdm lightdm-gtk-greeter gvfs-smb
sudo systemctl enable lightdm
pacman -S adobe-source-han-sans-cn-fonts adobe-source-han-sans-tw-fonts adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts

#! /usr/bin/bash

timedatectl set-timezone Australia/Victoria
systemctl enable systemd-timesyncd
pacman -S intel-ucode xorg-server mesa open-vm-tools xfce4 lightdm lightdm-gtk-greeter gvfs-smb
sudo systemctl enable lightdm-gtk-greeter
pacman -S adobe-source-han-sans-cn-fonts adobe-source-han-sans-tw-fonts adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts

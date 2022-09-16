#!/bin/sh

sudo pacman -Syy;

sudo pacman -S xorg git nano -y;

sudo pacman -S pantheon pantheon-session -y;

sudo pacman -S lightdm lightdm-gtk-greeter lightdm-pantheon-greeter -y;

sudo nano /etc/lightdm/lightdm.conf;

#Above Seat configuration type: "greeter-session = io.elementary-greeter"

sudo systemctl enable lightdm.service;

sudo systemctl enable NetworkManager;

sudo systemctl start lightdm.service;

#after login

git clone https://aur.archlinux.org/yay.git
sudo chown $USERNAME:users yay
cd yay
makepkg -si

yay -S pantheon-unstable gala-git switchboard-plug-pantheon-tweaks-git pantheon-print file-roller

yay -S wingpanel-standalone-git

yay -S wingpanel-indicator-ayatana-git
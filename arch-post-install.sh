#!/bin/sh

#upgrade
sudo pacman -Syyu -y;

#uncomment multilib
sudo nano /etc/pacman.conf;

#yay
git clone https://aur.archlinux.org/yay.git;
sudo chown $USER:users yay;
cd yay;
makepkg -si;

#archrepo apps
sudo pacman -S fuse wine gst-plugin-gtk flatpak jre17-openjdk android-tools streamlink python3 git neofetch -y;

#flatpak apps
flatpak install flathub com.github.bluesabre.darkbar -y;flatpak install flathub org.telegram.desktop -y;flatpak install flathub com.usebottles.bottles -y;flatpak install flathub org.onlyoffice.desktopeditors -y;flatpak install flathub org.signal.Signal -y;flatpak install flathub com.stremio.Stremio -y;flatpak install flathub org.qbittorrent.qBittorrent -y;flatpak install flathub com.github.maoschanz.drawing -y;flatpak install flathub com.discordapp.Discord -y;flatpak install flathub com.valvesoftware.Steam -y;flatpak install flathub com.visualstudio.code -y;flatpak install flathub org.videolan.VLC -y;flatpak install flathub org.mozilla.Thunderbird -y;flatpak install flathub org.mozilla.firefox -y;

wget https://github.com/rustdesk/rustdesk/releases/download/1.1.9/rustdesk-1.1.9-manjaro-arch.pkg.tar.zst;

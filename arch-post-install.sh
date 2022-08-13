#!/bin/sh

#upgrade
sudo pacman -Syyu -y;

#uncomment repos
sudo nano /etc/pacman.conf;

#yay
git clone https://aur.archlinux.org/yay.git;
sudo chown zatsando:users yay;
cd yay;
makepkg -si;

#archrepo apps
sudo pacman -S wine gst-plugin-gtk flatpak jre11-openjdk android-tools firefox-developer-edition gnome-shell-extension-appindicator qbittorrent virtualbox krita discord steam obs-studio vlc lutris streamlink python3 git gnome-tweaks neofetch barrier thunderbird -y;

#flatpak apps
flatpak install flathub com.spotify.Client -y;
flatpak install flathub org.telegram.desktop -y;
flatpak install flathub com.chatterino.chatterino -y;
flatpak install flathub com.anydesk.Anydesk -y;
flatpak install flathub io.github.Figma_Linux.figma_linux -y;
flatpak install flathub com.ktechpit.wonderwall -y;
flatpak install flathub org.onlyoffice.desktopeditors -y;
flatpak install flathub org.signal.Signal -y;
flatpak install flathub com.stremio.Stremio -y;
flatpak install flathub com.heroicgameslauncher.hgl -y;
flatpak install flathub com.brave.Browser -y;
flatpak install flathub com.visualstudio.code -y;

wget https://github.com/rustdesk/rustdesk/releases/download/1.1.9/rustdesk-1.1.9-manjaro-arch.pkg.tar.zst;

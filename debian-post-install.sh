#!/bin/sh

#firstofall
sudo apt update
sudo apt upgrade -y

#change hostname name
hostnamectl set-hostname ZatsLaptop

#flatpak install
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#if they are installed
sudo apt remove --purge google-chrome-stable vlc gimp libreoffice* -y
sudo apt autoremove && sudo apt autoclean -y

#native packages
sudo apt install wireguard nodejs nodejs adb fastboot streamlink python3 git neofetch openjdk-17-jdk -y

#swap
swapon
sudo swapoff /dev/dm-2
sudo rm /dev/dm-2
sudo dd if=/dev/zero of=/swapfile bs=1M count=17180
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile

#enable wayland
#sudo nano /etc/gdm3/custom.conf;

#flatpaks
flatpak install flathub com.github.tchx84.Flatseal -y;
flatpak install flathub org.signal.Signal -y;
flatpak install flathub com.stremio.Stremio -y;
flatpak install flathub org.qbittorrent.qBittorrent -y;
flatpak install flathub com.discordapp.Discord -y;
flatpak install flathub org.videolan.VLC -y;
flatpak install flathub org.mozilla.Thunderbird -y;
flatpak install flathub com.protonvpn.www -y;
flatpak install flathub uk.org.greenend.chiark.sgtatham.putty -y;
flatpak install flathub md.obsidian.Obsidian -y;
flatpak install flathub com.heroicgameslauncher.hgl -y;
flatpak install flathub net.davidotek.pupgui2 -y;
flatpak install flathub com.visualstudio.code -y;
flatpak install flathub com.valvesoftware.Steam -y;
flatpak install flathub com.brave.Browser -y;
flatpak install flathub im.riot.Riot -y;
flatpak install flathub com.chatterino.chatterino -y;
flatpak install flathub network.loki.Session -y;
flatpak install flathub org.telegram.desktop -y;
flatpak install flathub com.github.bajoja.indicator-kdeconnect -y;
flatpak install flathub org.kde.krita -y;
flatpak install flathub com.obsproject.Studio -y;
flatpak install flathub com.github.KRTirtho.Spotube -y;

#wget
wget https://github.com/rustdesk/rustdesk/releases/download/1.2.1/rustdesk-1.2.1-x86_64.AppImage
sudo chmod +x rustdesk-1.2.1-x86_64.AppImage

#java
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin

#intel/amd graphics
sudo add-apt-repository ppa:kisak/kisak-mesa && sudo dpkg --add-architecture i386 && sudo apt update && sudo apt upgrade && sudo apt install libgl1-mesa-dri:i386 mesa-vulkan-drivers mesa-vulkan-drivers:i386

#useful for lol cache
sudo sh -c 'sysctl -w abi.vsyscall32=0' && sudo sysctl -w abi.vsyscall32=0

#git config
git config --global user.name "zachvlat"
git config --global user.email "zachariasvlatakis@gmail.com"

#final
sudo apt autoremove -y
sudo apt autoclean

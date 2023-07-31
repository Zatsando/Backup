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

#elementary ppa
sudo add-apt-repository ppa:elementary-os/stable

#if they are installed
sudo apt remove --purge google-chrome-stable vlc gimp libreoffice* -y
sudo apt autoremove && sudo apt autoclean -y

#native packages
sudo apt install wireguard appcenter ttf-mscorefonts-installer ubuntu-restricted-extras android-tools-adb android-tools-fastboot streamlink python3 git neofetch openjdk-17-jdk xfce4-appmenu-plugin -y
sudo fc-cache -f -v

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
flatpak install flathub org.mozilla.firefox -y;
flatpak install flathub org.flameshot.Flameshot -y;
flatpak install flathub com.github.bluesabre.darkbar -y;
flatpak install flathub com.usebottles.bottles -y;
flatpak install flathub org.signal.Signal -y;
flatpak install flathub com.stremio.Stremio -y;
flatpak install flathub org.qbittorrent.qBittorrent -y;
flatpak install flathub com.discordapp.Discord -y;
flatpak install flathub com.valvesoftware.Steam -y;
flatpak install flathub org.videolan.VLC -y;
flatpak install flathub org.mozilla.Thunderbird -y;
flatpak install flathub org.libreoffice.LibreOffice -y;
flatpak install flathub com.protonvpn.www -y;
flatpak install flathub uk.org.greenend.chiark.sgtatham.putty -y;
flatpak install flathub md.obsidian.Obsidian -y;

#wget
wget https://github.com/rustdesk/rustdesk/releases/download/1.2.1/rustdesk-1.2.1-x86_64.deb
sudo dpkg -i rustdesk-1.2.1-x86_64.deb

#nodejs lts
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
exit
#restart gnome-terminal
nvm install --lts

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

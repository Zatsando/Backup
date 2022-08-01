#!/bin/sh
hostnamectl set-hostname ZatsLaptop;

#update first
sudo apt update && sudo apt upgrade -y;

#enable wayland
sudo nano /etc/gdm3/custom.conf;

#latest wine
sudo dpkg --add-architecture i386 &&
wget -nc https://dl.winehq.org/wine-builds/winehq.key &&
sudo mv winehq.key /usr/share/keyrings/winehq-archive.key &&
wget -nc https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources &&
sudo mv winehq-jammy.sources /etc/apt/sources.list.d/ &&
sudo apt update &&
sudo apt install --install-recommends winehq-devel -y;

#flatpaks
flatpak install flathub com.spotify.Client -y;
flatpak install flathub org.telegram.desktop -y;
flatpak install flathub com.chatterino.chatterino -y;
flatpak install flathub com.anydesk.Anydesk -y;
flatpak install flathub io.github.Figma_Linux.figma_linux -y;
flatpak install flathub org.onlyoffice.desktopeditors -y;
flatpak install flathub org.signal.Signal -y;
flatpak install flathub com.stremio.Stremio -y;
flatpak install flathub com.heroicgameslauncher.hgl -y;
flatpak install flathub com.brave.Browser -y;

#nodejs lts
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash;
#restart gnome-terminal
nvm install --lts;

#remove libre office
sudo apt-get remove --purge libreoffice* -y;
sudo apt autoremove && sudo apt autoclean -y;

#other apps apt
wget https://protonvpn.com/download/protonvpn-stable-release_1.0.1-1_all.deb;
sudo dpkg -i protonvpn-stable-release_1.0.1-1_all.deb;
wget https://github.com/rustdesk/rustdesk/releases/download/1.1.9/rustdesk-1.1.9.deb;

#native packages
sudo apt install firefox-developer-edition gnome-shell-extension-appindicator gir1.2-appindicator3-0.1 protonvpn wireguard synaptic qbittorrent virtualbox android-tools-adb android-tools-fastboot krita discord steam obs-studio code vlc lutris streamlink python3 pokemmo-installer git gnome-tweaks ubuntu-restricted-extras neofetch barrier thunderbird openjdk-11-jdk -y;

#java
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64; 
export PATH=$PATH:$JAVA_HOME/bin;

#final
sudo apt autoremove;
sudo apt autoclean;

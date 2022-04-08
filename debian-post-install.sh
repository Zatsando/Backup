#!/bin/sh
hostnamectl set-hostname ZatsLaptop;

#update first
sudo apt update;
sudo apt upgrade -y;

#enable wayland
sudo nano /etc/gdm3/custom.conf;

#native packages
sudo apt install wireguard qbittorrent virtualbox android-tools-adb android-tools-fastboot krita discord steam obs-studio code vlc lutris streamlink python3 git gnome-tweaks ubuntu-restricted-extras neofetch barrier refind thunderbird -y;

#flatpaks + beta support
flatpak remote-add flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo;
sudo flatpak remote-delete flathub-beta; flatpak remote-add --user flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo;

flatpak install flathub com.spotify.Client -y;
flatpak install flathub org.signal.Signal -y;
flatpak install flathub com.parsecgaming.parsec -y;
flatpak install flathub com.stremio.Stremio -y;
flatpak install flathub org.telegram.desktop -y;
flatpak install flathub com.heroicgameslauncher.hgl -y;
flatpak install flathub com.chatterino.chatterino -y;
flatpak install flathub com.google.AndroidStudio -y;

#work only
flatpak install com.google.Chrome -y;
flatpak install flathub com.anydesk.Anydesk -y;
flatpak install flathub io.github.Figma_Linux.figma_linux -y;
flatpak install flathub com.microsoft.Teams -y;

#enable wayland on obs
export QT_QPA_PLATFORM=wayland;

#nodejs lts
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash;
nvm install nvm install --lts;

#java
sudo apt install openjdk-11-jdk; 
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64; 
export PATH=$PATH:$JAVA_HOME/bin; 

#remove libre office for onlyoffice
sudo apt-get remove --purge libreoffice* -y;
sudo apt autoremove && sudo apt autoclean -y;
wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb;
sudo dpkg -i onlyoffice-desktopeditors_amd64.deb;

#latest wine
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ impish main'
sudo apt update
sudo apt install --install-recommends winehq-stable

#protonvpn
wget https://protonvpn.com/download/protonvpn-stable-release_1.0.1-1_all.deb;
sudo dpkg -i protonvpn-stable-release_1.0.1-1_all.deb;
sudo apt-get update;
sudo apt install protonvpn -y;
sudo apt install gnome-shell-extension-appindicator gir1.2-appindicator3-0.1 -y;

#usefull appimages
wget https://github.com/SevenTV/chatterino7/releases/download/v7.3.4/Chatterino-x86_64.AppImage;
chmod +x Chatterino-x86_64.AppImage;

#papirus icon-pack
sudo add-apt-repository ppa:papirus/papirus;
sudo apt-get update;
sudo apt-get install papirus-icon-theme -y;

#pipewire over pulseaudio (optional)
sudo apt update;
sudo apt upgrade;
sudo add-apt-repository ppa:pipewire-debian/pipewire-upstream;
sudo apt install pipewire;
sudo apt install gstreamer1.0-pipewire libpipewire-0.3-{0,dev,modules} libspa-0.2-{bluetooth,dev,jack,modules} pipewire{,-{audio-client-libraries,pulse,media-session,bin,locales,tests}};

#final
sudo apt autoremove;
sudo apt autoclean;

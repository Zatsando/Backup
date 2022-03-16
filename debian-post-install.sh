#!/bin/sh

#update first
sudo apt-get update &&
sudo apt-get upgrade -y;

#enable wayland
sudo nano /etc/gdm3/custom.conf

#xanmod kernel
echo 'deb http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list;
wget -qO - https://dl.xanmod.org/gpg.key | sudo apt-key --keyring /etc/apt/trusted.gpg.d/xanmod-kernel.gpg add - ;
sudo apt update && sudo apt install linux-xanmod;

#native packages
sudo apt install qbittorrent minigalaxy virtualbox android-tools-adb android-tools-fastboot krita discord steam obs-studio code vlc lutris streamlink python3 git gnome-tweaks ubuntu-restricted-extras neofetch barrier refind thunderbird -y;

#enable wayland on obs
export QT_QPA_PLATFORM=wayland

# install heroic games launcher
curl -s https://api.github.com/repos/Heroic-Games-Launcher/HeroicGamesLauncher/releases/latest \
  | jq -r ".assets[] | select(.name | contains(\".deb\")) | .browser_download_url" \
  | wget -i -
sudo apt-get install -y ./heroic_*.deb;

#flatpaks
flatpak install flathub com.spotify.Client -y;
flatpak install flathub org.signal.Signal -y;
flatpak install flathub com.parsecgaming.parsec -y;
flatpak install flathub com.stremio.Stremio -y;
flatpak install flathub org.telegram.desktop -y;

#nodejs lts
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash;
nvm install nvm install --lts;

#java
sudo apt install openjdk-11-jdk; 
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64; 
export PATH=$PATH:$JAVA_HOME/bin; 

#remove libre office
sudo apt-get remove --purge libreoffice* -y;
sudo apt autoremove && sudo apt autoclean -y;

#onlyoffice
wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb &&
sudo dpkg -i onlyoffice-desktopeditors_amd64.deb;

#brave browser
sudo apt install apt-transport-https curl -y 
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg &&
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list &&
sudo apt update && sudo apt install brave-browser -y;

#latest wine
sudo dpkg --add-architecture i386;
wget -nc https://dl.winehq.org/wine-builds/winehq.key;
sudo apt-key add winehq.key;
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ impish main'sudo apt update;
sudo apt install --install-recommends winehq-stable -y;

#protonvpn
wget https://protonvpn.com/download/protonvpn-stable-release_1.0.1-1_all.deb;
sudo dpkg -i protonvpn-stable-release_1.0.1-1_all.deb;
sudo apt-get update;
sudo apt install protonvpn -y;
sudo apt install gnome-shell-extension-appindicator gir1.2-appindicator3-0.1 -y;

#usefull appimages
wget https://github.com/SevenTV/chatterino7/releases/download/v7.3.4/Chatterino-x86_64.AppImage;
chmod +x Chatterino-x86_64.AppImage;

#chrome (puke) only for work!
flatpak remote-add flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo;
sudo flatpak remote-delete flathub-beta; flatpak remote-add --user flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo;
flatpak install com.google.Chrome;

#papirus icon-pack
sudo add-apt-repository ppa:papirus/papirus;
sudo apt-get update;
sudo apt-get install papirus-icon-theme -y;

#pipewire over pulseaudio
sudo apt update && sudo apt upgrade;
sudo add-apt-repository ppa:pipewire-debian/pipewire-upstream;
sudo apt install pipewire;
sudo apt install gstreamer1.0-pipewire libpipewire-0.3-{0,dev,modules} libspa-0.2-{bluetooth,dev,jack,modules} pipewire{,-{audio-client-libraries,pulse,media-session,bin,locales,tests}};

#final
sudo apt autoremove && sudo apt autoclean;

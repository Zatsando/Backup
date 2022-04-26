#!/bin/sh
hostnamectl set-hostname ZatsLaptop;

#update first
sudo apt update;
sudo apt upgrade -y;

#enable wayland
sudo nano /etc/gdm3/custom.conf;

#native packages
sudo apt install wireguard synaptic qbittorrent virtualbox android-tools-adb android-tools-fastboot krita discord steam obs-studio code vlc lutris streamlink python3 git gnome-tweaks ubuntu-restricted-extras neofetch barrier refind thunderbird -y;

#flatpaks
flatpak install flathub com.spotify.Client -y;
flatpak install flathub org.telegram.desktop -y;
flatpak install flathub com.chatterino.chatterino -y;
flatpak install flathub com.anydesk.Anydesk -y;
flatpak install flathub io.github.Figma_Linux.figma_linux -y;

#enable wayland on obs
export QT_QPA_PLATFORM=wayland;

#nodejs lts
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash;
nvm install --lts;

#java
sudo apt install openjdk-11-jdk; 
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64; 
export PATH=$PATH:$JAVA_HOME/bin; 

#remove libre office
sudo apt-get remove --purge libreoffice* -y;
sudo apt autoremove && sudo apt autoclean -y;

#other apps apt
wget https://builds.parsecgaming.com/package/parsec-linux.deb;
sudo dpkg -i parsec-linux.deb;

wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb;
sudo dpkg -i onlyoffice-desktopeditors_amd64.deb;

wget https://dl.strem.io/shell-linux/v4.4.142/stremio_4.4.142-1_amd64.deb;
sudo dpkg -i stremio_4.4.142-1_amd64.deb;

wget https://protonvpn.com/download/protonvpn-stable-release_1.0.1-1_all.deb;
sudo dpkg -i protonvpn-stable-release_1.0.1-1_all.deb;
sudo apt-get update;
sudo apt install gnome-shell-extension-appindicator gir1.2-appindicator3-0.1 -y;
sudo apt install protonvpn -y;

sudo add-apt-repository ppa:papirus/papirus;
sudo apt-get update;
sudo apt-get install papirus-icon-theme -y;

wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop;

wget https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v2.2.6/heroic_2.2.6_amd64.deb;
sudo dpkg -i heroic_2.2.6_amd64.deb;

#latest wine
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo mv winehq.key /usr/share/keyrings/winehq-archive.key
wget -nc https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
sudo mv winehq-jammy.sources /etc/apt/sources.list.d/
sudo apt update

#usefull appimages
wget https://github.com/SevenTV/chatterino7/releases/download/v7.3.4/Chatterino-x86_64.AppImage;
chmod +x Chatterino-x86_64.AppImage;

# #pipewire over pulseaudio (not for pop_os)
# sudo apt update;
# sudo apt upgrade;
# sudo add-apt-repository ppa:pipewire-debian/pipewire-upstream;
# sudo apt install pipewire;
# sudo apt install gstreamer1.0-pipewire libpipewire-0.3-{0,dev,modules} libspa-0.2-{bluetooth,dev,jack,modules} pipewire{,-{audio-client-libraries,pulse,media-session,bin,locales,tests}};

#final
sudo apt autoremove;
sudo apt autoclean;

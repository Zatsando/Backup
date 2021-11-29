#!/bin/sh

#update first
sudo apt-get update;
sudo apt-get upgrade -y;

#fast apt
sudo add-apt-repository ppa:apt-fast/stable;
sudo apt-get update;
sudo apt-get -y install apt-fast;

#native packages
sudo apt-fast install heroic qbittorrent virtualbox android-tools-adb android-tools-fastboot krita discord steam obs-studio code vlc lutris streamlink python3 git gnome-tweaks ubuntu-restricted-extras neofetch barrier refind -y;

#flatpaks
flatpak install flathub com.spotify.Client -y;
flatpak install flathub org.signal.Signal -y;
flatpak install flathub com.parsecgaming.parsec -y;
flatpak install flathub com.google.AndroidStudio -y;
flatpak install flathub com.stremio.Stremio -y;
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Ultimate -y;
flatpak install flathub com.jetbrains.Rider -y;
flatpak install flathub org.telegram.desktop -y;

#mono develop
sudo apt install apt-transport-https dirmngr -y;
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF;
echo "deb https://download.mono-project.com/repo/debian vs-buster main" | sudo tee /etc/apt/sources.list.d/mono-official-vs.list;
sudo apt update;
sudo apt-get install monodevelop -y;

#ms fonts
sudo add-apt-repository multiverse;
sudo apt update && sudo apt install ttf-mscorefonts-installer -y;
sudo fc-cache -f -v;

wget http://ftp.de.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.8_all.deb;
sudo apt installl ./ttf-mscorefonts-installer_3.8_all.deb;
sudo fc-cache -f -v;

#onlyoffice
wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb;

#remove libre office
sudo apt-get remove --purge libreoffice* -y;
sudo apt autoremove && sudo apt autoclean -y;

#brave browser
sudo apt install apt-transport-https curl -y;
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg;
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list;
sudo apt update && sudo apt install brave-browser -y;

#latest wine
sudo dpkg --add-architecture i386;
wget -nc https://dl.winehq.org/wine-builds/winehq.key;
sudo apt-key add winehq.key;
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ hirsute main';
sudo apt update;
sudo apt install --install-recommends winehq-stable -y;

#protonvpn
wget https://protonvpn.com/download/protonvpn-stable-release_1.0.1-1_all.deb;
sudo apt-get update;
sudo apt install protonvpn;
sudo apt install gnome-shell-extension-appindicator gir1.2-appindicator3-0.1;

#usefull appimages
wget https://apprepo.de/uploads/package/version/2021/11/17/042834/Google-Chrome.AppImage;
wget https://github.com/SevenTV/chatterino7/releases/download/v7.3.4/Chatterino-x86_64.AppImage;
wget https://github.com/DavidoTek/ProtonUp-Qt/releases/download/v2.1.1/ProtonUp-Qt-2.1.1-x86_64.AppImage;
wget https://apprepo.de/appimage/download/teams;

chmod +x ./Google-Chrome.AppImage;
chmod +x ./Chatterino-x86_64.AppImage;
chmod +x ./ProtonUp-Qt-2.1.1-x86_64.AppImage;
chmod +x ./Teams.AppImage;

sudo add-apt-repository ppa:papirus/papirus;
sudo apt-get update;
sudo apt-get install papirus-icon-theme -y;

#final
sudo apt autoremove && sudo apt autoclean;

#!/bin/sh

#update first
sudo apt-get update;
sudo apt-get upgrade -y;

#fast apt
sudo add-apt-repository ppa:apt-fast/stable;
sudo apt-get update;
sudo apt-get -y install apt-fast;

#native packages
sudo apt-get install krita telegram-desktop discord steam obs-studio code vlc lutris streamlink python3 git gnome-tweaks ubuntu-restricted-extras neofetch barrier refind -y;

#flatpaks
flatpak install flathub com.spotify.Client -y;
flatpak install flathub org.signal.Signal -y;
flatpak install flathub com.parsecgaming.parsec -y;
flatpak install flathub com.google.AndroidStudio -y;
flatpak install flathub com.stremio.Stremio -y;
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Ultimate -y;
flatpak install flathub com.jetbrains.Rider -y;

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

#heroic
sudo add-apt-repository -y ppa:apt-fast/stable;
sudo apt install -y apt-fast;
apt-fast install -y heroic;

#protonvpn
wget https://protonvpn.com/download/protonvpn-stable-release_1.0.1-1_all.deb;
sudo apt-get update;
sudo apt install protonvpn;
sudo apt install gnome-shell-extension-appindicator gir1.2-appindicator3-0.1;

#final
sudo apt autoremove && sudo apt autoclean;

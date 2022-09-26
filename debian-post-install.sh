#!/bin/sh
hostnamectl set-hostname ZatsLaptop;

#pantheon tweaks
sudo apt install software-properties-common;
sudo add-apt-repository -y ppa:philip.scott/pantheon-tweaks;
sudo apt install pantheon-tweaks;

#swap
swapon;
sudo swapoff /dev/dm-2;
rm /dev/dm-2;
dd if=/dev/zero of=/swapfile bs=1M count=16384;
chmod 600 /swapfile;
mkswap /swapfile;
swapon /swapfile;

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
flatpak install flathub com.github.bluesabre.darkbar -y;flatpak install flathub org.telegram.desktop -y;flatpak install flathub com.usebottles.bottles -y;flatpak install flathub org.onlyoffice.desktopeditors -y;flatpak install flathub org.signal.Signal -y;flatpak install flathub com.stremio.Stremio -y;flatpak install flathub com.brave.Browser -y;flatpak install flathub org.qbittorrent.qBittorrent -y;flatpak install flathub org.kde.krita -y;flatpak install flathub com.discordapp.Discord -y;flatpak install flathub com.valvesoftware.Steam -y;flatpak install flathub com.visualstudio.code -y;flatpak install flathub org.videolan.VLC -y;flatpak install flathub org.mozilla.Thunderbird -y;flatpak install flathub org.mozilla.firefox -y;

#nodejs lts
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash;
#restart gnome-terminal
nvm install --lts;

#remove libre office
sudo apt remove --purge libreoffice* -y;
sudo apt autoremove && sudo apt autoclean -y;

#native packages
sudo apt update;
sudo apt install protonvpn libwingpanel-dev indicator-application libglib2.0-dev libgranite-dev libindicator3-dev gnome-shell-extension-manager gnome-shell-extension-appindicator gir1.2-appindicator3-0.1 wireguard synaptic android-tools-adb android-tools-fastboot streamlink python3 git gnome-tweaks ubuntu-restricted-extras neofetch openjdk-11-jdk -y;

#other apps apt
wget https://protonvpn.com/download/protonvpn-stable-release_1.0.1-1_all.deb;
sudo dpkg -i protonvpn-stable-release_1.0.1-1_all.deb;
wget https://github.com/rustdesk/rustdesk/releases/download/1.1.9/rustdesk-1.1.9.deb;
sudo dpkg -i rustdesk-1.1.9.deb;
wget https://github.com/Lafydev/wingpanel-indicator-ayatana/raw/master/com.github.lafydev.wingpanel-indicator-ayatana_2.0.8_odin.deb;
sudo dpkg -i ./com.github.lafydev.wingpanel*.deb;
wget https://protonvpn.com/download/protonvpn-stable-release_1.0.1-1_all.deb;
sudo dpkg -i ./protonvpn-stable-release_1.0.1-1_all.deb;

#wingpanel indicator
mkdir -p ~/.config/autostart;
cp /etc/xdg/autostart/indicator-application.desktop ~/.config/autostart/;
sed -i 's/^OnlyShowIn.*/OnlyShowIn=Unity;GNOME;Pantheon;/' ~/.config/autostart/indicator-application.desktop;
sudo nano /etc/xdg/autostart/indicator-application.desktop;

#java
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64; 
export PATH=$PATH:$JAVA_HOME/bin;

#final
sudo apt autoremove;
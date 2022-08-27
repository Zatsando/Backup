#!/bin/sh
hostnamectl set-hostname ZatsLaptop;

#pantheon tweaks
sudo apt install software-properties-common;
sudo add-apt-repository -y ppa:philip.scott/pantheon-tweaks;
sudo apt install pantheon-tweaks;

#swap
sudo swapoff /dev/dm-2;
rm /dev/dm-2;
dd if=/dev/zero of=/swapfile bs=1M count=16384;
chmod 600 /swapfile;
mkswap /swapfile;
swapon /swapfile;

#install nala instead of apt
echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
sudo apt update && sudo apt install nala;

#enable wayland
sudo nano /etc/gdm3/custom.conf;

#latest wine
sudo dpkg --add-architecture i386 &&
wget -nc https://dl.winehq.org/wine-builds/winehq.key &&
sudo mv winehq.key /usr/share/keyrings/winehq-archive.key &&
wget -nc https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources &&
sudo mv winehq-jammy.sources /etc/apt/sources.list.d/ &&
sudo nala update &&
sudo nala install --install-recommends winehq-devel -y;

#flatpaks
flatpak install flathub com.spotify.Client -y;flatpak install flathub org.telegram.desktop -y;flatpak install flathub com.chatterino.chatterino -y;flatpak install flathub com.anydesk.Anydesk -y;flatpak install flathub io.github.Figma_Linux.figma_linux -y;flatpak install flathub com.usebottles.bottles -y;flatpak install flathub org.onlyoffice.desktopeditors -y;flatpak install flathub org.signal.Signal -y;flatpak install flathub com.stremio.Stremio -y;flatpak install flathub com.heroicgameslauncher.hgl -y;flatpak install flathub com.brave.Browser -y;flatpak install flathub org.qbittorrent.qBittorrent -y;flatpak install flathub org.kde.krita -y;flatpak install flathub com.discordapp.Discord -y;flatpak install flathub com.valvesoftware.Steam -y;flatpak install flathub com.visualstudio.code -y;flatpak install flathub org.videolan.VLC -y;flatpak install flathub org.mozilla.Thunderbird -y;flatpak install flathub org.mozilla.firefox -y;

#nodejs lts
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash;
#restart gnome-terminal
nvm install --lts;

#remove libre office
sudo nala remove --purge libreoffice* -y;
sudo nala autoremove && sudo nala autoclean -y;

#other apps apt
wget https://protonvpn.com/download/protonvpn-stable-release_1.0.1-1_all.deb;
sudo dpkg -i protonvpn-stable-release_1.0.1-1_all.deb;
wget https://github.com/rustdesk/rustdesk/releases/download/1.1.9/rustdesk-1.1.9.deb;
sudo dpkg -i rustdesk-1.1.9.deb;
wget https://pokemmo.com/download_file/1/;

#native packages
sudo nala install gnome-shell-extension-manager gnome-shell-extension-appindicator gir1.2-appindicator3-0.1 wireguard synaptic android-tools-adb android-tools-fastboot streamlink python3 git gnome-tweaks ubuntu-restricted-extras neofetch openjdk-11-jdk -y;

#java
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64; 
export PATH=$PATH:$JAVA_HOME/bin;

#final
sudo nala autoremove;

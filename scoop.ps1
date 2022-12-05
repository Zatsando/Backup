Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex

scoop bucket add extras;
scoop bucket add versions;
scoop bucket add java;
scoop bucket add nonportable;

scoop install sharex;
scoop install android-studio;
scoop install obs-studio;
scoop install vlc;
scoop install discord;
scoop install explorerpatcher;
scoop install steam;
scoop install vscode;
scoop install signal;
scoop install temurin17-jdk;
scoop install temurin17-jre;
scoop install krita;
scoop install 7zip;
scoop install figma;
scoop install protonvpn-np;
scoop install nilesoft-shell;
scoop install nvm;
scoop install qbittorrent;
scoop install notepadplusplus;
scoop install stremio;
scoop install thunderbird;
scoop install streamlink;
scoop install git;
scoop install python;
scoop install firefox;
scoop install onlyoffice-desktopeditors;
scoop install wireguard-np;
scoop install kdeconnect;
scoop install quick-picture-viewer;
scoop install vncviewer;
scoop install eartrumpet;
scoop install bulk-crap-uninstaller;
scoop install rustdesk;
scoop install nextcloud;

wget https://blitz.gg/download/win -o .exe
wget https://content-system.gog.com/open_link/download?path=/open/galaxy/client/setup_galaxy_1.2.67.58.exe -o setup_galaxy_1.2.67.58.exe;

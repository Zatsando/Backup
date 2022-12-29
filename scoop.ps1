Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
scoop install git

scoop bucket add extras;
scoop bucket add versions;
scoop bucket add java;
scoop bucket add games;

scoop install sharex android-studio obs-studio vlc discord steam vscode signal temurin17-jdk temurin17-jre krita 7zip figma nvm qbittorrent notepadplusplus stremio thunderbird streamlink python firefox onlyoffice-desktopeditors kdeconnect quick-picture-viewer vncviewer eartrumpet bulk-crap-uninstaller rustdesk nextcloud

wget https://github.com/valinet/ExplorerPatcher/releases/download/22621.608.51.6_d262c41/ep_setup.exe -o ep_setup.exe;
wget https://blitz.gg/download/win -o .exe
wget https://content-system.gog.com/open_link/download?path=/open/galaxy/client/setup_galaxy_1.2.67.58.exe -o setup_galaxy_1.2.67.58.exe;

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
scoop install git

scoop bucket add extras;
scoop bucket add versions;
scoop bucket add java;
scoop bucket add games;

scoop install sharex android-studio obs-studio vlc discord steam vscode signal temurin17-jdk temurin17-jre krita 7zip figma nvm qbittorrent notepadplusplus stremio mailspring streamlink python onlyoffice-desktopeditors kdeconnect quick-picture-viewer vncviewer eartrumpet bulk-crap-uninstaller rustdesk nextcloud

winget install -e --id Brave.Brave;
winget install -e --id LibreWolf.LibreWolf;
winget install -e --id valinet.ExplorerPatcher;
winget install -e --id cangzhang.champ-r;

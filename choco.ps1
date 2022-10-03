Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install androidstudio --version 2021.3.1.16 -y
choco install 7zip --version 22.1 -y
choco install discord --version 1.0.9005 -y
choco install eartrumpet --version 2.2.0.0 -y
choco install firefox --version 105.0.1 -y
choco install git --version 2.37.3 -y
choco install adoptopenjdk12jre --version 12.0.2.10 -y
choco install oracle17jdk --version 17.0.2 -y
choco install kdeconnect-kde --version 22.08.1.1115 -y
choco install krita --version 5.1.1 -y
choco install nodejs --version 18.10.0 -y
choco install notepadplusplus --version 8.4.5 -y
choco install obs-studio --version 28.0.1 -y
choco install virtualbox --version 6.1.38 -y
choco install protonvpn --version 2.0.6 -y
choco install qbittorrent --version 4.4.5 -y
choco install sharex --version 14.1.0 -y
choco install signal --version 5.61.1 -y
choco install steam-client --version 2.10.91.92 -y
choco install stremio --version 4.4.159 -y
choco install thunderbird --version 102.3.1 -y
choco install vlc --version 3.0.17.4 -y
choco install vscode --version 1.71.2 -y
choco install wireguard --version 0.5.3 -y
choco install streamlink --version 5.0.1.1 -y
choco install python --version 3.10.7 -y
choco install onlyoffice --version 7.2.0 -y
choco install vnc-viewer --version 6.22.515 -y
choco install rustdesk --version 1.1.9 -y

wget https://github.com/yang991178/fluent-reader/releases/download/v1.1.2/Fluent.Reader.Setup.1.1.2.x64.exe -o Fluent.Reader.Setup.1.1.2.x64.exe;
wget https://github.com/ModuleArt/quick-picture-viewer/releases/download/v3.1.4/QuickPictureViewer-Setup.exe -o QuickPictureViewer-Setup.exe;
wget https://github.com/valinet/ExplorerPatcher/releases/download/22621.608.51.1_e4e3c61/ep_setup.exe -o ep_setup.exe;
wget https://blitz-stable.blitz.gg/Blitz-1.17.46.exe -o Blitz-1.17.46.exe;

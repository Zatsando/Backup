Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('<https://community.chocolatey.org/install.ps1>'));

choco install firefox brave discord 7zip.install python3 git.install barrier greenshot intellijidea-ultimate jpegview nodejs-lts nvidia-geforce-now obs-studio onlyoffice origin parsec signal steam streamlink stremio virtualbox vlc vscode winfetch androidstudio amd-ryzen-chipset kdeconnect-kde -y;
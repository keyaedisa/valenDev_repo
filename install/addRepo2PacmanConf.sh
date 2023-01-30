#!/bin/bash

echo "Automatically adding Valen Dev Repo to your /etc/pacman.conf"
wget https://raw.githubusercontent.com/keyaedisa/valenDev_repo/trunk/README.md
sed -n '19,22p' README.md >> /etc/pacman.conf
rm README.md
echo "Updating pacman databases"
wget https://raw.githubusercontent.com/keyaedisa/valenDev_repo/trunk/install/repo-Arch-public-key.gpg
pacman-key -a repo-Arch-public-key.gpg
pacman-key --finger w0rldEater
pacman-key --lsign-key w0rldEater
rm repo-Arch-public-key.gpg
pacman -Sy

#!/bin/bash

echo "Automatically adding Valen Dev Repo to your /etc/pacman.conf"
wget https://raw.githubusercontent.com/keyaedisa/valenDev_repo/master/README.md
sed -n '11,14p' README.md >> /etc/pacman.conf
rm README.md
echo "Updating pacman databases"
wget https://raw.githubusercontent.com/keyaedisa/valenDev_repo/master/install/public.key
pacman-key -a public.key
pacman-key --finger worldeater
pacman-key --lsign-key worldeater
rm public.key
pacman -Sy

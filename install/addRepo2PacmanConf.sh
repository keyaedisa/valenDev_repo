#!/bin/bash

cd ~/

if [[ "$1" == "dev" ]]; then
	echo "Automatically adding Valen Repo to your /etc/pacman.conf"
	curl -s -o README.md https://raw.githubusercontent.com/keyaedisa/valenDev_repo/master/README.md
	sed -n '19,22p' README.md >> /etc/pacman.conf
	rm README.md
	echo "Updating pacman databases"
	curl -s -o repo-Arch-public-key.gpg https://raw.githubusercontent.com/keyaedisa/valenDev_repo/master/install/repo-Arch-public-key.gpg
	pacman-key -a repo-Arch-public-key.gpg
	pacman-key --finger w0rldEater
	pacman-key --lsign-key w0rldEater
	rm repo-Arch-public-key.gpg
	pacman -Sy
else
	echo "Automatically adding Valen Repo to your /etc/pacman.conf"
	curl -s -o README.md https://raw.githubusercontent.com/keyaedisa/valenDev_repo/master/README.md
	sed -n '12,15p' README.md >> /etc/pacman.conf
	rm README.md
	echo "Updating pacman databases"
	curl -s -o repo-Arch-public-key.gpg https://raw.githubusercontent.com/keyaedisa/valenDev_repo/master/install/repo-Arch-public-key.gpg
	pacman-key -a repo-Arch-public-key.gpg
	pacman-key --finger w0rldEater
	pacman-key --lsign-key w0rldEater
	rm repo-Arch-public-key.gpg
	pacman -Sy
fi

#!/bin/bash

echo "Automatically adding Valen Repo to your /etc/pacman.conf"
sed -n '11,14p' README.md >> /etc/pacman.conf
echo "Updating pacman databases"
pacman -Sy

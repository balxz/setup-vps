#!/bin/bash
# Script by balxzzy
clear
echo "===================================="
echo " Setup VPS "
echo "===================================="
echo

echo "[1/6] Update dan upgrade sistem..."
apt update -y && apt upgrade -y

echo "[2/6] Install dependensi (curl & git)..."
apt install -y curl git

echo "[3/6] Install NVM (node)"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

echo
echo "[4/6] Pilih versi Node.js yang ingin diinstall"
echo "Tersedia: 18, 20, 21, 22, 23, 24"
while true; do
    read -p "Masukkan versi Node.js: " NODE_VERSION
    if [[ "$NODE_VERSION" =~ ^(18|20|21|22|23|24)$ ]]; then
        nvm install $NODE_VERSION
        nvm use $NODE_VERSION
        nvm alias default $NODE_VERSION
        break
    else
        echo "Versi tidak valid. Silakan pilih 18, 20, 21, 22, 23, atau 24."
    fi
done

echo "[5/6] Install PM2..."
npm install -g pm2

echo "[6/6] Install Nginx..."
apt install -y nginx

echo
echo "===================================="
echo " Setup selesai "
echo " Node.js: $(node -v)"
echo " NPM: $(npm -v)"
echo " PM2: $(pm2 -v)"
echo "===================================="

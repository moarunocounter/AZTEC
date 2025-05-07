#!/bin/bash

# Cek dan install curl & wget kalau belum ada
(command -v curl >/dev/null 2>&1 && command -v wget >/dev/null 2>&1) || {
  echo "[+] Updating package list..."
  sudo apt-get update
}

command -v curl >/dev/null 2>&1 || {
  echo "[+] Installing curl..."
  sudo apt-get install -y curl
}

command -v wget >/dev/null 2>&1 || {
  echo "[+] Installing wget..."
  sudo apt-get install -y wget
}

# Download dan jalankan aztec.sh
echo "[+] Downloading aztec.sh..."
[ -f "aztec.sh" ] && rm aztec.sh
curl -sSL -o aztec.sh https://raw.githubusercontent.com/zunxbt/aztec-sequencer-node/main/aztec.sh

echo "[+] Making aztec.sh executable..."
chmod +x aztec.sh

echo "[+] Running aztec.sh..."
./aztec.sh

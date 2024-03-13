#!/bin/bash

# 1. Docker'ı kurma
echo "Docker kurulumu başlatılıyor..."
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# 2. Kullanıcıya sudo yetkisi verme
echo "Kullanıcıya sudo yetkisi veriliyor..."
sudo usermod -aG docker $USER

echo "Docker kurulumu tamamlandı."

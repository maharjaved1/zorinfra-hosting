#!/bin/bash

echo "🚀 ZorInfra Server Setup Started..."

# 1. Update the system
sudo apt update && sudo apt upgrade -y

# 2. Install Docker
echo "🔧 Installing Docker..."
sudo apt install -y docker.io docker-compose

# 3. Enable Docker
sudo systemctl enable docker
sudo systemctl start docker

# 4. Install Nginx
echo "🌐 Installing Nginx..."
sudo apt install -y nginx

# 5. Enable Nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# 6. Install Certbot (optional for later)
echo "🔐 Installing Certbot..."
sudo apt install -y certbot python3-certbot-nginx

echo "✅ Setup Complete. Reboot your server and you're ready to deploy!"

#!/bin/bash
echo "DOCKER SETUP"

# Update
echo -e "\n### Updating ###"
sudo apt-get update && sudo apt-get upgrade -y

# Uninstall old Docker versions (if any)
echo -e "\n### Uninstalling old Docker versions ###"
sudo apt-get remove docker docker-engine docker.io containerd runc -y
sudo apt-get purge docker-ce docker-ce-cli containerd.io -y
sudo rm -rf /var/lib/docker

# Install dependencies
echo -e "\n### Installing dependencies ###"
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# Add Docker's official GPG key
echo -e "\n### Adding Docker's official GPG key ###"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository
echo -e "\n### Adding Docker repository ###"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Install Docker Engine
echo -e "\n### Installing Docker Engine ###"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# Start and enable Docker service
echo -e "\n### Starting Docker service ###"
sudo systemctl start docker
sudo systemctl enable docker

# Add current user to the Docker group
echo -e "\n### Adding current user to the Docker group ###"
sudo usermod -aG docker ${USER}

# Login to DockerHub
echo -e "\n### Login to DockerHub ###"
sudo docker login

# Clean up
echo -e "\n### Cleaning up ###"
sudo apt-get autoremove -y
sudo apt-get clean

echo -e "\n### Docker setup complete! ###"

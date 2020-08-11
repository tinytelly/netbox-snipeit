#!/bin/bash

sudo yum update -y
sudo yum install git -y
git --version


# Install docker
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf list docker-ce --showduplicates | sort -r
sudo dnf install docker-ce --nobest
sudo systemctl start docker
docker --version

# Install docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.26.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose -version

sudo usermod -aG docker $USER
sudo systemctl enable --now docker
# log out and back in at this point

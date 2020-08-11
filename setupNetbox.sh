#!/bin/bash

## following this - https://github.com/netbox-community/netbox-docker

git clone -b release https://github.com/netbox-community/netbox-docker.git
cd netbox-docker
tee docker-compose.override.yml <<EOF
version: '3.4'
services:
  nginx:
    ports:
      - 8000:8080
EOF
docker-compose pull
docker-compose up
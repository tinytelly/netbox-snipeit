#!/bin/bash

## following this - https://snipe-it.readme.io/docs/docker

git clone https://github.com/tinytelly/netbox-snipeit.git
cd netbox-snipeit/

docker-compose pull
docker-compose up

# Generate the KEY
docker ps -a # Get the container name
docker exec -it snipe-it-container-name sh

php artisan key:generate
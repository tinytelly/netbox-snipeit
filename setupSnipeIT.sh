#!/bin/bash

## following this - https://snipe-it.readme.io/docs/docker

git clone https://github.com/tinytelly/netbox-snipeit.git
cd netbox-snipeit/

docker-compose pull
docker-compose up

# Generate the KEY
docker ps -a # Get the container name
docker exec -it snipe-it-container-name sh

  php artisan key:generate ## add the key to APP_KEY=<<Fill in Later!>> in the .env file
  exit
  vi .env # add key

#Restart with key
docker-compose down
docker-compose up


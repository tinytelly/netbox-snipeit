#!/bin/bash

## following this - https://snipe-it.readme.io/docs/docker

git clone https://github.com/tinytelly/netbox-snipeit.git
cd netbox-snipeit/

docker pull snipe/snipe-it

docker run --name snipe-mysql --env-file=.env --mount source=snipesql-vol,target=/var/lib/mysql -d -P mysql:5.6
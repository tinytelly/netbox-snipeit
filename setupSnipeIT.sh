#!/bin/bash

## following this - https://snipe-it.readme.io/docs/docker

docker pull snipe/snipe-it

docker run --name snipe-mysql --env-file=env.list --mount source=snipesql-vol,target=/var/lib/mysql -d -P mysql:5.6
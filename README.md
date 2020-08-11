# Netbox and SnipeIT Stack
This is how to run up a [snipeit](https://snipeitapp.com/) and [netbox](https://github.com/netbox-community/netbox-docker) stack in docker.

## Run the Docker setup 
to install docker and git on a Centos 8 machine.
#### [setupMachine.sh](setupMachine.sh)

## Run the Netbox setup 
to install Netbox.
#### [setupNetbox.sh](setupNetbox.sh)

## Run the SnipeIT setup 
to install SnipeIT.
#### [setupSnipeIT.sh](setupSnipeIT.sh)

#### Running portainer to see your instances
if you are using gcp then open port 9000 to the firewall as shown above
```
docker volume create portainer_data
docker run -d -p 8020:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
```
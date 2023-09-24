# Docker Cheat Sheet<img align="left" width="30px" alt="Terminal" src="../images/icons/docker.png" style="padding-right:10px;" /> 
## Images
Command | Description | Example
------- | ----------- | -------
docker build | Build an image from a Dockerfile | `docker build -t myImage .`
docker pull | Pull an image from the registry | `docker pull ubuntu:latest`
docker images | List all images | `docker images`
docker rmi | Remove an image | `docker rmi ubuntu:latest`
docker tag | Tag a Docker image | `docker tag myImage myRepo:latest`
docker push | Push an image to the registry | `docker push myRepo:latest`
docker image prune | Remove unused images | `docker image prune`

## Containers
Command | Description | Example
------- | ----------- | -------
docker run | Run a container from an image | `docker run -it --name myContainer ubuntu`
docker ps | List all running containers. add -a for all. | `docker ps -a`
docker stop | Stop a running container | `docker stop myContainer`
docker start | Start a container | `docker start myContainer`
docker restart | Restart a container | `docker restart myContainer`
docker rm | Remove a container | `docker rm myContainer`
docker exec | Execute a command in a container | `docker exec myContainer touch /tmp/newFile`
docker exec | Start a interactive shell | `docker exec -it myContainer bash`
docker attach | Attach to a running container | `docker attach myContainer`
docker commit | Create a new image from a container | `docker commit -m "Message" myContainer imageName`

## Command Combos:
Command | Description | Example
------- | ----------- | -------
docker stop $(docker ps -a -q) | Stop all containers | `docker stop $(docker ps -a -q)`
docker rm $(docker ps -a -q) | Remove all containers | `docker rm $(docker ps -a -q)`
docker rmi $(docker images -q) | Remove all images | `docker rmi $(docker images -q)`

## Networking:
Command | Description | Example
------- | ----------- | -------
docker network create | Create a network | `docker network create myNetwork`
docker network connect | Connect a container to a network | `docker network connect myNetwork myContainer`
docker network disconnect | Disconnect a container from a network | `docker network disconnect myNetwork myContainer`
docker network inspect | Inspect a network | `docker network inspect myNetwork`


## Volumes:
Command | Description | Example
------- | ----------- | -------
docker volume create | Create a volume | `docker volume create myVolume`
docker volume inspect | Inspect a volume | `docker volume inspect myVolume`
docker volume rm | Remove a volume | `docker volume rm myVolume`
docker volume ls | List volumes | `docker volume ls`
docker volume prune | Remove unused volumes | `docker volume prune`

## Cleanup/Pruning:
Command | Description | Example
------- | ----------- | -------
docker system prune | Remove unused data | `docker system prune`
docker image prune | Remove unused images | `docker image prune`
docker volume prune | Remove unused volumes | `docker volume prune`

## Miscellaneous:
Command | Description | Example
------- | ----------- | -------
docker info | Display system-wide information | `docker info`
docker version | Display version information | `docker version`

## Docker Compose:
Command | Description | Example
------- | ----------- | -------
docker compose build | Build images | `docker compose build`
docker compose up | Create and start containers | `docker compose up`
docker compose start | Start existing containers | `docker compose start`
docker compose stop | Stop running containers | `docker compose stop`
docker compose down | Stop and remove containers | `docker compose down`
docker compose ps | List containers | `docker compose ps`
docker compose build | Build images | `docker compose build`
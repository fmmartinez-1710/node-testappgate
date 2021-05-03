# node-testappgate

En este repo esta los archivos y configuraciones para el despliegue del ejercicio que está en el siguiente enlace

https://medium.com/@diogo.fg.pinheiro/simple-to-do-list-app-with-node-js-and-mongodb-chapter-1-c645c7a27583

Utilizando tecnologias node.js, Mongodb, docker + kubernetes

## Dockerfile

Revise la construcción en docker [Dokerfile.yaml](templates/Dokerfile.yaml)

## Las imágenes generadas quedaron en el siguiente DockerHub.

https://hub.docker.com/r/fabianmartinezvass/test-appgate

## Archivos despliegue Kubernetes:

Creación de Pod de app en node + docker  [node-app-deployment.yaml](node-app-deployment.yaml)

La creación de Kubernetes Service  [node-app-service.yaml](node-app-service.yaml)

## Archivos despliegue docker-compose:

La creación de docker-compose Service  [docker-compose.yaml](docker-compose.yaml)

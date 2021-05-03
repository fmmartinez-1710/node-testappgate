# node-testappgate

En este repo esta los archivos y configuraciones para el despliegue del ejercicio que está en el siguiente enlace

https://medium.com/@diogo.fg.pinheiro/simple-to-do-list-app-with-node-js-and-mongodb-chapter-1-c645c7a27583

##Dockerfile

FROM node:10-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY ./app /home/node/app

#USER node

RUN npm install
RUN npm install -g npm@latest
RUN npm i core-util-is
RUN npm install --save express mongoose ejs dotenv
RUN npm install --save-dev nodemon

COPY --chown=node:node . .

EXPOSE 4000

CMD [ "node", "index.js" ]

Las imágenes generadas quedaron en el siguiente DockerHub.

https://hub.docker.com/r/fabianmartinezvass/test-appgate

Archivos despliegue Kubernetes:

Creación de Pod de app en node + docker  [node-app-deployment.yaml](node-app-deployment.yaml)

la creación de Kubernetes Service  [node-app-service.yaml](node-app-service.yaml)

Revise la plantilla aquí  [template-publicalb-v2.yaml](templates/template-publicalb-v2.yaml)

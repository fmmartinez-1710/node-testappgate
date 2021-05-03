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

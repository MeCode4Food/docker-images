FROM node:lts-alpine

RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

RUN npm i -g firebase-tools
COPY ./firebase.json ./firebase.json

RUN apk add openjdk11 curl
EXPOSE 4000
EXPOSE 8080

CMD firebase --project=development emulators:start --only firestore

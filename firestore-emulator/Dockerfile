FROM node:lts-alpine

RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

RUN npm i -g firebase-tools@9.18.0
COPY / /

RUN apk add openjdk11

EXPOSE 4000
EXPOSE 8080

CMD echo "GCP_PROJECT" $GCP_PROJECT && firebase --project=$GCP_PROJECT emulators:start --only firestore

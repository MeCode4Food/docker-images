FROM node:lts-alpine

RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

RUN npm i -g firebase-tools
COPY / /

RUN apk add openjdk11 curl jq

EXPOSE 4000
EXPOSE 8080

CMD echo "GCP_PROJECT" $GCP_PROJECT && ./firebase-setup.sh && firebase --project=$GCP_PROJECT emulators:start --only firestore

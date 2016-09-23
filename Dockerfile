FROM node:5.12

RUN npm install -g angular-cli@webpack

WORKDIR /usr/src
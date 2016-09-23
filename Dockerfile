FROM node:latest

RUN npm install -g angular-cli@webpack

WORKDIR /usr/src
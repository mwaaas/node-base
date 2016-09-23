FROM node:5.12

RUN npm install -g angular-cli && npm install -g --save process-nextick-args

WORKDIR /usr/src

FROM node:5.12

RUN npm install -g angular-cli && npm install -g --save process-nextick-args

WORKDIR /usr/src

# Fix bug https://github.com/npm/npm/issues/9863
RUN cd $(npm root -g)/npm \
  && npm install fs-extra \
  && sed -i -e s/graceful-fs/fs-extra/ -e s/fs\.rename/fs.move/ ./lib/utils/rename.js

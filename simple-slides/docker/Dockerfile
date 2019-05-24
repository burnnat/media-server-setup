FROM node:10

ADD package.json /usr/src/app/
WORKDIR /usr/src/app
RUN npm install

CMD [ "node", "node_modules/simple-slides/index.js", "-p", "8033", "-d", "/srv/slides" ]

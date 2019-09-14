FROM node:10

ADD package.json /usr/src/app/
ADD config.json /usr/src/app/
WORKDIR /usr/src/app
RUN npm install

CMD [ "node", "node_modules/webscreens/index.js", "--port", "8033", "--config", "config.json" ]

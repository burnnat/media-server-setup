FROM node:12-slim

# Install Puppeteer dependencies. See: https://github.com/GoogleChrome/puppeteer/blob/master/docs/troubleshooting.md#running-puppeteer-in-docker
RUN apt-get update \
    && apt-get install -y wget gnupg \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
    && apt-get update \
    && apt-get install -y google-chrome-stable fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-kacst fonts-freefont-ttf libxss1 \
      --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# For some reason this dependency is required but not included in the "official" Puppeteer docs...
RUN apt-get update && apt-get install -y libxtst6

ADD package.json /usr/src/app/
ADD config.json /usr/src/app/
WORKDIR /usr/src/app
RUN npm install

CMD [ "node", "node_modules/webscreens/index.js", "--port", "8033", "--config", "config.json" ]

From node:17 as base

WORKDIR /src

COPY package*.json /

EXPOSE 3000

RUN npm install

COPY --chown=node:node . ./

CMD ["node", "server.js"]

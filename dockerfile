FROM node:14-alpine

WORKDIR /app

COPY package.json package-lock.json /app/

RUN npm install --production

COPY server.js /app/

EXPOSE 3000

CMD [ "node", "server.js" ]

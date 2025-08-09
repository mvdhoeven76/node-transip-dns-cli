FROM node:18-alpine
WORKDIR /home/node/app
COPY package*.json ./
RUN npm ci --production
COPY . .
RUN chown -R node:node /home/node/
USER node
ENTRYPOINT [ "node", "cli.js" ]
CMD [ "" ]

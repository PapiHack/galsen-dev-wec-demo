FROM node:lts-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g npm && npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "run", "start" ]

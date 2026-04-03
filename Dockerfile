FROM node:18

RUN apt-get update && apt-get install -y graphicsmagick && apt-get clean

WORKDIR /app

COPY package.json /app/package.json

RUN npm install

COPY . /app

CMD ["npm", "run", "dev"]

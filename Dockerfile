FROM node:18

WORKDIR /app

COPY . .

RUN npm install

RUN ./node_modules/.bin/tsc

EXPOSE 3000

ENTRYPOINT ["node", "./build/index.js"]

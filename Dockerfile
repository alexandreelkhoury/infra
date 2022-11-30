FROM node:16

WORKDIR /app
COPY C:\Users\alexk\Tezos-Explorer ./
WORKDIR /Tezos-Explorer
RUN npm install
WORKDIR /app/Tezos-Explorer/src
COPY . .
EXPOSE 3005
CMD [ "node", "main.ts" ]

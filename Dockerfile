FROM node:18.17.0-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY next.config.js ./next.config.js
COPY tsconfig.json ./tsconfig.json

EXPOSE 3000

CMD ["npm", "run", "dev"]

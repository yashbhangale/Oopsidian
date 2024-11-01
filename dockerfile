FROM node:18-alpine AS builder

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run dev

EXPOSE 3000

CMD ["npm","run","dev"]
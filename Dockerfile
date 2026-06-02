FROM node:20

WORKDIR /app

COPY package*.json ./

ENV NODE_ENV=production

RUN npm ci --only=production

COPY . .

EXPOSE 5000

CMD ["node", "index.js"]
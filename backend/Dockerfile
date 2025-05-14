FROM node:18-alpine

WORKDIR /app

COPY package.json ./

ENTRYPOINT ["password.sh"]

RUN npm install

COPY . .

EXPOSE ${API_PORT}
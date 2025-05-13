FROM node:18-alpine

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

COPY wait-for-it.sh /wait-for-it.sh

EXPOSE ${API_PORT}

CMD ["/wait-for-it.sh", "db:5432", "--", "npm", "start"]
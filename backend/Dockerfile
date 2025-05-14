FROM node:18-alpine

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

COPY password.sh /password.sh
RUN chmod +x /password.sh

ENTRYPOINT ["password.sh"]

EXPOSE ${API_PORT}
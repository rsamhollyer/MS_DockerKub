FROM node

WORKDIR /app

RUN mkdir /app/logs

COPY package.json .

RUN npm install

COPY . .

RUN chown -R node:node /app/logs

EXPOSE 80

ENV MONGODB_USERNAME=root
ENV MONGODB_PASSWORD=secret

CMD ["npm", "start"]
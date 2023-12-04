FROM node:18-alpine

ENV MONGODB_CLUSTER_ADDRESS=cluster1.dlcb06m.mongodb.net
ENV MONGODB_USERNAME=muhammadqodir
ENV MONGODB_PASSWORD=muhammadqodir
ENV MONGODB_DB_NAME=test
ENV PORT=3000

WORKDIR /app

COPY package*.json .

RUN npm install

EXPOSE 3000

CMD [ "npm" , "start" ]
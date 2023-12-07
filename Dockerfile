FROM node:18.16.0
RUN apt-get update && apt-get -y install build-essential && mkdir –p /app
COPY package*.json /app
WORKDIR /app
RUN npm install
COPY index.js /app
COPY . /app
EXPOSE 5000
CMD [ "node", "index.js" ] 
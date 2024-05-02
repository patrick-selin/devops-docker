# 1.12: Hello, frontend!

FROM node:16

FROM ubuntu:16.04

WORKDIR /usr/src/app

RUN apt-get update && apt-get -y install curl

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
RUN apt-get install -y nodejs

COPY . .

RUN npm install

RUN npm run build
RUN npm install -g serve

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]


# docker build . -t frontend
# ocker run -d -p 5001:5000 frontend
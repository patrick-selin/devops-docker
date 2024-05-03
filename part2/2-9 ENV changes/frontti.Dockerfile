# 2-9 frontti

FROM node:16-alpine

EXPOSE 5001

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://backend/api

RUN npm install

RUN npm run build

RUN npm install -g serve

CMD ["serve", "-s", "-l", "5000", "build"]
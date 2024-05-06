# 3.7 frontend

FROM node:16-alpine AS builder

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080/

RUN npm install && \
    npm run build

FROM alpine:latest

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/build .

RUN chown -R appuser:appgroup /usr/src/app


USER appuser

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]
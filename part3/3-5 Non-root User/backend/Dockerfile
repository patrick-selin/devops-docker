# 3.5 backend

FROM golang:1.16 AS builder

WORKDIR /usr/src/app

COPY . .

RUN go build -o server

FROM alpine:latest

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/server .

RUN chown -R appuser:appgroup /usr/src/app

USER appuser

EXPOSE 8080

ENV PORT=8080

ENV REQUEST_ORIGIN=http://localhost:8080

CMD ["./server"]


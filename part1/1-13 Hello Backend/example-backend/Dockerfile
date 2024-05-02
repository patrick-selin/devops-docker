# 1.13: Hello, backend!

FROM golang:1.16

WORKDIR /usr/src/app

COPY . .

RUN go build -o server

EXPOSE 8080

ENV PORT=8080

ENV REQUEST_ORIGIN=http://localhost:8080

RUN go test ./...

CMD ["./server"]


# cors problem

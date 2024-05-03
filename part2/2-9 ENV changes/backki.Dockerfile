# 2.9 backend

FROM golang:1.16

WORKDIR /usr/src/app

EXPOSE 8080

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5001

RUN go build -o server

RUN go test ./...

CMD ["./server"]
# 1.13: Hello, backend!

FROM golang:1.16

WORKDIR /usr/src/app

COPY . .

RUN go build -o server

EXPOSE 8080

ENV PORT=8080

ENV REQUEST_ORIGIN=http://localhost:8080/ping

RUN go test ./...

CMD ["./server"]


# docker build --platform linux/amd64 -t go-server .
# docker run -p 8080:8080 go-server

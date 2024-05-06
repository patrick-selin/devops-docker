# 3.9

FROM golang:1.16 AS builder

WORKDIR /go/src/app

COPY . .

RUN go build -o server .

FROM scratch

COPY --from=builder /go/src/app/server /

EXPOSE 8080

ENV PORT=8080
ENV REQUEST_ORIGIN=https://example.com

CMD ["/server"]
FROM alpine:3.19

WORKDIR /usr/src/app

COPY hello.sh .

# Execute a command with `/bin/sh -c` prefix.
RUN touch additional.txt

CMD ./hello.sh
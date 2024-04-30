FROM ubuntu:22.04


WORKDIR /usr/src/app

# install curl

COPY script.sh .

# Execute a command with `/bin/sh -c` prefix.
RUN touch additional.txt

CMD ./script.sh
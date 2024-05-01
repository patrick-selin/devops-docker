# Exercise 1.7: Image for script

FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

COPY script.sh /usr/src/app/script.sh
    
RUN chmod +x /usr/src/app/script.sh

WORKDIR /usr/src/app
    
CMD ./script.sh
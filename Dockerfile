FROM ubuntu:latest

RUN apt-get update

# Install curl
RUN apt-get install curl

# Install node.js v14.x
RUN cd ~
RUN curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install -y nodejs
RUN node -v

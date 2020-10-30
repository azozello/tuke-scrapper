FROM ubuntu:latest

RUN apt-get update

# Install curl
RUN apt-get -y install curl

# Install node.js v14.x
RUN cd ~
RUN curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get -y install nodejs
RUN node -v

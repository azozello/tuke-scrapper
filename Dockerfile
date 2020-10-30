FROM ubuntu:latest

ENV TZ=Europe/Kiev

RUN apt-get update

# Install curl
RUN apt-get -y install curl

# Install git
RUN apt-get -y install git

# Install node.js v14.x
RUN cd ~
RUN curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get -y install nodejs
RUN node -v

# Install nginx
RUN apt-get -y install nginx
RUN systemctl status nginx

# Install application
CMD cd ~
CMD git clone https://github.com/azozello/tuke-scrapper.git
CMD cd tuke-scrapper

# Test js
CMD npm i
CMD npm start

EXPOSE 8080

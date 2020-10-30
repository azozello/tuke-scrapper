FROM ubuntu:latest

RUN echo "Hello world"

RUN apt-get update
RUN apt-get install -y node-js

RUN node -v

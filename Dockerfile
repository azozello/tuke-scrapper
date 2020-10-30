FROM ubuntu:latest

RUN echo "Hello world"

RUN apt-get update
RUN apt-get install - ynode-js

RUN node -v"

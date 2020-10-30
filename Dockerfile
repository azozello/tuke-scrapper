FROM ubuntu:latest

RUN echo "Hello world"

RUN sudo apt-get update
RUN sudo apt-get install - ynode-js

RUN node -v"

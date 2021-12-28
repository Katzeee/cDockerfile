FROM jmcdice/vscode-server

LABEL maintainer="jiangfegnxi.c@gmail.com"

RUN apt-get update \
    && apt-get install sudo \
    && apt-get install build-essential \
    && apt-get install gcc-multilib \
    && apt-get install gdb


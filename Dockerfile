FROM linuxserver/code-server:latest

LABEL maintainer="jiangfegnxi.c@gmail.com"

# 换源
RUN sed -i 's/http:\/\/archive.ubuntu.com\/ubuntu\//http:\/\/mirrors.163.com\/ubuntu\//g' /etc/apt/sources.list \
# 确保man指令可用
    && rm /etc/dpkg/dpkg.cfg.d/excludes \ 
    && apt-get update \
    && apt-get install build-essential -y \
    && apt-get install man -y \
    && apt-get install gcc-doc -y \
    && apt-get install gdb -y \
    && apt-get install git -y \
    && apt-get install libreadline-dev -y \
    && apt-get install libsdl2-dev -y \
    && apt-get install llvm -y \
    && apt-get install vim -y




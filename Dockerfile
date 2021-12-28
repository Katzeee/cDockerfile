FROM jmcdice/vscode-server

LABEL maintainer="jiangfegnxi.c@gmail.com"

# 换源
RUN sed -i 's/http:\/\/archive.ubuntu.com\/ubuntu\//http:\/\/mirrors.163.com\/ubuntu\//g' /etc/apt/sources.list \
# 确保man指令可用
    && rm /etc/dpkg/dpkg.cfg.d/excludes \ 
    && apt-get update \
    && apt-get install -y build-essential \
    && apt-get install -y gcc-multilib \
    && apt-get install -y gdb


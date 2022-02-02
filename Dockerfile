FROM ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive
ADD setup_dev_env.sh /tmp/setup_dev_env.sh

RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list && \
    sh /tmp/setup_dev_env.sh 

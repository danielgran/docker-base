FROM debian:bullseye

RUN apt update && \
  apt install -y apt-transport-https ca-certificates clang cmake gcc git g++ htop make man nano net-tools rsync sudo tree wget && \
  apt upgrade -y
FROM debian:bullseye

RUN apt update && \
  apt install -y apt-transport-https tar screen ca-certificates clang cmake gcc git gpg g++ htop make man nano net-tools rsync software-properties-common sudo tree wget && \
  apt upgrade -y

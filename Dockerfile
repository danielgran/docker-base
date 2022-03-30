FROM debian:bullseye

RUN apt update && \
  apt install -y gcc clang htop tree net-tools nano

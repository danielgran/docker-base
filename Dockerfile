FROM debian:bookworm-slim
ARG TARGETPLATFORM

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install --allow-unauthenticated -y apt-transport-https tar curl screen ca-certificates clang cmake gcc git gpg g++ htop make man nano net-tools rsync python3 software-properties-common sudo tree wget
FROM debian:bookworm-slim
ENV DEBIAN_FRONTEND=noninteractive


RUN apt install --allow-unauthenticated -y apt-transport-https tar curl screen ca-certificates clang cmake gcc git gpg g++ htop make man nano net-tools rsync software-properties-common sudo tree wget
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 648ACFD622F3D138 0E98404D386FA1D9

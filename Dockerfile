FROM debian:bookworm

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 648ACFD622F3D138 0E98404D386FA1D9
RUN  apt-get -y install gnupg2
RUN  apt intall
RUN  apt install -y gnupg2 apt-transport-https tar curl screen ca-certificates clang cmake gcc git gpg g++ htop make man nano net-tools rsync software-properties-common sudo tree wget
RUN  apt upgrade -y

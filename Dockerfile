FROM debian:bookworm-slim
ENV DEBIAN_FRONTEND=noninteractive

RUN  gpg --keyserver pgpkeys.mit.edu --recv-key 0E98404D386FA1D9
RUN  gpg -a --export 0E98404D386FA1D9 |  apt-key add -
RUN  apt-get update


RUN  gpg --keyserver pgpkeys.mit.edu --recv-key  648ACFD622F3D138
RUN  gpg -a --export 648ACFD622F3D138 |  apt-key add -
RUN  apt-get update


RUN apt-get update && apt-get upgrade -y && apt-get install --no-install-recommends -y

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 648ACFD622F3D138 0E98404D386FA1D9
#RUN apt update
#RUN apt-get -y install gnupg2
#RUN apt intall
#RUN apt install -y apt-transport-https tar curl screen ca-certificates clang cmake gcc git gpg g++ htop make man nano net-tools rsync software-properties-common sudo tree wget
#RUN apt upgrade -y

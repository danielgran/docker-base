FROM debian:bookworm-slim
ARG TARGETPLATFORM

ENV DEBIAN_FRONTEND=noninteractive

RUN echo $TARGETPLATFORM
RUN if [ "$TARGETPLATFORM" = "linux/amd64" ]; then apt -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true update; fi 
RUN apt update
RUN apt install --allow-unauthenticated -y apt-transport-https tar curl screen ca-certificates clang cmake gcc git gpg g++ htop make man nano net-tools rsync software-properties-common sudo tree wget
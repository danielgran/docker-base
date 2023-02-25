FROM debian:bookworm-slim
ENV DEBIAN_FRONTEND=noninteractive

RUN apt -o Acquire::AllowInsecureRepositories=true \
  -o Acquire::AllowDowngradeToInsecureRepositories=true \
  update
RUN apt install --allow-unauthenticated -y apt-transport-https tar curl screen ca-certificates clang cmake gcc git gpg g++ htop make man nano net-tools rsync software-properties-common sudo tree wget
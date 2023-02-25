FROM debian:bookworm-slim
ENV DEBIAN_FRONTEND=noninteractive


ARG TARGETPLATFORM
RUN echo $TARGETPLATFORM
RUN if [ "$TARGETPLATFORM" = "linux/amd64" ]; then ARCHITECTURE=amd64; \
    elif [ "$TARGETPLATFORM" = "linux/arm64" ]; then apt -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true update; \
    else ARCHITECTURE=amd64; fi 

RUN apt install --allow-unauthenticated -y apt-transport-https tar curl screen ca-certificates clang cmake gcc git gpg g++ htop make man nano net-tools rsync software-properties-common sudo tree wget
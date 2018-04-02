FROM debian:stable
RUN apt-get update && apt-get install -y wget unzip perl-modules binutils && rm -rf /var/lib/apt/lists/*
COPY install-tex.sh /tmp

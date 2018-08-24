FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y zip
RUN apt-get install -y man-db

WORKDIR /data
RUN curl https://rclone.org/install.sh | bash

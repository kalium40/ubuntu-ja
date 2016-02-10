FROM ubuntu:14.04

MAINTAINER i@p-nitrite.net

RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install language-pack-ja-base language-pack-ja
RUN locale-gen ja_JP.UTF-8
RUN dpkg-reconfigure locales
RUN echo "Asia/Tokyo" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata


ENV LC_ALL ja_JP.UTF-8
ENV LC_MESSAGES ja_JP.UTF-8
ENV LC_IDENTIFICATION ja_JP.UTF-8
ENV LC_COLLATE ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LC_MEASUREMENT ja_JP.UTF-8
ENV LC_CTYPE ja_JP.UTF-8
ENV LC_TIME ja_JP.UTF-8
ENV LC_NAME ja_JP.UTF-8


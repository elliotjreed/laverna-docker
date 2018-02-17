FROM nginx:alpine

MAINTAINER Elliot J. Reed <docker-contact@elliotjreed.com>

RUN rm -rf /usr/share/nginx/html/* && rm -rf /etc/nginx/*
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./repository /usr/share/nginx/html

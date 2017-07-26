FROM nginx:alpine

MAINTAINER Elliot J. Reed <docker-contact@elliotjreed.com>

RUN apk update && apk upgrade && \
    apk add --no-cache git

ADD nginx.conf /etc/nginx/sites-available/laverna
RUN mkdir -p /etc/nginx/sites-enabled
RUN ln -s /etc/nginx/sites-available/laverna /etc/nginx/sites-enabled/laverna

RUN rm -rf /usr/share/nginx/html/*
RUN git clone -b gh-pages https://github.com/Laverna/static-laverna /usr/share/nginx/html

FROM nginx:alpine

LABEL Description="Laverna note-taking application, Dockerised!" Vendor="Elliot J. Reed" Version="1.0"

WORKDIR /usr/share/nginx/html

RUN apk add --update --no-cache --virtual .build-deps git && \
    rm -rf /usr/share/nginx/html/* && \
    git clone --depth 1 -b gh-pages https://github.com/Laverna/static-laverna /usr/share/nginx/html && \
    apk del .build-deps && \
    { find /usr/local/lib -type f -print0 | xargs -0r strip --strip-all -p 2>/dev/null || true; } && \
    rm -rf /tmp/* /usr/local/lib/php/doc/* /var/cache/apk/* /etc/nginx/* /usr/share/nginx/html/.htaccess /usr/share/nginx/html/docs /usr/share/nginx/html/.git

COPY ./nginx.conf /etc/nginx/nginx.conf

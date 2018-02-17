#!/usr/bin/env bash

if [ ! -d ./laverna/repository ] ; then
    mkdir -p ./laverna/repository
    git clone --depth 1 -b gh-pages https://github.com/Laverna/static-laverna ./laverna/repository
else
    cd ./laverna/repository && git fetch --all && git reset --hard origin/gh-pages
fi

rm -rf ./laverna/.git ./laverna/.htaccess ./laverna/docs

docker-compose build

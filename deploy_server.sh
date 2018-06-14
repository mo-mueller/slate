#!/usr/bin/env bash

bundle exec middleman build --clean

if [ "$1" = "live" ]
then
    cp -r build/* /var/www/vhosts/m--m.tech/httpdocs
    echo "Files moved to live"
elif [ "$1" = "stage" ]
then
    cp -r build/* /var/www/vhosts/euve260381.serverprofi24.de/slate.euve260381.serverprofi24.de
    echo "Files moved to stage"
fi

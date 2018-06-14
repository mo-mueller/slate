#!/usr/bin/env bash

bundle exec middleman build --clean

if [ "$1" = "live" ]
then
    cp -r build/* /var/www/vhosts/m--m.tech/httpdocs
elif [ "$1" = "stage" ]
    cp -r build/* /var/www/vhosts/euve260381.serverprofi24.de/slate.euve260381.serverprofi24.de
fi

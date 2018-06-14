#!/usr/bin/env bash

bundle exec middleman build --clean
cp -r build/* /var/www/vhosts/euve260381.serverprofi24.de/slate.euve260381.serverprofi24.de

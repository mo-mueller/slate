#!/usr/bin/env bash

bundle exec middleman build --clean
cp -r build/* /var/www/vhosts/m--m.tech/httpdocs

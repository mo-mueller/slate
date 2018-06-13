#!/usr/bin/env bash

host="62.75.211.114"
user=root

echo "Push to github"
git add .
git commit -m "$1"
git push origin master

echo "Deploy to live..."
ssh -o StrictHostKeyChecking=no -p 22 ${user}@${host} "cd apps/slate; \
                                                       git pull origin master; \
                                                       ./deploy_live.sh"
echo "Done."


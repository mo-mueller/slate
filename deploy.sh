#!/usr/bin/env bash

message=${1:-"No commit message provided"}
environment=${2:-stage}

host="62.75.211.114"
user=root

echo "Push to github"
git add .
git commit -m "$message"
git push origin master

echo "Deploy to $environment..."
ssh -o StrictHostKeyChecking=no -p 22 ${user}@${host} "cd apps/slate; \
                                                       git pull origin master; \
                                                       ./deploy_server.sh $environment"
echo "Done."


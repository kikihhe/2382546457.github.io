#!/usr/bin/env sh

set -e

npm run build

cd docs/.vuepress/dist

git init
git add .
git commit -m 'deploy'

git branch -M main
git remote add origin git@github.com:2382546457/2382546457.github.io.git

git push -f origin main

cd -
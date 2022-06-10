#!/bin/sh
cd ../bedag-angular-styleguide
./mvnw clean install

cd -
rm -rf docs
cp -r ../bedag-angular-styleguide/frontend/dist/frontend docs
rm -rf docs/src

sed -i "s#<base href=\"/\">#<base href=\"/styleguide/\">#" docs/index.html

# Hack to make paths within the app work
cp docs/index.html docs/404.html

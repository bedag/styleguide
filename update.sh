#!/bin/sh
cd ../bedag-angular-styleguide/
mvn clean install

cd -
rm -rf docs
mv ../bedag-angular-styleguide/frontend/dist/app docs

sed -i "s#<base href=\"/\">#<base href=\"/styleguide/\">#" docs/index.html

# Hack to make paths within the app work
cp docs/index.html docs/404.html


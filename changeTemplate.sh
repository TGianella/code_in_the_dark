#!/bin/sh -x

rm -rf ./dist/assets
cp -R ./dist/templates/"$1"/. ./dist/assets



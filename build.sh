#!bin/bash

rm -rf dist
mkdir dist
cp src/index.html dist/
deno bundle -c tsconfig.bundle.json src/index.tsx dist/bundle.js

#!bin/bash

rm -rf dist
mkdir dist
cp src/index.html dist/
deno bundle -c tsconfig.bundle.json src/index.tsx dist/bundle.js
awk '{ gsub(/file:\/\/\/.*src\/index/, "index", $0); print $0 }' dist/bundle.js >> dist/temp.js
mv dist/temp.js dist/bundle.js

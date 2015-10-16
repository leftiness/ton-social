#!/bin/bash
mkdir -p ./dist
touch ./dist/app.css
lessc ./app/app.less ./dist/app.css

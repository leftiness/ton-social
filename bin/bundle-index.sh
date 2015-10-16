#!/bin/bash
mkdir -p ./dist
touch ./dist/index.html
jade -P ./app/index.jade -o ./dist/

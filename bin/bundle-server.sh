#!/bin/bash
mkdir -p ./dist
touch ./dist/server.js
coffee -o './dist/' -c './server.coffee' 

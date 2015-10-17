#!/bin/bash
mkdir -p ./dist
touch ./dist/main.js
coffee -o './dist/' -c './main.coffee' 

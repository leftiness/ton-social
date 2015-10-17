#!/bin/bash
pm2 stop ./dist/server.js
killall node
taskkill -IM node.exe -F

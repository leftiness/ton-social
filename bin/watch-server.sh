#!/bin/bash
onchange ./server.coffee -- npm run bundle:server && npm restart &

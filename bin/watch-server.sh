#!/bin/bash
onchange ./server.coffee -- npm-run-all bundle:server restart:dev &

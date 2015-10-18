#!/bin/bash
onchange "./src/**/*.coffee" -- npm-run-all bundle:server restart:dev &

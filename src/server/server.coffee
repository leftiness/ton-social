"use strict"

express = require "express"
bodyParser = require "body-parser"
httpProxy = require "http-proxy"

config = require "./config.json"

app = express()
port = process.env.PORT || config.port
proxy = httpProxy.createProxyServer({target: config.hub})
opt =
	root: __dirname

app.use "/api", (req, res, next) ->
	proxy.web req, res

app.use "/assets", express.static "#{__dirname}/assets"
app.use express.static __dirname
app.use bodyParser.json()

app.all "*", (req, res) ->
	res.sendFile "index.html", opt

app.listen (port), ->
	console.log "All systems are go! Port: #{port}"

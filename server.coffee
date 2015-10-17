"use strict"

express = require "express"
app = express()
options =
	root: __dirname
port = process.env.PORT || 5000

app.set "port", port
app.use "/assets", express.static __dirname + "/assets"
app.use express.static __dirname

app.all "/*", (req, res) ->
	res.sendFile "index.html", options

app.listen (app.get "port"), ->
	console.log "All systems are go! Port: " + app.get "port"

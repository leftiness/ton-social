"use strict"

express = require "express"
bodyParser = require "body-parser"

routes = require "./routes/index.js"

app = express()
parserConf =
	extended: true
options =
	root: __dirname
port = process.env.PORT || 5000
router = express.Router()

routes.forEach (route) ->
	router.get route.path, route.fn

app.use "/assets", express.static "#{__dirname}/assets"
app.use express.static __dirname
app.use bodyParser.urlencoded parserConf
app.use bodyParser.json()

app.use "/api", router

app.all "*", (req, res) ->
	res.sendFile "index.html", options

app.listen (port), ->
	console.log "All systems are go! Port: #{port}"

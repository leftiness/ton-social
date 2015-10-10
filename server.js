'use strict';

var express = require('express');
var app = express();
var options = {
	root: __dirname + '/dist/',
}
var port = process.env.OPENSHIFT_NODEJS_PORT || 5000;
var ip = process.env.OPENSHIFT_NODEJS_IP || '127.0.0.1';

app.use('/assets', express.static(__dirname + '/assets'));
app.use(express.static(__dirname + '/dist'));

app.all('/*', function (req, res) {
	res.sendFile('index.html', options);
});

app.listen(port, ip, function () {
	console.log('All systems are go!');
});

'use strict';

var express = require('express');
var app = express();
var options = {
	root: __dirname + '/dist/',
}

app.set('port', (process.env.PORT || 5000));

app.use('/assets', express.static(__dirname + '/assets'));
app.use(express.static(__dirname + '/dist'));

app.all('/*', function (req, res) {
	res.sendFile('index.html', options);
});

app.listen(app.get('port'), function () {
	console.log('All systems are go! Port: ' + app.get('port'));
});

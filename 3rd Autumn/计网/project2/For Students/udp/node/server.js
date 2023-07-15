var PORT = 9876;
var HOST = '0.0.0.0';

var dgram = require('dgram');
var server = dgram.createSocket('udp4');

server.on('message', function (message, remote) {
  var msg = message.toString().toUpperCase();
  var buffer = new Buffer(msg);
  server.send(buffer, 0, buffer.length, remote.port, remote.address);
});

server.bind(PORT, HOST);
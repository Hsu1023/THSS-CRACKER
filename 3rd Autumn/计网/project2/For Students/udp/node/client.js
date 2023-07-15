var PORT = 9876;
var HOST = '127.0.0.1';

var dgram = require('dgram');
var client = dgram.createSocket('udp4');

client.on('message', function (message) {
    console.log(message.toString());
    client.close();
});

process.stdin.resume();
process.stdin.once('data', function (buffer) {
  process.stdin.pause();
  client.send(buffer, 0, buffer.length - 1, PORT, HOST);
});
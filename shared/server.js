// var server = require('net').createServer(function (socket) {
//     console.log('> Connect to this public endpoint with clientB:', socket.remoteAddress + ':' + socket.remotePort);
// }).listen(4434, function (err) {
//    if(err) return console.log(err);
//    console.log('> (server) listening on:', server.address().address + ':' + server.address().port)
//});
const http = require('node:http');

// Create an HTTP server
const server = http.createServer((req, res) => {
    console.log('recebeu o request', {req});
    res.writeHead(200, { 'Content-Type': 'text/plain' });
    res.end('okay');
});
server.listen(1337, '0.0.0.0', () => {
    console.log('start server');
})
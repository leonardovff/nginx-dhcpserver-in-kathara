var c = require('net').createConnection({host : 'PUBLIC_IP_OF_CLIENT_A', port : PUBLIC_PORT_OF_CLIENT_A},function () {
    console.log('> (clientB) connected to clientA!');

    c.on('data', function (data) {
        console.log(data.toString());
    });
});
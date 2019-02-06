const shell = require('shelljs');
const http = require('http');

var server = http.createServer((req, res) => {
    if (req.url == '/update') {
        shell.exec("./service.sh update");
    }
}).listen(80)



/**
 * Created by a1 on 16/11/4.
 */

//用于node.js创建一个web服务器

var http = require('http');
var url = require('url');
var fs = require('fs');

http.createServer(function (request, response) {
    var urlObj = url.parse(request.url);
    console.log(urlObj);

    var pathname = urlObj.pathname;
    var query = urlObj.query;

    if (pathname === '/') {
        readFileAndResponse('/view/index.html', response);
    } else if (pathname === '/ajax') {
        response.end(' { "msg":"this is message" } ');
    } else {
        readFileAndResponse(pathname, response);
    }

}).listen(8081);

function readFileAndResponse(pathname,response) {
    fs.readFile(pathname.substr(1), 'utf-8', function (err, data) {
        if (err) {
            response.writeHead(404);
            response.end('file not found');
        } else {
            response.end(data);
        }
    });
}

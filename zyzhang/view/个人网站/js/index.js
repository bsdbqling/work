/**
 * Created by a1 on 16/11/13.
 */

var http = require('http');
var querystring = require('querystring');
var url = require('url');

var dbConnect = require('./model/dbConnect');

http.createServer(function (request, response) {
    if (request.url !== "/favicon.ico") {
        //
        var params;
        request.on('data', function (data) {
            //使用querystring模块中的parse方法将字符串转化为对象
            params = querystring.parse(decodeURIComponent(data));
            console.log(data.toString());
        });

        request.on('end', function () {
            console.log('客户端请求数据已全部接收完毕');
            connect(params, request, response);
        });
    }
}).listen(1337);

console.log('Server  running  at  http://127.0.0.1:1337/');

function connect(params, request, response) {
    var client = dbConnect.connect();

    var pathname = url.parse(request.url).pathname;

    if (pathname == '/getdata') {
        callback = getRecall(request, response);
        dbConnect.selectblog(client, response, callback);
    }

    if (pathname == '/insertdata') {
        callback = getRecall(request, response);
        dbConnect.insertblog(client, params, callback);
    }

    if (pathname == '/login') {
        //使用Access-Control-Allow-Origin解决跨域问题
        response.setHeader('Access-Control-Allow-Origin', '*');
        function callback(data) {
            if (data.length > 0) {
                console.log("登录：" + data[0].userPassword.toString());
                if (data[0].userPassword.toString() === params.password.toString()) {
                    console.log("login成功");
                    response.end();
                } else {
                    console.log("失败");
                    response.writeHead(404, {"Content-Type": "text/plain"});
                    response.end();
                }
            } else {
                console.log("失败");
                response.writeHead(404, {"Content-Type": "text/plain"});
                response.end();
            }
        }

        dbConnect.selectFun(client, params.username, callback);
    }

    if (pathname == '/register') {
        console.log("register");
        //使用Access-Control-Allow-Origin解决跨域问题
        response.setHeader('Access-Control-Allow-Origin', '*');
        function callback(data) {
            console.log("注册");
            if (data !== null) {
                if (data.affectedRows === 1) {
                    console.log("register成功");
                    response.end();
                } else {
                    response.writeHead(404, {"Content-Type": "text/plain"});
                    response.end();
                }
            } else {
                response.writeHead(404, {"Content-Type": "text/plain"});
                response.end();
            }
        }

        dbConnect.insertFun(client, params.username, params.password, callback);
    }
}

function getRecall(req, res) {
    //使用Access-Control-Allow-Origin解决跨域问题
    res.setHeader('Access-Control-Allow-Origin', '*');
    //返回JSON数据
    res.writeHead(200, {'Content-Type': 'application/json'});

    function callback(data) {
        console.log("getrecall:" + data);
        // res.write(data);
        res.end('');//不写则没有http协议尾
    }

    return callback;
}
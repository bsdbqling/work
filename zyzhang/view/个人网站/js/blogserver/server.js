/**
 * Created by a1 on 16/11/7.
 */

var http = require('http');
var querystring = require('querystring');
var mysql = require('mysql');
var url = require('url');


//服务器端接收数据
var server = http.createServer(function (request, response) {
    if (request.url !== 'favicon.ico') {
        var params;
        request.on('data', function (data) {
            //使用querystring模块中的parse方法将字符串转化为对象
            params = querystring.parse(decodeURIComponent(data));
            // console.log(data.toString());
        });

        request.on('end', function () {
            console.log('客户端请求数据已全部接收完毕');
            connect(params, request, response);
        });

        //使用Access-Control-Allow-Origin解决跨域问题
        response.setHeader('Access-Control-Allow-Origin', '*');
        //返回JSON数据
        response.writeHead(200, {'Content-Type': 'application/json'});
        // response.end(JSON.stringify({status: 1}));

    }
}).listen(1337, '127.0.0.1');

server.on('error', function (e) {
    if (e.code == 'EADDRINUSE') {
        console.log('服务器地址及端口已被占用');
    }
});

//设置服务器超时时间为1分钟
server.setTimeout(60 * 1000, function (socket) {
    console.log('服务器超时');
    console.log(socket);
})
server.on('close', function () {
    console.log('服务器已关闭');
})

//连接数据库
function connect(params, request, response) {
    var connection = mysql.createConnection({
        host: '123.57.209.45',
        port: 3306,
        database: 'blog',
        user: 'root',
        password: 'ah11chuxing'
    });

    connection.connect(function (err) {
        if (err) {
            console.log('与mysql数据库建立连接失败');
        } else {
            console.log('与mysql数据库建立连接成功');

            var f = url.parse(request.url).pathname;
            console.log(f);

            if (f == '/getdata') {
                //查询
                connection.query('select * from tb_blog', function (err, rows, fields) {
                    if (err) {
                        console.log('查询失败');
                    } else {
                        var bloginfo = new Array();
                        for (var i = 0, usr; usr = rows[i++];) {
                            bloginfo.push(usr);
                            // console.log("===>" + usr.content);
                        }
                        connection.end();

                        response.end(JSON.stringify(bloginfo));
                    }
                });
            } else if (f == '/insertdata') {
                //插入
                connection.query('insert into tb_blog set ?', {
                    title: params.title,
                    content: params.content
                }, function (err, result) {
                    if (err) {
                        console.log('插入数据失败');
                    } else {
                        console.log('插入数据成功');
                        connection.end();
                    }
                });
            }
        }
    });

}


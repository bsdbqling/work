/**
 * Created by a1 on 16/11/13.
 */

var fs = require('fs');

var url = require('url');

var querystring = require('querystring');  //post需导入

function readFile(path,recall) {

    fs.readFile(path, function (err, data) {
        if (err) {
            console.log(err);
            recall('文件不存在');
        } else {
            console.log(data.toString());
            recall(data);
        }
    });
    console.log("异步方法执行完毕");

}

module.exports = {

    login: function (req, res) {
        var post = '';//定义了一个post变量，用于暂存请求体的信息
        req.on('data', function (chunk) {//通过req的data事件监听函数，每当接受到请求体的数据，就累加到post变量中
            post += chunk;
        });
        //-------注意异步-------------
        req.on('end', function () {
            post = querystring.parse(post);
            arr = ['email', 'pwd']
            function recall(data) {
                dataStr = data.toString();
                for (var i = 0; i < arr.length; i++) {
                    re = new RegExp('{' + arr[i] + '}', 'g');//正则 如 '/{email}/g'
                    console.log('re:' + re);
                    dataStr = dataStr.replace(re, post[arr[i]]);
                }
                res.write(dataStr);
                res.end();
            }

            readFile('./login.html', recall);
        });
    },
    register: function (req,res) {
        //TODO
        console.log("-----------register------------");
        // res.writeHead(404);
        res.writeHead(201);
        res.end('file not found');
    }
}
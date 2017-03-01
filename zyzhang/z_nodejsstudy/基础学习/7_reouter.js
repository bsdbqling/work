/**
 * Created by a1 on 16/11/11.
 */
var optfile = require('./7_optfile');
var url = require('url');

var querystring = require('querystring');  //post需导入

function getRecall(req, res) {
    res.writeHead(200, {'Content-Type': 'text/html;charset=utf-8'});
    function recall(data) {
        res.write(data);
        res.end('');//不写则没有http协议尾
    }

    return recall;
}

module.exports = {
    login: function (req, res) {
        //--------get方式接收参数--------------------
        /** var rdata = url.parse(req.url, true).query;
         console.log(rdata);
         if (rdata['email'] != undefined) {
            console.log(rdata['email']);
        }*/

            //-------post方式接收参数----------------
        var post = '';//定义了一个post变量，用于暂存请求体的信息
        req.on('data', function (chunk) {//通过req的data事件监听函数，每当接受到请求体的数据，就累加到post变量中
            post += chunk;
        });
        //-------注意异步-------------
        req.on('end', function () {
            post = querystring.parse(post);
            // console.log('email:' + post['email'] + '\n');
            // console.log('pwd:' + post['pwd'] + '\n');
            arr = ['email','pwd']
            function recall(data) {
                dataStr = data.toString();
                for (var i=0;i<arr.length;i++){
                    re = new RegExp('{'+arr[i]+'}','g');//正则 如 '/{email}/g'
                    console.log('re:'+re);
                    dataStr = dataStr.replace(re,post[arr[i]]);
                }
                res.write(dataStr);
                res.end();

            }
            optfile.readfile('./view/login.html', recall);
        })

        //
        // recall = getRecall(req, res);
        // optfile.readfile('./view/login.html', recall);
        // // optfile.readfileSync('./view/login.html',recall);
    },
    register: function (req, res) {

    }
}
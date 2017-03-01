/**
 * Created by a1 on 16/11/8.
 */

var http = require('http');

// var User = require('./2_model_user');

var Teacher = require('./2_model_teacher');

http.createServer(function (request, response) {
    response.writeHead(200, {'Content-Type': 'text/html;charset=utf-8'});
    if (request.url !== "/favicon.ico") {        //清除第2此访问
        teacher = new Teacher(1, '李四', 30);
        teacher.enter();//父类方法
        teacher.teach(response);//
        response.end('');
    }
}).listen(8000);
console.log('Server        running        at        http://127.0.0.1:8000/');
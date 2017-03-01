/**
 * Created by a1 on 16/11/9.
 */

var express = require('express');
var app = express();

// 设定views变量，意为视图存放的目录
app.set('views', __dirname);
// 修改模板文件的后缀名为html
app.set('view engine', 'html');
// 运行ejs模块
app.engine('.html', require('ejs').__express);

var bodyParser = require('body-parser');
var multer = require('multer');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
app.use(multer());

app.get('/', function (req, res) {
    console.log("index:" + req.path);
    res.render('index');
});

app.get('/login', function (req, res) {
    res.render('login');
});

app.get('/home', function (req, res) {
    res.render('home');
});

app.post('/login', function (req, res) {
    //使用Access-Control-Allow-Origin解决跨域问题
    res.setHeader('Access-Control-Allow-Origin', '*');

    var user = {
        username: 'admin',
        password: 'admin'
    }
    if (req.body.username == user.username && req.body.password == user.password) {
        res.send(200);
        console.log('成功');
    } else {
        // res.send(404);
        console.log('失败');
        // res.redirect("home");
    }
});

app.listen(8081);
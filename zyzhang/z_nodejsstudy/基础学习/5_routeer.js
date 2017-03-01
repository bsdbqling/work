/**
 * Created by a1 on 16/11/8.
 */

var optfile = require('./4_optfile');

function getRecall(req, res) {
    res.writeHead(200, {'Content-Type': 'text/html;    charset=utf-8'});
    function recall(data) {
        res.write(data);
        res.end('');//不写则没有http协议尾
    }

    return recall;
}


module.exports = {

    login: function (req, res) {
        recall = getRecall(req, res);
        optfile.readfile('./view/login.html', recall);
    },
    register: function (req, res) {
        recall = getRecall(req, res);
        optfile.readfile('./view/register.html', recall);
    },
    writefile: function (req, res) {
        recall = getRecall(req, res);
        optfile.writefile('./view/one.txt', '今天阳光灿烂', recall);
    },
    showImg: function (req, res) {
        res.writeHead(200, {'Content-Type': 'image/jpeg'});
        optfile.readImg('./img/icon.jpeg', res);
    }
}
/**
 * Created by a1 on 16/11/11.
 */

var fs = require('fs');

module.exports = {
    readfile: function (path, callback) {
        //异步执行
        fs.readFile(path, function (err, data) {
            if (err) {
                console.log(err);
                callback('文件不存在');
            } else {
                // console.log(data.toString());
                callback(data);
            }
        });
        console.log("异步方法执行完毕");
    },
    readfileSync: function (path, callback) {
        //同步执行
        fs.readFile(path, function (err, data) {
            if (err) {
                console.log(err);
                callback('文件不存在');
            } else {
                // console.log(data.toString());
                callback(data);
            }
        });
        console.log("同步方法执行完毕");
    }
}
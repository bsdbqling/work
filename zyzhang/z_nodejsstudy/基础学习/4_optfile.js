/**
 * Created by a1 on 16/11/8.
 */
var fs = require('fs');
module.exports = {
    readImg: function (path, res) {
        fs.readFile(path, 'binary', function (err, file) {
            if (err) {
                return;
            } else {
                res.write(file, 'binary');
                res.end();
            }
        })
    },
    readfile: function (path,recall) { //异步执行
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
    },
    writefile: function (path, data,recall) {//异步方式
        fs.writeFile(path, data, function (err) {
            if (err) {
                throw  err;
            }
            console.log('It\'s  saved!'); //文件被保存
            recall("写入文件成功");
        });
    },

}
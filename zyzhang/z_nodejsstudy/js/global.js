/**
 * Created by a1 on 16/11/3.
 */

console.log("dirname:"+__dirname);

console.log("filename"+__filename);

console.time('test');
for (var i = 0; i<100000;i++){}
console.timeEnd('test');

// process.stdout.write("stdout");
// process.stderr.write("stderr");

// process.stdin.setEncoding('utf-8');
// process.stdin.on('data',function (data) {
//    console.log(data);
// });

//和上面效果一样。
// process.stdin.on('readable',function () {
//    var data = process.stdin.read();
//     console.log(data);
// });

console.log("process.cwd():"+process.cwd());

console.log(process.argv);

var fs = require('fs');
//异步读取
// fs.readFile('sum.js',function (err,data) {
//     if(err){
//         return console.error(err);
//     }
//     console.log("异步读取："+data.toString());
// });

//同步读取
// var data = fs.readFileSync('sum.js');
// console.log("同步读取："+data.toString());
// console.log("程序执行完毕：");

var path = require('path');
var s = path.parse("zyzhang/aaa/aa.txt");
console.log(s);
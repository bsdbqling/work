/**
 * Created by a1 on 16/11/12.
 */

var events = require("events");
var http = require('http');
function UserBean() {
    this.eventEmit = new events.EventEmitter();//事件发生器
    this.zhuce = function (req, res) {
        console.log("注册");
        //下面两句用于测试（正常下req会带有次参数）
        req['uname'] = "aa";
        req['pwd'] = "bb";
        this.eventEmit.emit('zhuceSuc', 'aa', 'bb');  //抛出事件消息
    }

    this.login = function (req, res) {
        console.log("登录");
        res.write("用户名:" + req['uname']);
        res.write("密码:" + req['pwd']);
        res.write("登录");
    }
}

module.exports = UserBean;
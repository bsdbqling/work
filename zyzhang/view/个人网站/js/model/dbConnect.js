/**
 * Created by a1 on 16/11/9.
 * 连接mysql
 */

var mysql = require('mysql');

//创建一个connection
function connectServer() {

    var client = mysql.createConnection({
        host: '123.57.209.45',
        port: 3306,
        database: 'blog',
        user: 'root',
        password: 'ah11chuxing'
    });
    return client;
}

/**
 * 用户登录
 * @param client
 * @param username
 * @param callback
 */
function selectFun(client, username, callback) {
    //client为一个mysql连接对象
    client.query('select userPassword from tb_user where userName="' + username + '"', function (err, results, fields) {
        if (err) throw err;

        callback(results);
    });
}

/**
 * 用户注册
 * @param client
 * @param username
 * @param password
 * @param callback
 */
function insertFun(client, username, password, callback) {
    // var sql = "insert into tb_user (userName,userPassword) values(";
    // sql += "'" + username + "','" + password + "')";
    // console.log("sql--->" + sql);
    client.query('insert into tb_user (userName,userPassword) values(?,?)', [username, password], function (err, result) {
        if (err) {
            console.log("error:" + err.message);
            return err;
        }
        callback(result);
    });
}

/**
 * 插入博客信息
 * @param client
 * @param params
 * @param callback
 */
function insertblogFun(client, params, callback) {
    client.query('insert into tb_blog set ?', {
        title: params.title,
        content: params.content
    }, function (err, result) {
        if (err) {
            console.log('插入数据失败');
        } else {
            console.log('插入数据成功');
            client.end();
        }
        callback(result);
    });
}

function selectblogFun(client, response, callback) {
    client.query('select * from tb_blog', function (err, rows, fields) {
        if (err) {
            console.log('查询失败');
        } else {
            var bloginfo = new Array();
            for (var i = 0, usr; usr = rows[i++];) {
                bloginfo.push(usr);
                // console.log("===>" + usr.content);
            }
            client.end();

            response.end(JSON.stringify(bloginfo));
        }
        callback(bloginfo);
    });
}

exports.connect = connectServer;
exports.selectFun = selectFun;
exports.insertFun = insertFun;
exports.insertblog = insertblogFun;
exports.selectblog = selectblogFun;
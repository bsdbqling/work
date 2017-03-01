/**
 * Created by a1 on 16/11/12.
 */

//连接池连接mysql 安装：npm install -g node-mysql

var mysql = require('mysql');

function OutPool() {
    this.flag = true;
    this.pool = mysql.createPool({
        host: '123.57.209.45',
        port: 3306,
        database: 'blog',
        user: 'root',
        password: 'ah11chuxing'
    });

    this.getPool = function () {
        if (this.flag) {
            //监听connection事件
            this.pool.on('connection', function (connection) {
                connection.query('SET SESSION auto_increment_increment=1');
                this.flag = false;
            });
        }
        return this.pool;
    }
};

module.exports = OutPool;
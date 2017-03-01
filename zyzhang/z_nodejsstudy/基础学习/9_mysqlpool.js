/**
 * Created by a1 on 16/11/12.
 */

var OutPool = require('./9_outpopl_model');

var outPool = new OutPool();
var pool = outPool.getPool();

//从连接池中获取一个连接
pool.getConnection(function (err, conn) {
    //----插入
    var userAddSql = 'insert into tb_user (userName,userPassword) values(?,?)';
    var param = ['ccc', 'cccccc'];

    conn.query(userAddSql, param, function (err, rs) {
        if (err) {
            console.log('insert err:', err.message);
            return;
        }
        console.log('insert success');
        //conn.release(); //放回连接池
    })

    //查询
    conn.query('SELECT * from tb_user', function (err, rs) {
        if (err) {
            console.log('[query] - :' + err);
            return;
        }
        for (var i = 0; i < rs.length; i++) {
            console.log("查询结果："+rs[i].userName);
        }
        conn.release(); //放回连接池
    });
});
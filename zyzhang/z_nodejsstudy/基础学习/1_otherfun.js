/**
 * Created by a1 on 16/11/8.
 */

//支持多个函数
module.exports = {
    fun2: function (res) {
        console.log("fun2");
        res.write('你好，我说fun2');
    },
    fun3: function (res) {
        console.log("fun3");
        res.write('你好，我说fun3');
    }
}

// function fun2(res) {
//     console.log("fun2");
//     res.write('你好，我说fun2');
// }
//
// module.exports= fun2; //只支持一个函数
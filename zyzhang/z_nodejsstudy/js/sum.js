/**
 * Created by a1 on 16/11/3.
 */

function sum() {
    var sum = 0;
    for (var i = 1; i <= 100; i++) {
        sum += i;
    }

    return sum;
}
//将属性暴露出去 给调用者调用
exports.sum = sum;
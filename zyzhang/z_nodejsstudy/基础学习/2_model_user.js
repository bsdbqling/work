/**
 * Created by a1 on 16/11/8.
 */

function User(id, name, age) {
    this.id = id;
    this.name = name;
    this.age = age;
    this.enter = function () {
        console.log("进入图书馆");
    }
}
module.exports = User;

/**
 * Created by a1 on 16/11/8.
 */

var User = require('./2_model_user');
function Teacher(id, name, age) {
    User.apply(this, [id, name, age]);
    this.teach = function (res) {
        res.write(this.name + "老师讲课");
    }
}
module.exports = Teacher;
/**
 * Created by a1 on 16/11/11.
 */

var async = require('async');

function exec() {
    async.parallel({
        one: function (done) {
            ii = 0;
            setInterval(function () {
                console.log("aaa=" + new Date());
                ii++;
                if (ii === 3) {
                    clearInterval(this);
                    done(null, 'one完毕');
                }
            }, 1000);
        },
        two: function (done) {
            jj = 0;
            setInterval(function () {
                console.log("bbb=" + new Date());
                jj++;
                if (jj === 3) {
                    clearInterval(this);
                    done(null, 'two完毕');
                }
            }, 1000);
        }
    }, function (err, rs) {
        console.log(err);
        console.log(rs);
    });
}

exec();
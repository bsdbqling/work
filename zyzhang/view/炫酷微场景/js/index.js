/**
 * Created by a1 on 16/11/22.
 */
//播放动画
var loader = {

    //canvas 宽高
    width: 100,
    height: 100,
    stepsPerFram: 1, //速度
    trailLength: 1, //展示得程度
    pointDistance: 0.05, //完成一圈所用得步数 公式 步数＝1/0.05
    strokeColor: '#ff2e82',
    fps: 20, //帧数 值越高越流畅

    setup: function () {
        this._.lineWidth = 4; //绘制圆形宽度
    },
    step: function (point, index) {  //index这个函数会时刻刷新，point圆弧外层得左边点
        // index指20个步骤中随机生成0到1之间得值，且最后一个值是1
        var cx = 50,
            cy = 50,
            _ = this._,
            angle = (Math.PI / 180) * (point.progress * 360),
            innerRadius = index === 1 ? 10 : 25;

        _.beginPath();

        _.moveTo(point.x, point.y); //起始点
        _.lineTo((Math.cos(angle) * innerRadius) + cx,
            (Math.sin(angle) * innerRadius) + cy); //结束点

        _.closePath();
        _.stroke();
    },
    path: [
        ['arc', 50, 50, 40, 0, 360] //表示运动轨迹
    ]

};

var sonic = new Sonic(loader);
sonic.play();

//自动生成一个canvas 放到loading中
$('.loading').append(sonic.canvas);

window.onload = function () {
    //loading动画消失 进入首频
    $('.loading').hide();

    $('.wp').show();

    $('.wp-inner').fullpage();
}
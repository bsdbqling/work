$(function () {
    // 绑定事件
    bindEvent();
    //定位
    getPosition();
    // 获取微信用户信息
    // getWxUserInfo();
});

/*content高度*/
function initSize() {
    var height = $(window).height() - $("header").height() - $("#description").height() - $("#menu").height();
    $("#content").height(height + "px");
}

/**
 * 绑定事件
 */
function bindEvent() {
    //添加图片
    $("div .subMenu>img").each(function () {
        var name = $(this).attr("data-imgname");
        var src = url_project + "/zyzhang/img/bottommenu/" + name + ".png"
        //设置img的属性和值。
        $(this).attr("src", src);
    });

    //点击事件
    $("div .subMenu").click(function () {
        //content根据点击按钮加载不同的html
        var page = $(this).attr("data-src");
        if (page) {
            $("#content").load(url_project + "/zyzhang/view/Charger/" + page);
            // 取消当前激活状态
            var $img = $(".active>img");
            //返回被选元素的属性值
            var name = $img.attr("data-imgname");
            var src = url_project + "/zyzhang/img/bottommenu/" + name + ".png";
            $img.attr("src", src);
            $(".active").removeClass("active");

            // 添加新状态
            $(this).addClass("active");
            //找到所有 div(subMenu) 的子元素(img)
            $img = $(this).children("img");
            name = $img.attr("data-imgname");
            src = url_project + "/zyzhang/img/bottommenu/" + name + "_active.png";
            //设置img的属性和值。
            $img.attr("src", src);
        }

    });

    // 自动点击第一个菜单
    $("div .subMenu")[0].click();
}

/**
 * 定位
 */
function getPosition() {
    //定位
    var mapObj = new AMap.Map('map');
    mapObj.plugin('AMap.Geolocation', function () {
        geolocation = new AMap.Geolocation({
            //是否使用高精度定位，默认:true
            enableHighAccuracy: true,
            //超过10秒后停止定位，默认：无穷大
            timeout: 10000
        });
        geolocation.getCurrentPosition();
        AMap.event.addListener(geolocation, 'complete', onComplete); //返回定位信息
        AMap.event.addListener(geolocation, 'error', onError); //返回定位出错信息
    });
}

/**
 * 定位成功
 * @param data
 */
function onComplete(data) {
    $("#content").html("定位成功：" + data.position.getLat() + "," + data.position.getLng());
    var latlng = data.position.getLat() + ',' + data.position.getLng();
    $.ajax({
        type: "post",
        url: url_wechat + "/interface/getWebsiteByLatlng.do",
        data: {
            latlng: latlng
        },
        dataType: 'json',
        success: function (resp) {
            if (resp.code == wechatCode.CODE_FAIL) {
                $("#content").html("暂无网点信息");
            } else {
                resp = resp.dataList;
                generateHtml(resp);
            }
        }
    });
}

/**
 * 网点列表生成html
 * @param {Object} websiteLst
 */
function generateHtml(websiteLst) {
    var html = '';
    for (var i = 0; i < websiteLst.length; i++) {
        var website = websiteLst[i];
        html += '<div id=" ' + website.webId + ' " class="row bottomBorder" > <div id="info" class="col-xs-12"><div class="col-xs-9"> ';
        html += ' <address><img class="img_16" src=" ' + url_project + '/zyzhang/img/charger/here.png " />';
        html += ' <span id="address"> ' + website.name + '</span></address>' +
            '<div class="count">空闲  <span id="available">' + website.freeCount + '</span>  |  <span id="total">' + website.totalCount + '</span></div></div>';
        var distance = website.distance > 1000 ? Number.parseFloat(website.distance / 1000).toFixed(2) + 'km' : Number.parseFloat(website.distance).toFixed(2) + 'm';
        html += '<div class="col-xs-3 text-center"><p id="distance">' + distance + '</p><p id="route"><img class="img_24" src="' + url_project + '/zyzhang/img/charger/go.png"/></p></div>';
        html += '<div data-id=" ' + website.webId + ' " style="margin-top: -20px" class="text-center col-xs-12" ><img class="img_16" src="' + url_project + '/zyzhang/img/charger/down3.png" /></div>';
        html += '</div></div>';
    }
    $("#content").html(html);
}

/**
 * 定位失败
 * @param {Object} data
 */
function onError(data) {
    $("#content").html("定位失败");
}

/**
 * 获取微信用户信息
 */
function getWxUserInfo() {
    var code = getParameter("code");
    $.ajax({
        url: url_interface + "/wechat/getWxUserInfo.do",
        type: "post",
        data: {
            code: code,
            type: 0
        },
        dataType: 'json',
        success: function (resp) {
            if (resp.code == sysCode.CODE_FAIL) {
                alert("获取信息出错，请重试！");
            } else {
                var openid = resp.dataList.openid;
                setCookie("openid", openid);
            }
        }
    });
}

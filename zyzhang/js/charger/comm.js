// 项目地址
var url_project = "http://localhost/web_test";
// var url_project = "http://192.168.1.10/web_test";
//后台服务地址
var url_server = "http://123.57.209.45:8080";
// 接口地址（Java接口地址）
var url_interface = url_server + "/ebike/interface";
// wechat地址
var url_wechat = url_server + "/wechat";

/**
 * 获取地址栏参数
 * @param {Object} parameter
 */
function getParameter(parameter) {
    var reg = new RegExp("(^|&)" + parameter + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]);
    return null;
}

function SystemCode() {
    /**
     * 成功
     */
    this.CODE_SUCCESS = "201";
    /**
     * 失败
     */
    this.CODE_FAIL = "-201";
    /**
     * 新用户
     */
    this.CODE_NEWUSER = "100";
}
var sysCode = new SystemCode();

function WechatCode() {
    /**
     * 成功
     */
    this.CODE_SUCCESS = "201";
    /**
     * 失败
     */
    this.CODE_FAIL = "-201";
}
var wechatCode = new WechatCode();

/**
 * 写cookie (自定义时间)
 * @param {Object} name key
 * @param {Object} value value
 * @param {Object} time 时间(默认30天) （s20：20秒； h12：12小时; d30：30天）
 */
function setCookie(name, value, time) {
    if (!time) {
        time = "d30";
    }
    var strsec = getsec(time);
    var exp = new Date();
    exp.setTime(exp.getTime() + strsec * 1);
    document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
}
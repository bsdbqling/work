/**
 * Created by a1 on 16/12/26.
 */
var company = document.getElementById("company");
var name = document.getElementById("name");
var annualbonus = document.getElementById("annualbonus");
var annualbonusmax = document.getElementById("annualbonusmax");

function convertCurrency(currencyDigits) {

    var MAXIMUM_NUMBER = 99999.99;  //最大值
    // 定义转移字符
    var CN_ZERO = "零";
    var CN_ONE = "壹";
    var CN_TWO = "贰";
    var CN_THREE = "叁";
    var CN_FOUR = "肆";
    var CN_FIVE = "伍";
    var CN_SIX = "陆";
    var CN_SEVEN = "柒";
    var CN_EIGHT = "捌";
    var CN_NINE = "玖";
    var CN_TEN = "拾";
    var CN_HUNDRED = "佰";
    var CN_THOUSAND = "仟";
    var CN_TEN_THOUSAND = "万";
    var CN_HUNDRED_MILLION = "亿";
    var CN_DOLLAR = "元";
    var CN_TEN_CENT = "角";
    var CN_CENT = "分";
    var CN_INTEGER = "整";

    // 初始化验证:
    var integral, decimal, outputCharacters, parts;
    var digits, radices, bigRadices, decimals;
    var zeroCount;
    var i, p, d;
    var quotient, modulus;

    // 验证输入字符串是否合法
    if (currencyDigits.toString() == "") {
        alert("还没有输入数字");
        $("#annualbonus").focus();
        return;
    }
//        if (!currencyDigits.match(/[^,.\d]/)) {
    //验证有效的正整数（包含0）
    if (!currencyDigits.match(/^[+]?(\d|[1-9]\d+)$/)) {
        alert("请输入有效数字");
        $("#annualbonus").focus();
        return;
    }

    //判断是否输入有效的数字格式
    var reg = /^((\d{1,3}(,\d{3})*(.((\d{3},)*\d{1,3}))?)|(\d+(.\d+)?))$/;
    if (!reg.test(currencyDigits)) {
        alert("请输入有效格式数字");
        $("#annualbonus").focus();
        return;

    }

    currencyDigits = currencyDigits.replace(/,/g, "");
    currencyDigits = currencyDigits.replace(/^0+/, "");
    //判断输入的数字是否大于定义的数值
    if (Number(currencyDigits) > MAXIMUM_NUMBER) {
        alert("您输入的数字太大了");
        $("#annualbonus").focus();
        return;
    }

    parts = currencyDigits.split(".");
    if (parts.length > 1) {
        integral = parts[0];
        decimal = parts[1];
        decimal = decimal.substr(0, 2);
    }
    else {
        integral = parts[0];
        decimal = "";
    }
    // 实例化字符大写人民币汉字对应的数字
    digits = new Array(CN_ZERO, CN_ONE, CN_TWO, CN_THREE, CN_FOUR, CN_FIVE, CN_SIX, CN_SEVEN, CN_EIGHT, CN_NINE);
    radices = new Array("", CN_TEN, CN_HUNDRED, CN_THOUSAND);
    bigRadices = new Array("", CN_TEN_THOUSAND, CN_HUNDRED_MILLION);
    decimals = new Array(CN_TEN_CENT, CN_CENT);

    outputCharacters = "";
    //大于零处理逻辑
    if (Number(integral) > 0) {
        zeroCount = 0;
        for (i = 0; i < integral.length; i++) {
            p = integral.length - i - 1;
            d = integral.substr(i, 1);
            quotient = p / 4;
            modulus = p % 4;
            if (d == "0") {
                zeroCount++;
            }
            else {
                if (zeroCount > 0) {
                    outputCharacters += digits[0];
                }
                zeroCount = 0;
                outputCharacters += digits[Number(d)] + radices[modulus];
            }
            if (modulus == 0 && zeroCount < 4) {
                outputCharacters += bigRadices[quotient];
            }
        }
        outputCharacters += CN_DOLLAR;
    }
    // 包含小数部分处理逻辑
    if (decimal != "") {
        for (i = 0; i < decimal.length; i++) {
            d = decimal.substr(i, 1);
            if (d != "0") {
                outputCharacters += digits[Number(d)] + decimals[i];
            }
        }
    }
    //确认并返回最终的输出字符串
    if (outputCharacters == "") {
        outputCharacters = CN_ZERO + CN_DOLLAR;
    }
    if (decimal == "") {
        outputCharacters += CN_INTEGER;
    }

    //获取人民币大写
    $("#annualbonusmax").val(outputCharacters);
}
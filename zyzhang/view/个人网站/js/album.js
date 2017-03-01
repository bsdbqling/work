/**
 * Created by a1 on 16/11/23.
 */

$(function () {
    $.ajax({
        url: 'http://123.57.209.45//uploadDemo/get_file.php',
        type: 'GET',
        dataType: 'json',
        success: function (data) {
            console.log(data);
            showImg(data.data);
        },
        error: function () {
            alert('error')
        }
    });

})

// html += '<tr><th>' + '<img src="http://123.57.209.45/uploadDemo ' + s + '" >' + '</th></tr>';
function showImg(data) {
    $tbody = $('tbody');
    html = '<tr>';
    for (var i = 0; i < data.length; i++) {
        console.log(data[i]);
        if (i % 4 == 0) {
            html += '</tr><tr>';
        }
        var s = data[i];
        s1 = s.replace("\\", "\\\\");
        var s2 = s1.substring(s1.lastIndexOf("\\") + 1, s1.length)
        html += '<th>' + '<img src="http://123.57.209.45/uploadDemo' + s + '" onclick="imgclick(\'' + s2 + '\')">' + '</th>';

    }
    html += '</tr>';
    console.log(html);
    $tbody.html(html);
}

/**
 * 删除图片
 * @returns {boolean}
 */
function imgclick(s) {
    if (window.confirm("你确定要删除该图片吗？" + s)) {
        $.ajax({
            url: 'http://123.57.209.45//uploadDemo/del_file.php?file=' + s,
            type: 'GET',
            dataType: 'json',
            success: function (data) {
                console.log(data);
                window.location.reload();
                alert("删除成功");
            },
            error: function (data) {
                console.log(data);
                alert('error');
            }
        });
    }
}

/**
 * 开始上传
 */
function uploadFile() {
    var fileObj = document.getElementById("upload-file").files[0]; // 获取文件对象
    var FileController = "http://123.57.209.45/uploadDemo/upload_file.php"; // 接收上传文件的后台地址

    if (fileObj) {
        // alert(fileObj);
        // FormData 对象
        var form = new FormData();
        form.append("file", fileObj);// 文件对象
        // XMLHttpRequest 对象
        var xhr = new XMLHttpRequest();
        xhr.open("post", FileController, true);
        xhr.onload = function () {
            alert(xhr.responseText);
            window.location.reload();
        };
        xhr.send(form);
    } else {
        alert("未选择文件");
    }
}

//图片上传预览    IE是用了滤镜。
function previewImage(file) {
    var MAXWIDTH = 260;
    var MAXHEIGHT = 180;
    var div = document.getElementById('preview');
    if (file.files && file.files[0]) {
        div.innerHTML = '<img id=imghead>';
        var img = document.getElementById('imghead');
        img.onload = function () {
            var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
            img.width = rect.width;
            img.height = rect.height;
//                 img.style.marginLeft = rect.left+'px';
            img.style.marginTop = rect.top + 'px';
        }
        var reader = new FileReader();
        reader.onload = function (evt) {
            img.src = evt.target.result;
        }
        reader.readAsDataURL(file.files[0]);
    }
    else //兼容IE
    {
        var sFilter = 'filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
        file.select();
        var src = document.selection.createRange().text;
        div.innerHTML = '<img id=imghead>';
        var img = document.getElementById('imghead');
        img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
        var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
        status = ('rect:' + rect.top + ',' + rect.left + ',' + rect.width + ',' + rect.height);
        div.innerHTML = "<div id=divhead style='width:" + rect.width + "px;height:" + rect.height + "px;margin-top:" + rect.top + "px;" + sFilter + src + "\"'></div>";
    }
}
function clacImgZoomParam(maxWidth, maxHeight, width, height) {
    var param = {top: 0, left: 0, width: width, height: height};
    if (width > maxWidth || height > maxHeight) {
        rateWidth = width / maxWidth;
        rateHeight = height / maxHeight;

        if (rateWidth > rateHeight) {
            param.width = maxWidth;
            param.height = Math.round(height / rateWidth);
        } else {
            param.width = Math.round(width / rateHeight);
            param.height = maxHeight;
        }
    }

    param.left = Math.round((maxWidth - param.width) / 2);
    param.top = Math.round((maxHeight - param.height) / 2);
    return param;
}
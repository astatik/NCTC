/**
 * Created by Ubuntu on 11.05.2015.
 */

function getAccessLevels() {
    var uuid = getCookie("uuid");
    $.ajax({
        method: 'POST',
        url: 'api/user/nextAfterSubmit',
        contentType: "text/plain; charset=utf-8",
        data: uuid,
        dataType:'text',
        success: function (data,textStatus,jqXHR ) {
            obj = JSON.parse(data);
            str = "";
            for (var i = 0; i < obj.userAccessLevel.length; i++) {
                str = str + '<a href="' + obj.userAccessLevel[i].level
                    + '.jsp">Login like: '
                    + obj.userAccessLevel[i].level
                    + '</a>' + '<br>';
            }
            document.getElementById("accessLevel").innerHTML = str;
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert(uuid + " Error!");
        }
    })
}

function getCookie(name) {
    var cookie = " " + document.cookie;
    var search = " " + name + "=";
    var setStr = null;
    var offset = 0;
    var end = 0;
    if (cookie.length > 0) {
        offset = cookie.indexOf(search);
        if (offset != -1) {
            offset += search.length;
            end = cookie.indexOf(";", offset)
            if (end == -1) {
                end = cookie.length;
            }
            setStr = unescape(cookie.substring(offset, end));
        }
    }
    return(setStr);
}
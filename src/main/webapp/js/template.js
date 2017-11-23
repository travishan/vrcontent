/*TMODJS:{}*/
!function () {

    function template (filename, content) {
        return (
            /string|function/.test(typeof content)
            ? compile : renderFile
        )(filename, content);
    };


    var cache = template.cache = {};
    var String = this.String;

    function toString (value, type) {

        if (typeof value !== 'string') {

            type = typeof value;
            if (type === 'number') {
                value += '';
            } else if (type === 'function') {
                value = toString(value.call(value));
            } else {
                value = '';
            }
        }

        return value;

    };


    var escapeMap = {
        "<": "&#60;",
        ">": "&#62;",
        '"': "&#34;",
        "'": "&#39;",
        "&": "&#38;"
    };


    function escapeFn (s) {
        return escapeMap[s];
    }


    function escapeHTML (content) {
        return toString(content)
        .replace(/&(?![\w#]+;)|[<>"']/g, escapeFn);
    };


    var isArray = Array.isArray || function(obj) {
        return ({}).toString.call(obj) === '[object Array]';
    };


    function each (data, callback) {
        if (isArray(data)) {
            for (var i = 0, len = data.length; i < len; i++) {
                callback.call(data, data[i], i, data);
            }
        } else {
            for (i in data) {
                callback.call(data, data[i], i);
            }
        }
    };


    function resolve (from, to) {
        var DOUBLE_DOT_RE = /(\/)[^/]+\1\.\.\1/;
        var dirname = ('./' + from).replace(/[^/]+$/, "");
        var filename = dirname + to;
        filename = filename.replace(/\/\.\//g, "/");
        while (filename.match(DOUBLE_DOT_RE)) {
            filename = filename.replace(DOUBLE_DOT_RE, "/");
        }
        return filename;
    };


    var utils = template.utils = {

        $helpers: {},

        $include: function (filename, data, from) {
            filename = resolve(from, filename);
            return renderFile(filename, data);
        },

        $string: toString,

        $escape: escapeHTML,

        $each: each
        
    };


    var helpers = template.helpers = utils.$helpers;


    function renderFile (filename, data) {
        var fn = template.get(filename) || showDebugInfo({
            filename: filename,
            name: 'Render Error',
            message: 'Template not found'
        });
        return data ? fn(data) : fn; 
    };


    function compile (filename, fn) {

        if (typeof fn === 'string') {
            var string = fn;
            fn = function () {
                return new String(string);
            };
        }

        var render = cache[filename] = function (data) {
            try {
                return new fn(data, filename) + '';
            } catch (e) {
                return showDebugInfo(e)();
            }
        };

        render.prototype = fn.prototype = utils;
        render.toString = function () {
            return fn + '';
        };

        return render;
    };


    function showDebugInfo (e) {

        var type = "{Template Error}";
        var message = e.stack || '';

        if (message) {
            // 利用报错堆栈信息
            message = message.split('\n').slice(0,2).join('\n');
        } else {
            // 调试版本，直接给出模板语句行
            for (var name in e) {
                message += "<" + name + ">\n" + e[name] + "\n\n";
            }  
        }

        return function () {
            if (typeof console === "object") {
                console.error(type + "\n\n" + message);
            }
            return type;
        };
    };


    template.get = function (filename) {
        return cache[filename.replace(/^\.\//, '')];
    };


    template.helper = function (name, helper) {
        helpers[name] = helper;
    };


    define(function(){return template;});
    /**
 * auth : iMethod
 * create_at: 15/10/14.
 * desc:
 * note:
 *  1.
 */
template.helper("template", function (id, args) {
    return window.template(id, args);
});


template.helper("log", function (arg) {
    console.log(arg)
});

template.helper("splitJoin", function (arg, split, join) {
    return window.gxb.utils.splitJoin(arg, split, join);
});

template.helper("extend", function (dist, obj) {
    return window.gxb.utils.extend(dist, obj);
});

template.helper("isEmptyArr", function (obj) {
    return window.gxb.utils.isEmptyArr(obj);
});

template.helper("nothing", function (obj) {
    return window.gxb.utils.nothing(obj);
});
/**
 * 2016-06-17 16:12 转化 2016年06月17日 16:12
 */
template.helper("formatDateTime", function (obj) {

    var e_dateTime = obj.split(" "); //空格切  2016-06-17 16:12 ->[2016-06-17 ,16:12]
    var e_year_month_day = e_dateTime[0].split("-");//根据'-' 切 ,2016-06-17 ->[2016,06,17]
    var e_date = e_year_month_day[0]+"年"+e_year_month_day[1]+"月"+e_year_month_day[2]+"日";
    var e_time = e_dateTime[1];
    return   e_date+" "+e_time;
});
template.helper("formatOnlyDate", function (obj) {

    var e_dateTime = obj; //空格切  2016-06-17 16:12 ->[2016-06-17 ,16:12]
    var e_year_month_day = e_dateTime.split("-");//根据'-' 切 ,2016-06-17 ->[2016,06,17]
    var e_date = e_year_month_day[0]+"年"+e_year_month_day[1]+"月"+e_year_month_day[2]+"日";
    return   e_date.trim();
});
template.helper("diffDays", function (obj) {
   var obj = new Date(obj.replace(/-/g, "/"));
    var now = new Date();
    var days = obj.getTime() - now.getTime();
    return  parseInt(days / (1000 * 60 * 60 * 24));
});
template.helper("compareDate", function (obj1,obj2) {
    var obj1 = new Date(obj1.replace(/-/g, "/"));
    var obj2 =new Date(obj2.replace(/-/g, "/"));
    return   obj1.getTime() - obj2.getTime();
});

template.helper("isEmptyStr", function (obj) {
    return window.gxb.utils.isEmptyStr(obj);
});

template.helper("fromCharCode", function (obj) {
    return String.fromCharCode(obj);
});

/**传入时间比 但前时间小 返回 true;
 * true 未过期
 * false 过期
 */
template.helper("expireTime", function (datetime) {
    if(datetime==null){
        return false;
    }
    return new Date().getTime() >= new Date(datetime.replace(new RegExp("-", 'g'), "/")).getTime();
});
/**传入时间与服务器时间对比 返回 true;
 * true 未过期
 * false 过期
 */
template.helper("expireTimeNew", function (datetime,serviceTime) {
    if(datetime==null){
        return false;
    }
    return serviceTime >= new Date(datetime.replace(new RegExp("-", 'g'), "/")).getTime();
});
/*向下取整*/
template.helper("mathScore", function (num) {
    return Math.floor(num);
});
/**毫秒数转换为“2015- 11- 06  14:01:04”
 */
template.helper("changeTime", function (datetime) {
    if(datetime==null){
        return "";
    }
    var date=new Date();
    date.setTime(datetime);
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var day = date.getDate();
    var hour = date.getHours();
    var minute = date.getMinutes();
    var seconds = date.getSeconds();
    if (seconds < 10) {
        seconds = "0" + seconds
    }
    if (minute < 10) {
        minute = "0" + minute
    }
    if (hour < 10) {
        hour = "0" + hour
    }
    return year + "-" + month + "-" + day + "   " + hour + ":" + minute + ":" +seconds;
});
//取文件名后缀
template.helper("stringSuffix", function (str) {
    var d = window.gxb.utils.split(str,'.');
    return d[d.length-1];
});
//取文件名
template.helper("stringName", function (str) {
    var d = window.gxb.utils.split(str,'/');
    return d[d.length-1];
});
template.helper("nowTimeStr", function () {
    return new Date().getTime();
});
template.helper("parseLocalDateTime", function(nS) {
    var date = new Date(nS);
    var seperator1 = "-";
    var seperator2 = ":";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    var hours = date.getHours();
    var min = date.getMinutes();
    var sec = date.getSeconds();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    if (hours >= 0 && hours <= 9) {
        hours = "0" + hours;
    }
    if (min >= 0 && min <= 9) {
        min = "0" + min;
    }
    //if (sec >= 0 && sec <= 9) {
    //    sec = "0" + sec;
    //}
    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
        + " " + hours + seperator2 + min;
        //+ seperator2 + sec;
    return currentdate;
});

template.helper("parseInt", function (str, n) {
    return parseInt(str, n);
});

template.helper("attr", function (name, value) {
    if (!window.gxb.utils.nothing(value)) {
        return name + "=" + value + "";
    }
    return "";
});

template.helper("htmlClean", function (html) {

    html = html.replace(/<style>.+<\/style>/g, '')
    return $("<div></div>").html(html).html();
});

template.helper("getGxbUserId", function () {
    return "";
})

template.helper("def", {
    btnText: "click",
    btnSure: "确定",
    btnSearch: "查询",
    btnCancel: "取消",
    searchInfo: "请输入内容进行查询"
});







    

}()
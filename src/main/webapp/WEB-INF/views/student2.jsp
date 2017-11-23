<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <!-- saved from url=(0059)https://xjtu.class.gaoxiaobang.com/class/2858/announcement# -->
        <html>

        <head>
            <base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>学习管理系统-高校邦</title>

            <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome">

            <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

            <meta equiv="Access-Control-Allow-Origin" content="asiawaypoint.com">
            <link rel="icon" type="image/png" href="https://static-gs.class.gaoxiaobang.com/image/favicon/favicon-32x32.png" sizes="32x32">
            <link rel="icon" type="image/png" href="https://static-gs.class.gaoxiaobang.com/image/favicon/favicon-16x16.png" sizes="16x16">
            <link rel="shortcut icon" type="image/x-icon" href="https://static-gs.class.gaoxiaobang.com/image/favicon/favicon.ico">

            <!--[if lte IE 9]>
    <script type="text/javascript">
        window.location.href = '//www.gaoxiaobang.com/expiration';
    </script>
    <![endif]-->

            <link rel="stylesheet" type="text/css" href="css/gxb.min.css">
            <link rel="stylesheet" type="text/css" href="css/plugin.min.css">




			<script src="http://cdn.static.runoob.com/libs/angular.js/1.4.6/angular.min.js"></script>
            <script src="./教师2_files/hm.js"></script>
            <script src="./教师2_files/lib.min.js" id="seajsnode"></script>
            <script src="./教师2_files/core.min.js"></script>
            <script>
                var version = "170518"
                window.UEDITOR_HOME_URL = "https://xjtu.class.gaoxiaobang.com:443/js/uedit/";
                seajs.config({
                    base: "https://static-gs.class.gaoxiaobang.com/js",

                    map: [
                        ['.js', '.js?v=' + version]
                    ]
                });

                gxb.contextPath = "";
                gxb.user.setUser({
                    userId: '1233428',
                    token: 'null',
                    avatar: 'https://gxbfile-gs.gaoxiaobang.com/uploads/avatar/link/4995ff94707a463cb559e15e67de8c34.png',
                    teach: false
                });
                gxb.user.setTenant({
                    tenantId: '70'
                });

                window.TENANTID = '70';
                window.USERID = '1233428';

                gxb.config.setWangsu({
                    endpoint: "https://oss-cn-beijing.aliyuncs.com",
                    default_bucket_domain: "https://gxb-file.oss-cn-beijing.aliyuncs.com",
                    image_bucket_domain: "https://gxb-image.oss-cn-beijing.aliyuncs.com",
                    video_bucket_domain: "https://gxb-video-input.oss-cn-beijing.aliyuncs.com",
                    default_bucket: "gxb-file",
                    image_bucket: "gxb-image",
                    video_bucket: "gxb-video-input",
                    attachment_bucket: "lcms/attachment/link",
                    default_video_bucket: "lcms/video/file",
                    default_video_srt_bucket: "lcms/video/srt",
                    default_video_cover_bucket: "lcms/video/cover",
                    preview_video_bucket: "gxb-xcsp",
                    preview_video_bucket_prefix: "00000",
                    upload_course_cover_prefix: "uploads/course_image/link",
                    upload_user_avatar_prefix: "uploads/avatar/link",
                    upload_instructor_avatar_prefix: "uploads/instructor_image/link",

                    upload_webcast_img_prefix: "webcast/image",
                    upload_webcast_file_prefix: "webcast/file",
                    webcast_bucket: "gxb-course",
                    webcast_bucket_domain: "https://gxb-course.oss-cn-beijing.aliyuncs.com",

                    upload_practice_img_prefix: "practice/image"

                });

                gxb.config.setPreviewPluginUrl("https://doc.gaoxiaobang.com/view/url");


                gxb.config.setCheatCheckOpts({
                    url: "https://anti-cheat.gaoxiaobang.com"
                });

                gxb.config.setVideoPausePlay({
                    url: "https://stat1.gaoxiaobang.com"
                });

                gxb.config.setExam({
                    webUrl: "https://kaoshixing.gaoxiaobang.com/api/web/"
                });

            </script>
            <script src="./教师2_files/gxb_log.js"></script>
            <script>
                var _hmt = _hmt || [];
                (function() {
                    var hm = document.createElement("script");
                    hm.src = "//hm.baidu.com/hm.js?70e1cfbbfada22958cbc692ac881959f";
                    var s = document.getElementsByTagName("script")[0];
                    s.parentNode.insertBefore(hm, s);
                })();

            </script>
            <script charset="utf-8" async="" src="./教师2_files/nav.js"></script>
            <script charset="utf-8" async="" src="./教师2_files/next.js"></script>
            <script charset="utf-8" async="" src="./教师2_files/announce.js"></script>
            <script charset="utf-8" async="" src="./教师2_files/portal.js"></script>
            <script charset="utf-8" src="chrome-extension://jgphnjokjhjlcnnajmfjlacjnjkhleah/js/btype.js"></script>
            <script charset="utf-8" async="" src="./教师2_files/student_service.js"></script>
            <script charset="utf-8" async="" src="./教师2_files/nav.js(1)"></script>
            <script charset="utf-8" async="" src="./教师2_files/shoot.js"></script>
            <script charset="utf-8" async="" src="./教师2_files/template.js"></script>
            <script charset="utf-8" async="" src="./教师2_files/next.js(1)"></script>
            <script charset="utf-8" async="" src="./教师2_files/info.js"></script>
            <script charset="utf-8" async="" src="./教师2_files/announcement.js"></script>
            <script charset="utf-8" async="" src="./教师2_files/task.js"></script>
            <script charset="utf-8" async="" src="./教师2_files/calendar.js"></script>
            <script charset="utf-8" async="" src="./教师2_files/user_service.js"></script>
            <style id="style-1-cropbar-clipper">
                /* Copyright 2014 Evernote Corporation. All rights reserved. */

                .en-markup-crop-options {
                    top: 18px !important;
                    left: 50% !important;
                    margin-left: -100px !important;
                    width: 200px !important;
                    border: 2px rgba(255, 255, 255, .38) solid !important;
                    border-radius: 4px !important;
                }

                .en-markup-crop-options div div:first-of-type {
                    margin-left: 0px !important;
                }

            </style>
        </head>

        <body>










            <div class="gxb-header" id="gxb-header">
                <div class="gxb-header-content clear-fix">
                    <div class="gxb-header-left" id="leftOld">
                        <div class="gxb-logo">
                            <a href="https://xjtu.class.gaoxiaobang.com/class/2858/announcement#">
                    <img class="logo-img" src="images/mainicon.png" id="header_logo">
                </a>
                        </div>
                        <div class="gxb-nav-content">
                            <a href="javascript:void(0)">首页</a>
                            <a href="javascript:void(0)">商店</a>
                            <a href="javascript:void(0)" class="active">我的群组</a>

                            <a class="helpclass" href="javascript:void(0)">帮助中心</a>

                        </div>
                    </div>

                    <div class="gxb-header-left" id="leftNew" style="display: none">
                        <div class="teacher_top clear-fix">
                            <div class="teacher_top_1">
                                <img class="logo-img" src="images/617C40EC8B5B528F21B1FEB9714C88592B5AA610.png">
                            </div>
                            <div class="teacher_top_2">匠心铸就名师</div>
                        </div>
                    </div>
                    <div class="gxb-header-right">





                        <div class="gxb-user-info" id="gxbUser">
                            <div class="gxb-user-info-img">
                                <img class="linkPage" src="images/4995ff94707a463cb559e15e67de8c34.png">
                                <span class="messageTips" style="display: none;"></span>
                            </div>








                            <span class="text">
                    <span class="user-name linkPage" title="xjtu3115393007" text="UserVo(userId=1233428, userName=xjtu3115393007, name=韩翔辉, type=null, tenantId=, username=xjtu3115393007, gender=null, mobile=13140917139, email=null, groupName=null, avatar_url=https://gxbfile-gs.gaoxiaobang.com/uploads/avatar/link/4995ff94707a463cb559e15e67de8c34.png, confirmStatus=20, roleUserList=null, maxViewTime=null, learnStatus=null, schoolDepartment=null, major=null, schoolClass=null, no=null, studentList=null, openId=null, userCenterUserId=1233428)"> ${user.userName}</span>
                            <i class="gxb-icon-header"></i>
                            <i class="gxb-icon-shadow"></i>
                            <ul class="dropdown-nav">


                                <li>
                                    <a href="javascript:void(0)" onclick="logout();">退出</a>
                                </li>
                            </ul>
                            </span>


                        </div>
                    </div>

                </div>
            </div>
            <script>
                $(function() {
                    var $toggle = $("#gxbUser");
                    //判断租户id若为800，加粉笔匠
                    if (70 == '800') {
                        $('#gxb-header').addClass('gxb-header-teachingNew');
                        $('#leftOld').hide();
                        $('#leftNew').show();
                        $('#myCourse').parent().hide();
                    }
                    $(document).click(function(event) {
                        if (!$toggle.is(event.target) && ($toggle.has(event.target).length == 0)) {
                            $(".text").removeClass("open");
                        }
                    });

                    var goHome = function() {
                        gotoCMS("/")
                    };

                    var goProfile = function() {
                        gotoCMS("/#/user/user_home")
                    };

                    var goAdmin = function() {
                        gotoCMS("/#/mgrentry")
                    };

                    var goCourse = function() {
                        gotoCMS("/#/courses")
                    };

                    var goHelper = function() {
                        gotoCMS("/#/helper")
                    };

                    $('.linkPage').click(function() {
                        if (gxb.user.getZygjTenantId() == gxb.user.getTenantId()) {
                            gotoCMS('/#/user/my_course');
                        } else {
                            gotoCMS("/#/user/user_home")
                        }
                    });

                    var goBI = function() {
                        var host = (window.location.origin || (window.location.protocol + "//" + window.location.host)).split(".");
                        var biRootSege = [];
                        biRootSege.push(host.slice(0, 1));
                        biRootSege.push("dashboard");
                        return biRootSege.join(".") + "." + host.slice(1, host.length).join(".") + "/dashboard"
                    }


                    var $menuItems = $(".gxb-nav-content a");

                    $($menuItems.eq(0)).on("click", goHome);

                    $($menuItems.eq(1)).on("click", goCourse);

                    $($menuItems.eq(2)).on("click", goProfile);

                    //        $($menuItems.eq(3)).on("click", goAdmin);

                    $(".helpclass").on("click", goHelper);

                    $("#header_logo").on("click", goHome);

                    $("#myCourse").on("click", goProfile);

                    if (!($(".gxb-user-info-img img").attr("src"))) {
                        $(".gxb-user-info-img img").addClass("gxb-course-avatar");
                    } else {
                        $(".gxb-user-info-img img").removeClass("gxb-course-avatar");
                    };

                    $('.Admin').click(function() {

                        var moduleId = 2;


                        switch (moduleId) {
                            case 0:

                                {
                                    window.location.href = '/class';
                                    break;
                                }
                            case 1:
                                {
                                    window.location.href = '/class';
                                    break;
                                }
                            case 2:
                                {
                                    if (gxb.user.getZygjTenantId() == gxb.user.getTenantId()) {
                                        gotoCMS('/#/user/my_course');
                                    } else {
                                        gotoCMS("/#/user/user_home")
                                    }
                                    break;
                                }
                            case 3:
                                {
                                    window.location.href = goBI() + "/#/school/schoolview";
                                    break;
                                }
                            case 4:
                                {
                                    gotoCMS("/console");
                                    break;
                                }
                            case 5:
                                {
                                    window.location.href = '/course';
                                    break;
                                }
                        }

                    });

                })
                var _currentTime = 1502088489679

                /**
                 * 获取是否有选课信息
                 */
                $.ajax({
                    type: "get",
                    url: window.location.origin + '/selectiveInfo/tenant/user/api',
                    dateType: 'json',
                    contentType: 'application/json',
                    success: function(res) {
                        if (res && res.length > 0) {
                            var time = null;
                            for (var i = 0; i < res.length; i++) {
                                if (!res[i].selectiveStatus) { //未选课
                                    var dateTime = new Date(res[i].endAt)
                                    time = {
                                        year: dateTime.getFullYear(),
                                        month: dateTime.getMonth() + 1,
                                        day: dateTime.getDate(),
                                        hour: dateTime.getHours(),
                                        minute: dateTime.getMinutes()
                                    }
                                    break;
                                }
                            }

                            function addSelectBtn_() {
                                addSelectBtn(time)
                            }
                            setTimeout(addSelectBtn_, 2000)
                        }
                    }
                })
                //添加选课图标 并绑定事件
                function addSelectBtn(time) {
                    //选课事件
                    var homeUrl = window.location.origin
                    homeUrl = homeUrl.replace(".class", "");
                    var selectCourse = function() {
                        $("#iframe_treesea").remove();
                        var frame = document.createElement("iframe");
                        var casurl = 'https://cas.gaoxiaobang.com/login?tenant_id=' + '70' + '&service=';
                        frame.id = "iframe_treesea";
                        frame.src = casurl + homeUrl + "/iframe#/selectcourse?_source_=" + window.location.origin;
                        frame.style.display = "block";
                        frame.style.height = "100%";
                        frame.style.width = "100%";
                        frame.style.zIndex = "999";
                        frame.style.position = "fixed";
                        frame.style.top = "0";
                        document.body.appendChild(frame);
                    };
                    //创建图标
                    var iElement = document.createElement("span");
                    iElement.className = 'gxb-icon-selectCourse'
                    //        iElement.innerHTML='选课'
                    var aElement = document.createElement("a");
                    aElement.href = "javascript:void(0)";
                    aElement.className = "selectcourse_";
                    aElement.id = "selectcourse";
                    aElement.onclick = selectCourse;
                    aElement.appendChild(iElement);
                    var dialogQQ = document.getElementsByClassName('dialogQQ')[0]
                    dialogQQ.insertBefore(aElement, dialogQQ.childNodes[0])
                    if (time) { //有选课 没有选的时候
                        var bigger1 = document.createElement("span");
                        var bigger2 = document.createElement("span");
                        bigger1.className = 'bigger1'
                        bigger2.className = 'bigger2'
                        aElement.appendChild(bigger1);
                        aElement.appendChild(bigger2);
                        var tips = document.createElement("div");
                        tips.innerHTML = '<dl >' +
                            '<dd class="title_">选课开放</dd>' +
                            '<dd class="time_">' + time.year + '年' + time.month + '月' + time.day + '日' + time.hour + ':' + time.minute + '截止，不要错过哦！</dd>' +
                            '</dl>' +
                            '<em class="close_"></em>';

                        tips.className = 'tips move'
                        tips.id = 'select_tips'
                        tips.lastChild.onclick = function() {
                            tips.className += '  hide'
                            tips.parentNode.removeChild(tips);
                        }
                        dialogQQ.appendChild(tips)
                    }
                    // 事件监听
                    var eventMethod = window.addEventListener ? "addEventListener" : "attachEvent";
                    var eventer = window[eventMethod];
                    var messageEvent = eventMethod == "attachEvent" ? "onmessage" : "message";
                    eventer(messageEvent, function(e) {
                        // Check if origin is proper
                        if (e.origin != homeUrl) {
                            return
                        }
                        if (e.data.close) {
                            $("#iframe_treesea").remove();
                        }
                        if (e.data.url) {
                            // gotoCMS(e.data.url);
                            window.open(homeUrl + e.data.url)
                        }
                    }, false);
                }

            </script>










            <input type="hidden" id="module_name" value="announcement">
            <div class="gxb-body gxb-ltcr clear-fix" style="min-height: 691px;">










                <div class="gxb-left clear-fix">
                    <div class="classInfo newClassInfo">
                        <div class="class-name">
                            <div class="class-name-inner">
                                ${group.groupName}
                            </div>
                        </div>

                        <span class="class-time gxb-hide">
            开课时间:2017-11-25 08:00
        </span>
                    </div>










                    <div class="menu-wrap" id="stuMenu">
                        <div class="course-nav course-nav-margin">
                            <ul class="nav nav-margin">
                                <li menu_id="1" class="active"> <i class="icon icon-course"></i> <a href="javascript:navTo(1)" class="deleteLeft"> 公告 </a> </li>
                                <li menu_id="11" class=""> <i class="icon icon-result"></i> <a href="javascript:navTo(11)" class="deleteLeft"> 成员列表 </a> </li>
                                <li menu_id="2" class=""> <i class="icon icon-chapter"></i> <a href="javascript:navTo(2)" class="deleteLeft"> 群组动态 </a> </li>
                                <li menu_id="3" class=""> <i class="icon icon-quiz"></i> <a href="javascript:navTo(3)" class="deleteLeft"> 讨论区 </a> </li>
                                <li menu_id="9" class=""> <i class="icon icon-emax"></i> <a href="javascript:navTo(9)" class="deleteLeft"> 群库存 </a> </li>
                                <li menu_id="5" class=""> <i class="icon icon-emax"></i> <a href="javascript:navTo(5)" class="deleteLeft"> 设置群组 </a> </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <script>
                    var menuList = [{
                            menuId: 1,
                            icon: "icon icon-course",
                            menuText: "课程公告",
                            menuUrl: "javascript:navTo(1)",
                            moduleName: "announcement"
                        }, {
                            menuId: 11,
                            icon: "icon icon-result",
                            menuText: "成绩分析",
                            menuUrl: "javascript:navTo(11)",
                            moduleName: "scoreAnalysis"
                        },
                        // {
                        //        menuId: 6,
                        //        icon:"icon-badge",
                        //        menuText: "评分标准",
                        //        menuUrl: "javascript:navTo(6)",
                        //        moduleName: "score"
                        //    },
                        {
                            menuId: 2,
                            icon: "icon icon-chapter",
                            menuText: "章节目录",
                            menuUrl: "javascript:navTo(2)",
                            moduleName: "unit"
                        }, {
                            menuId: 3,
                            icon: "icon icon-quiz",
                            menuText: "测验",
                            menuUrl: "javascript:navTo(3)",
                            moduleName: "quiz"
                        }, {
                            menuId: 4,
                            icon: "icon icon-assignment",
                            menuText: "作业",
                            menuUrl: "javascript:navTo(4)",
                            moduleName: "assignment"
                        }, {
                            menuId: 9,
                            icon: "icon icon-emax",
                            menuText: "考试",
                            menuUrl: "javascript:navTo(9)",
                            moduleName: "exam"
                        }, {
                            menuId: 5,
                            icon: "icon-radius",
                            menuText: "讨论区",
                            menuUrl: "javascript:navTo(5)",
                            moduleName: "topic"
                        }, {
                            menuId: 10,
                            icon: "icon-radius",
                            menuText: "错题本",
                            menuUrl: "javascript:navTo(10)",
                            moduleName: "wrong"
                        }, {
                            menuId: 8,
                            icon: "icon-radius",
                            menuText: "拓展内容",
                            menuUrl: "javascript:navTo(8)",
                            moduleName: "activity"
                        }
                        //        {
                        //        menuId: 7,
                        //        icon:"icon-question",
                        //        menuText: "帮助中心",
                        //        menuUrl: "javascript:navTo(7)",
                        //        moduleName: "help"
                        //    }
                    ];

                    seajs.use(["controller/student/nav"], function(ctrl) {
                        $(function() {
                            var moduleName = $("#module_name").val();
                            ctrl.initMenu('stuMenu', menuList, moduleName);


                            ctrl.scrollLeft(".gxb-left");
                            //滚动出现回顶部按钮
                            $(window).scroll(function() {
                                var scrollTop = $(this).scrollTop();
                                if ($(window).scrollTop() > 0) {
                                    $goTop = "<div class='gxb-icon-goTop' style='position:fixed;bottom:0;cursor:pointer;'></div>";

                                    if ($(".gxb-icon-goTop").length == 0) {
                                        $(".gxb-right").append($goTop);
                                    }
                                    var $left = $(".gxb-right").width() + $(".gxb-right").position().left + parseInt($(".gxb-right").css("margin-left"));
                                    $(".gxb-icon-goTop").css("left", $left + 10);

                                    var topValue = $(".gxb-footer").position().top - 40 - $(window).height();
                                    if (scrollTop >= topValue) {
                                        $(".gxb-icon-goTop").css("bottom", scrollTop - topValue);
                                    }
                                    $(".gxb-icon-goTop").click(function() {

                                        //$("body").scrollTop(0);
                                        $("body").stop().animate({
                                            "scrollTop": 0
                                        }, "slow");
                                    })
                                } else {
                                    $(".gxb-icon-goTop").remove();
                                }

                            })
                        });
                    });

                    var navTo = function(id) {
                        switch (id) {
                            case 1:
                                window.location.href = "/class/2858/announcement";
                                break;
                            case 2:
                                window.location.href = "/class/2858/unit";
                                break;
                            case 3:
                                window.location.href = "/class/2858/quiz";
                                break;
                            case 4:
                                window.location.href = "/class/2858/assignment";
                                break;
                            case 5:
                                window.location.href = "/class/2858/topic";
                                break;
                            case 6:
                                window.location.href = "/class/2858/score";
                                break;
                            case 7:
                                window.location.href = "/class/2858/help";
                                break;
                            case 8:
                                window.location.href = "/class/2858/activity";
                                break;
                            case 9:
                                window.location.href = "/class/2858/exam";
                                break;
                            case 10:
                                window.location.href = "/class/2858/wrong";
                                break;
                            case 11:
                                window.location.href = "/class/2858/scoreAnalysis";
                                break;
                        }
                    }

                </script>
                <div class="gxb-right">


                    <div class="gxb-next" id="lastSchedule" style="padding: 0; height: auto;">
                        <div class="new-top"> <span class="gxb-label"> 最近学习 </span> <span class="gxb-info" title="作业：简单选择排序_取最小值"> 化学实验：酒精灯的使用 </span> <a id="learn-next" class="gxb-btn gxb-btn-menu " unit_id="20146" context_id="161538" context_type="chapter" school_id="69" class_id="2858" redirect_uri="/classes/2858#/assignments/161538/view" cansubmitquiz="0" submissionid="1920988" href="javascript:void(0)"> 继续学习 </a> </div>
                        <div class="next-progress"> </div>
                    </div>




                    <script>
                        seajs.use(["controller/student/next"], function(ctrl) {
                            $(function() {
                                ctrl.buildNext('lastSchedule', 'classCruxTimeDiv', '2858');
                            });
                        });

                    </script>
                    <div class="gxb-bottom">










                        <div class="gxb-content">
                            <div class="unit-announcement" style="display: none">
                                <div>
                                    <p>关于成绩考核的重要提醒！</p> <a> 本课程于<span class="announcement-startAt">2015年11月25 08:00日</span>开课， 将于<span class="announcement-concludeAt">2016年02月29 23:59日</span>结课， 请同学在此期间进行课程学习，逾期后的学习将不计入成绩。</a> </div>
                            </div>
                            <div class="announcements-list" id="announceList">
                                <div class="announcement-unit">
                                    <h2><em class="gxb-read-status gxb-hide">未读</em><span>VR内容体验通告</span></h2>
                                    <div class="update-time">发布日期：2017-11-14 18:34</div>
                                    <div class="announcement-content">
                                        <p>&nbsp; &nbsp; &nbsp; 本学期新购入多个VR内容，同学们可以通过下载客户端进行体验。</p> <br> </div>
                                </div>
                                <div class="announcement-unit">
                                    <h2><em class="gxb-read-status gxb-hide">未读</em><span>二、辅导答疑方式</span></h2>
                                    <div class="update-time">发布日期：2017-11-14 16:25</div>
                                    <div class="announcement-content open">
                                        <p>1. 在线答疑：平台讨论区</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp; 在线问答路径：在讨论区提出问题；</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp; 在线答疑时间：10:00-18:00</p>
                                        <p>&nbsp;</p>
                                        <p>2. 邮件答疑：</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp; 邮箱地址：clli@uniquedu.com</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp; 邮件答疑时间：10:00-18:00</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp; 应答时间段：10:00-18:00发邮件，30分钟内回复，非工作时间24小时内回复</p>
                                        <p>&nbsp;</p>
                                        <p>3.电话答疑：</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp; 专线电话：010-58472957</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp; 电话答疑时间段：10:00-18:00</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp; 应答时间段：10:00-18:00电话即时解答</p>
                                        <p>&nbsp;</p>
                                        <p>备注：此课程节假日不提供辅导答疑，以上只针对工作日。</p> <br> </div> <i class="open-close-status open-close open"></i> </div>
                                <div class="announcement-unit">
                                    <h2><em class="gxb-read-status gxb-hide">未读</em><span>一、学前必读</span></h2>
                                    <div class="update-time">发布日期：2015-11-23 16:25</div>
                                    <div class="announcement-content">
                                        <p>大家好，我是《编程算法基础》课程的导学老师。该课程将于11月25日（周三）上午8点为大家准时开课，课程的截止时间是1月22日（周五）。在学习过程中同学们除了要观看每一章课程视频外，还需要注意每一章下方需要大家完成的作业（讨论、作业、测验统称为作业），大家要知道提交作业的截止时间，不要错过，错过的话系统将不再接收，这部分的成绩将会为0。以上是大家学习此门课程需要注意的地方，祝大家取得好成绩；<br></p> <br> </div> <i class="open-close-status open-close"></i> </div>
                                <div class="announcement-unit">
                                    <h2><em class="gxb-read-status gxb-hide">未读</em><span>致所有加入该课程的同学</span></h2>
                                    <div class="update-time">发布日期：2015-11-23 14:06</div>
                                    <div class="announcement-content">
                                        <p>亲爱的同学们,你们好!</p>
                                        <p style="text-indent:2em">从今天开始，我们将和您一起开始《编程算法基础【西安交大-XJ15Y1班】》的课程学习了，我们将带您感受《编程算法基础【西安交大-XJ15Y1班】》的美丽，进《编程算法基础【西安交大-XJ15Y1班】》领域的殿堂。
                                        </p>
                                        <p>课程简介:</p>
                                        <p style="text-indent:2em"> 《编程算法基础》课程通过循序渐进的方式剖析各种常见编程任务的求解思路和基本算法，使初学者快速地学习到常见逻辑、算法的运作原理，掌握基本编程技巧，为后续课程学习打下坚实基础。 本课程通过大量示范，在启发思维、开拓视野的同时，有意识地去逐渐综合运用多种算法和设计理念，为初学者开辟一条通往较熟练编程的具体道路。

                                        </p>
                                        <p>注意事项:</p>
                                        <p style="text-indent:2em">该课程以网络MOOC形式进行授课、包括视频、作业、讨论、测验等教学环节，学员应本人独立完成教学内容，严禁抄袭、他人代答等行为。
                                        </p>
                                        <p>欢迎您的加入,祝学习进步</p>
                                        <p>《编程算法基础【西安交大-XJ15Y1班】》教学团队</p> <br> </div> <i class="open-close-status open-close"></i> </div>
                            </div>
                        </div>
                        <script>
                            var announceList = [{
                                "editorId": "",
                                "contextType": "Course",
                                "contextId": "2858",
                                "detail": "<p>&nbsp; &nbsp; &nbsp; 考虑到本门课程作业量很大，特将作业截止时间延长至2016年2月29日，未在截止日期完整的作业部分将按零处理，请同学们按时完成任务。</p>",
                                "id": "918",
                                "position": "",
                                "time": "2016-01-14 18:34",
                                "permalink": "",
                                "title": "作业延迟工作",
                                "userId": "1173690",
                                "status": ""
                            }, {
                                "editorId": "",
                                "contextType": "Course",
                                "contextId": "2858",
                                "detail": "<p>1. 在线答疑：平台讨论区</p><p>&nbsp;&nbsp;&nbsp;&nbsp; 在线问答路径：在讨论区提出问题；</p><p>&nbsp;&nbsp;&nbsp;&nbsp; 在线答疑时间：10:00-18:00</p><p>&nbsp;</p><p>2. 邮件答疑：</p><p>&nbsp;&nbsp;&nbsp;&nbsp; 邮箱地址：clli@uniquedu.com</p><p>&nbsp;&nbsp;&nbsp;&nbsp; 邮件答疑时间：10:00-18:00</p><p>&nbsp;&nbsp;&nbsp;&nbsp; 应答时间段：10:00-18:00发邮件，30分钟内回复，非工作时间24小时内回复</p><p>&nbsp;</p><p>3.电话答疑：</p><p>&nbsp;&nbsp;&nbsp;&nbsp; 专线电话：010-58472957</p><p>&nbsp;&nbsp;&nbsp;&nbsp; 电话答疑时间段：10:00-18:00</p><p>&nbsp;&nbsp;&nbsp;&nbsp; 应答时间段：10:00-18:00电话即时解答</p><p>&nbsp;</p><p>备注：此课程节假日不提供辅导答疑，以上只针对工作日。</p>",
                                "id": "615",
                                "position": "",
                                "time": "2015-11-23 16:25",
                                "permalink": "",
                                "title": "二、辅导答疑方式",
                                "userId": "1173690",
                                "status": ""
                            }, {
                                "editorId": "",
                                "contextType": "Course",
                                "contextId": "2858",
                                "detail": "<p>大家好，我是《编程算法基础》课程的导学老师。该课程将于11月25日（周三）上午8点为大家准时开课，课程的截止时间是1月22日（周五）。在学习过程中同学们除了要观看每一章课程视频外，还需要注意每一章下方需要大家完成的作业（讨论、作业、测验统称为作业），大家要知道提交作业的截止时间，不要错过，错过的话系统将不再接收，这部分的成绩将会为0。以上是大家学习此门课程需要注意的地方，祝大家取得好成绩；<br></p>",
                                "id": "614",
                                "position": "",
                                "time": "2015-11-23 16:25",
                                "permalink": "",
                                "title": "一、学前必读",
                                "userId": "1173690",
                                "status": ""
                            }, {
                                "contextType": "Course",
                                "contextId": "2858",
                                "detail": "<p>亲爱的同学们,你们好!</p><p style=\"text-indent:2em\">从今天开始，我们将和您一起开始《编程算法基础【西安交大-XJ15Y1班】》的课程学习了，我们将带您感受《编程算法基础【西安交大-XJ15Y1班】》的美丽，进《编程算法基础【西安交大-XJ15Y1班】》领域的殿堂。\n</p><p>课程简介:</p><p style=\"text-indent:2em\"> 《编程算法基础》课程通过循序渐进的方式剖析各种常见编程任务的求解思路和基本算法，使初学者快速地学习到常见逻辑、算法的运作原理，掌握基本编程技巧，为后续课程学习打下坚实基础。\r\n\r\n       本课程通过大量示范，在启发思维、开拓视野的同时，有意识地去逐渐综合运用多种算法和设计理念，为初学者开辟一条通往较熟练编程的具体道路。</p><p>注意事项:</p><p style=\"text-indent:2em\">该课程以网络MOOC形式进行授课、包括视频、作业、讨论、测验等教学环节，学员应本人独立完成教学内容，严禁抄袭、他人代答等行为。\n</p><p>欢迎您的加入,祝学习进步</p><p>《编程算法基础【西安交大-XJ15Y1班】》教学团队</p>",
                                "time": "2015-11-23 14:06",
                                "title": "致所有加入该课程的同学"
                            }];
                            var classinfo = {
                                "classId": "2858",
                                "concludeAt": "2016-02-29 23:59",
                                "className": "编程算法基础【西安交大-XJ15Y1班】",
                                "teachMode": "10",
                                "type": "Class",
                                "startAt": "2015-11-25 08:00"
                            };

                            seajs.use(["controller/student/announce"], function(ctrl) {
                                $(function() {
                                    ctrl.buildAnnouncement('unit-announcement', classinfo);
                                    ctrl.buildAnnounce('announceList', announceList);

                                });
                            });

                        </script>



                        <div class="gxb-sidebar" style="margin-top: 20px;">
                            <div class="gxb-sidebar-list expiring">
                                <h3>即将到期<a href="https://xjtu.class.gaoxiaobang.com/class/2858/task">查看全部任务</a></h3>
                                <ul id="expiring">
                                    <div class="no-expire-task">
                                        <div class="gxb-noTask"></div>
                                    </div>
                                </ul>
                            </div>
                            <div class="gxb-sidebar-list expired">
                                <h3>过期任务</h3>
                                <ul id="expired">
                                    <div class="no-expire-task">
                                        <div class="gxb-noTask"></div>
                                    </div>
                                </ul>
                            </div>


                        </div>

                        <script>
                            var expiredList = [];

                            var expiringList = [];


                            seajs.use(["controller/student/announce"], function(ctrl) {
                                $(function() {
                                    ctrl.buildExpiring('expiring', '2858', expiringList);
                                    ctrl.buildExpired('expired', '2858', expiredList);
                                });
                            });

                        </script>
                    </div>

                </div>
            </div>



            <div class="gxb-footer" id="gxb-footerBox">
                <div class="gxb-footer-inner">
                    <div class="footer-logo-wrapper">
                        <a href="javascript:void(0)">
        <img src="images/617C40EC8B5B528F21B1FEB9714C88592B5AA610.png" id="footer_logo">
      </a>
                    </div>
                    <div class="footer-link">
                        <a href="javascript:void(0)" id="aboutus">关于我们</a>
                        <a href="javascript:void(0)" id="getMobile">下载移动端</a>
                    </div>
                    <div class="copyright">
                        Powered by 高校邦
                    </div>
                </div>
            </div>
            <script>
                $(function() {
                    //判断租户id若为800，加粉笔匠
                    if (70 == '800') {
                        $('#gxb-footerBox').addClass('gxb-footer-teachingNew');

                    }
                })
                seajs.use(["controller/common/portal"], function(portalCtl) {
                    portalCtl.footer()
                })

            </script>
            <script src="./教师2_files/ui.min.js"></script>
            <script src="./教师2_files/config.min.js"></script>
            <input type="hidden" value="1233428" id="getUserIdMessage">
            <div class="dialogQQ">
                <a href="javascript:;" onclick="loadQQ();">
        <i class="gxb-icon-toService1"></i>
        <div class="gxb-icon-toService" hidden="hidden"></div>
    </a>
                <a href="https://www.gaoxiaobang.com/getmobile.html" target="_blank" class="getMobile">
        <i class="gxb-icon-toPhone"></i>
    </a>
                <a href="javascript:void(0)" class="getMobile" id="helpCenter">
        <i class="gxb-icon-toProblem"></i>
    </a>
            </div>
            <div class="dialogBottom">
                <a href="javascript:;" onclick="toTop()">
        <i class="gxb-icon-toTop" style="display: none"></i>
    </a>
            </div>
            <script>
                $(function() {
                    if (typeof formhandler != "undefined") {
                        $(".dialogQQ").hide();
                        $(".dialogBottom").hide();
                    }
                    window.setInterval(function() {
                        gxb._.ajax({
                            url: '/keepalive',
                            type: 'GET'
                        });
                    }, 15 * 60 * 1000);

                    if (gxb.utils.browserUtils.phone) {
                        if (gxb.utils.browserUtils.android) {
                            window.location.href = "//android.myapp.com/myapp/detail.htm?apkName=com.kaikeba.u.student";
                        } else {
                            window.location.href = "https://itunes.apple.com/us/app/gao-xiao-bang-lian-dong-gao/id1042569732?mt=8";
                        }
                    }
                    gxb.resize.push(function template() {
                        var width = $(window).width();
                        if (width < 1200 && $(".gxb-body").css("width") != "960px") {
                            $(".gxb-body", {
                                "width": "960px",
                                "margin": "40px auto"
                            });
                            $(".gxb-body .gxb-right", {
                                width: "720px"
                            });
                            $(".gxb-body .gxb-right .gxb-content", {
                                width: "400px"
                            });
                            $(".gxb-header .gxb-header-content", {
                                width: "960px"
                            });
                            $(".gxb-header .gxb-header-content .gxb-nav-content", {
                                width: "360px"
                            });
                            $(".gxb-header .gxb-header-content .gxb-nav-content a", {
                                width: "89px"
                            });
                            $(".gxb-chapter-layout", {
                                width: "620px"
                            });
                        } else if ($(".gxb-body").css("width") != "1200px") {
                            $(".gxb-body", {
                                "width": "1200px",
                                "margin": "40px auto"
                            });
                            $(".gxb-body .gxb-right", {
                                width: "960px"
                            });
                            $(".gxb-body .gxb-right .gxb-content", {
                                width: "640px"
                            });
                            $(".gxb-header .gxb-header-content", {
                                width: "1200px"
                            });
                            $(".gxb-header .gxb-header-content .gxb-nav-content", {
                                width: "400px"
                            });
                            $(".gxb-header .gxb-header-content .gxb-nav-content a", {
                                width: "119px"
                            });
                            $(".gxb-chapter-layout", {
                                width: "840px"
                            });
                        }
                    });
                    //联系客服hover
                    $('.dialogQQ a').eq(0).hover(function() {
                        $(this).find('i').toggleClass('hover_QQ')
                    });
                    $('.dialogQQ a').eq(1).hover(function() {
                        $(this).find('i').toggleClass('hover_dimension')
                    });

                    $('#helpCenter').click(function() {
                        gotoCMS("/#/helper/gxb");
                    });

                });
                var homeUrl = window.location.protocol + "//" + window.location.hostname + (window.location.port ? (":" + window.location.port) : "");
                var gotoCMS = function(redirectUrl) {
                    homeUrl = homeUrl.replace(".class", "");
                    homeUrl += redirectUrl;
                    window.location.href = 'https://cas.gaoxiaobang.com/login?tenant_id=' + '70' + '&service=' + encodeURIComponent(homeUrl)
                };

                if ($('#getUserIdMessage').val()) {
                    $.ajax({
                        url: homeUrl + '/user_message_center/unread_message_num/api',
                        type: "GET",
                        dateType: 'json',
                        contentType: 'application/json',
                        success: function(res) {
                            if (res.message == 'success') {
                                if (res.data) {
                                    if (res.data == 0) {
                                        $('body').find('.messageTips').hide();
                                    } else if (res.data > 99) {
                                        $('body').find('.messageTips').show().removeClass('one').addClass('two').text('99')
                                    } else if (res.data < 10) {
                                        $('body').find('.messageTips').show().removeClass('two').addClass('one').text(res.data);
                                    } else {
                                        $('body').find('.messageTips').show().removeClass('one').addClass('two').text(res.data);
                                    }
                                } else {
                                    $('body').find('.messageTips').hide();
                                }
                            }
                        }
                    });
                }

                var logout = function() {
                    var onLogout = function() {
                        var prefix = 'https://cas.gaoxiaobang.com/logout?service=';
                        var suffix = 'https://xjtu.gaoxiaobang.com';
                        $("#logoutFrm").remove();
                        var HTML = '<iframe style="display: none" src="#" id="logoutFrm"></iframe>';
                        $(document.body).append($(HTML));
                        $("#logoutFrm").attr("src", prefix + encodeURIComponent(suffix));
                        setTimeout(function() {
                            if (typeof formhandler != "undefined") {
                                formhandler.ResetLogin();
                            } else {
                                window.location.reload();
                            }
                        }, 20);
                    }
                    gxb._.ajax({
                        url: '/logout',
                        type: 'GET',
                        success: function(res) {
                            onLogout();
                        },
                        error: function() {
                            onLogout();
                        }
                    });
                };



                var __QQ__SERVICE_DATA = null;

                var loadQQ = function() {
                    if (__QQ__SERVICE_DATA) {
                        onLoadQQCallback(__QQ__SERVICE_DATA);
                    } else {
                        var queryParameter = "dm=gaoxiaobang.com&cb=onLoadQQCallback&na=4006400770&kfuin=938188265&aty=0&a=0&sid=" + parseInt(Math.random() * 1e8) + "&uid=139677696&url=" + encodeURIComponent(window.location.href) + "&title=" + document.title;
                        $("#getSignQQ").remove();
                        var script = document.createElement("script");
                        script.id = "getSignQQ";
                        script.src = "//www.gaoxiaobang.com/qq/sign/api?" + queryParameter;
                        document.body.appendChild(script);
                    }
                }

                var onLoadQQCallback = function(data) {
                    if (!data) {
                        return;
                    }
                    $("#getSignQQFrame").remove();
                    var frame = document.createElement("iframe");
                    frame.id = "getSignQQFrame";
                    frame.src = data.data.sign || "tencent://message/?Menu=yes&amp;uin=938188265&amp;Service=58&amp;SigT=A7F6FEA02730C988658CC1031D4B6C4A8BC7DABB268B40C94E8F9AA0E2A8ECCC081CA1C22A4288F47069F28EEE4FCB4620A9D47A70C8FDC36D413173D08A270C87A89A6CB0AAB97C697CDA8A56B4CCB2B9C4527F2190D49A57475AB80B0D95A283D8200EB50B0DB18D6829A971577226A1FB1ED5E306D594&amp;SigU=30E5D5233A443AB2EDB2B4132AF9AB0A8C2C7D77CBB1573A4931EEB9AF86301F698ED953FB06511762816C25927BD79B1A31E3A7C5B80564E831BEB27CB99687FC69F4B4FABBD6FA"
                    if (data.data.sign && !__QQ__SERVICE_DATA) {
                        __QQ__SERVICE_DATA = data;
                    }
                    frame.style.display = "none";
                    document.body.appendChild(frame);
                }

                var toTop = function() {
                    var timer = setInterval(function() {
                        var now = scrollTop = document.body.scrollTop || document.documentElement.scrollTop;
                        var speed = (0 - now) / 5;
                        if (scrollTop <= 0) {
                            clearInterval(timer);
                        }
                        document.documentElement.scrollTop = scrollTop + speed;
                        document.body.scrollTop = scrollTop + speed;
                    }, 30);
                }
                $(document, document.body).scroll(function() {
                    var T = scrollTop = document.body.scrollTop || document.documentElement.scrollTop;
                    $('.gxb-icon-toTop').hide();
                    if (T > 0) {
                        $('.gxb-icon-toTop').show();
                    };
                });

            </script>



            <div id="gxb_ui_home"></div>
            <div class="studentBootstrap">
                <div class="bootstrapMain">
                    <p class="bootstrap_close"></p>
                    <p class="bootstrap_know"></p>
                </div>
            </div>
        </body>

        </html>

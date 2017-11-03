define("controller/student/announce",["service/student_service","view/student/announce/info","view/student/unit/announcement","view/student/announce/task","view/student/announce/calendar","template"],function(t,e,n){var i=t("service/student_service"),s=t("view/student/announce/info"),a=t("view/student/announce/task"),o=t("view/student/announce/calendar"),r=t("view/student/unit/announcement");e.buildAnnounce=function(t,e){var n=$("#"+t);n.html(s({announceList:e})),$(".open-close").eq(0).addClass("open").prev(".announcement-content").addClass("open"),$(".open-close").on("click",function(){$(this).toggleClass("open"),$(this).hasClass("open")?$(this).prev(".announcement-content").addClass("open"):$(this).prev(".announcement-content").removeClass("open")})},e.buildAnnouncement=function(t,e){var n=$("."+t);n.empty(),n.html(r({classinfo:e}))},e.buildExpiring=function(t,e,n){var s=$("#"+t);i.queryExpiringTask(e,function(t){s.html(a({taskList:t||n||[]})),$(".expiring .no-expire-task").html("<div class='gxb-noTask'/>")}),s.on("click.Expiring","a",function(t){var n=$(this),i=n.attr("type"),s=n.attr("type_id"),a=n.attr("chapter_id");if("Quiz"==i)location.href=gxb.http.resloveUrl("/class/"+e+"/quiz?chapter_id="+a);else if("Topic"==i){if(void 0==s)return void gxb.tips.error("发生未知错误.");location.href=gxb.http.resloveUrl("/class/"+e+"/topic/"+s)}else"Assignment"==i&&(location.href=gxb.http.resloveUrl("/class/"+e+"/assignment?chapter_id="+a))})},e.buildExpired=function(t,e,n){var s=$("#"+t);i.queryExpiredTask(e,function(t){s.html(a({taskList:t||n||[]})),$(".expired .no-expire-task").html("<div class='gxb-noTask'/>")}),s.on("click.Expired","a",function(t){var n=$(this),i=n.attr("type"),s=n.attr("type_id"),a=n.attr("chapter_id");if("Quiz"==i)location.href=gxb.http.resloveUrl("/class/"+e+"/quiz?chapter_id="+a);else if("Topic"==i){if(void 0==s)return void gxb.tips.error("发生未知错误.");location.href=gxb.http.resloveUrl("/class/"+e+"/topic/"+s)}else"Assignment"==i&&(location.href=gxb.http.resloveUrl("/class/"+e+"/assignment?chapter_id="+a))})},e.buildCalendar=function(t,e,n){var i=$("#"+t);i.html(o({calendarList:n})),$(".sequence-chart li").eq(0).addClass("first"),i.on("click.Calendar","a",function(t){var n=$(this),i=n.attr("type"),s=n.attr("type_id"),a=n.attr("chapter_id");if("Quiz"==i)location.href=gxb.contextPath+"/class/"+e+"/quiz?chapter_id="+a;else if("Topic"==i){if(void 0==s)return void gxb.tips.error("发生未知错误.");location.href=gxb.contextPath+"/class/"+e+"/topic/"+s}else"Assignment"==i&&(location.href=gxb.contextPath+"/class/"+e+"/assignment?chapter_id="+a)})},gxb.controller.student=gxb.controller.student||{},gxb.controller.student.announce=n.exports});
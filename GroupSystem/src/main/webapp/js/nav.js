define("controller/student/nav",["service/student_service","view/student/nav","view/student/shoot","template"],function(t,e,n){var s=t("service/student_service"),i=t("view/student/nav"),o=t("view/student/shoot"),r=gxb.utils;e.initMenu=function(t,e,n){var s=$("#"+t);s.html(i({menuList:e,active:n})),$("body").append(o())},e.scrollLeft=function(t){var e=$(t);gxb.scroll.push("scrollLeft",function(){var t=(r.getLeft(e.get(0)),$(document).scrollTop());t>100?(e.css({position:"fixed",top:"30px"}),$(".gxb-right").css({"margin-left":"240px"})):(e.css({top:"0",position:"relative"}),$(".gxb-right").css({"margin-left":"20px"}))})},e.initClassInfo=function(t,e){var n=$("#"+t);s.queryClass(e,function(t){n.html(i({menuList:menuList}))})},gxb.controller.student=gxb.controller.student||{},gxb.controller.student.nav=n.exports});
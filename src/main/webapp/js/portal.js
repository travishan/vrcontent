define("controller/common/portal",["service/user_service","template"],function(o,n,t){n.footer=function(){$("#aboutus").on("click",function(){gxb._.ajax({type:"GET",url:"/tenant/"+gxb.user.getTenantId()+"/aboutUs/unauthorized",dataType:"json",success:function(o){o?gotoCMS("/#/aboutus"):window.location.href="//www.gaoxiaobang.com/aboutus.html"}})}),$("#getMobile").on("click",function(){window.location.href="//www.gaoxiaobang.com/getmobile.html"}),$("#footer_logo").on("click",function(){gotoCMS("/")}),e(),gxb.resize.push("bodyHeight",e)};var e=function(){var o=$(window).height(),n=o-220;$(".gxb-body").css({"min-height":n+"px"})};gxb.controller.common=gxb.controller.common||{},gxb.controller.common.portal=t.exports});
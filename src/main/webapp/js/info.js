/*TMODJS:{"version":1,"md5":"0c7d28fb0dda88fa6c5b9a00bdc4b0df"}*/
define(function(require){return require('template')('view/student/announce/info', function($data,$filename
/**/) {
'use strict';var $utils=this,$helpers=$utils.$helpers,announceList=$data.announceList,aLength=$data.aLength,toggleClass=$data.toggleClass,i=$data.i,announce=$data.announce,$escape=$utils.$escape,$string=$utils.$string,$out='';
var announceList = announceList || [];
var aLength = announceList.length;
var toggleClass = toggleClass || "";

$out+=' ';

for(var i = 0;i < aLength;i++){
    var announce = announceList[i];

$out+=' <div class="announcement-unit"> <h2><em class="gxb-read-status gxb-hide">未读</em><span>';
$out+=$escape(announce.title);
$out+='</span></h2> <div class="update-time">发布日期：';
$out+=$escape(announce.time);
$out+='</div> <div class="announcement-content"> ';
$out+=$string(announce.detail);
$out+=' <br> </div> ';
if(announce.detail.length >= 100){
$out+=' <i class="open-close-status open-close"></i> ';
}
$out+=' </div> ';

}

return new String($out);
});});
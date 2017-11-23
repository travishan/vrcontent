/*TMODJS:{"version":1,"md5":"4b752720b7634b2aa7c99970a2dffa63"}*/
define(function(require){return require('template')('view/student/announce/calendar', function($data,$filename
/**/) {
'use strict';var $utils=this,$helpers=$utils.$helpers,calendarList=$data.calendarList,cLength=$data.cLength,flag=$data.flag,expiredTime=$data.expiredTime,i=$data.i,calendar=$data.calendar,expireTime=$helpers.expireTime,$escape=$utils.$escape,$string=$utils.$string,$out='';
var calendarList = calendarList || [];
var cLength = calendarList.length;
var flag = 0;
var expiredTime = "";

$out+=' ';

for(var i = 0;i < cLength;i++){
    var calendar = calendarList[i];

$out+=' ';

if(expireTime(calendar.expireTime)){
    flag = i + 1;

$out+=' <li class="expired"> <i class="sequence-no"></i> <h2> <a href="javascript:void(0)" class="gxb-cur-point" chapter_id="';
$out+=$escape( calendar['taskId']);
$out+='" type="';
$out+=$escape( calendar['taskType']);
$out+='" type_id="';
$out+=$escape( calendar['typeId']);
$out+='" > ';
$out+=$escape( calendar.taskName);
$out+=' </a> </h2> <div class="update-time">';
$out+=$escape( calendar.expireTime);
$out+='<br/> <span class="expired">已过期</span> </div> <div class="calendar-content"> ';
$out+=$string( calendar.taskContent);
$out+=' </div> </li> ';

} else if(i != 0 && flag == i || expiredTime == calendar.expireTime){
    expiredTime = calendar.expireTime;

$out+=' <li class="expiring"> <i class="sequence-no"></i> <h2> <a href="javascript:void(0)" chapter_id="';
$out+=$escape( calendar['taskId']);
$out+='" type="';
$out+=$escape( calendar['taskType']);
$out+='" type_id="';
$out+=$escape( calendar['typeId']);
$out+='" >';
$out+=$escape( calendar.taskName);
$out+='</a> </h2> <div class="update-time">';
$out+=$escape( calendar.expireTime);
$out+='<br/> <span class="expiring">即将到期</span> </div> <div class="calendar-content"> ';
$out+=$string( calendar.taskContent);
$out+=' </div> </li> ';
 }  else{ 
$out+=' <li> <i class="sequence-no"></i> <h2> <a href="javascript:void(0)" chapter="';
$out+=$escape( calendar['taskId']);
$out+='" type="';
$out+=$escape( calendar['taskType']);
$out+='" type_id="';
$out+=$escape( calendar['typeId']);
$out+='" >';
$out+=$escape( calendar.taskName);
$out+='</a> </h2> <div class="update-time">';
$out+=$escape( calendar.expireTime);
$out+='<br/> </div> <div class="calendar-content"> ';
$out+=$string( calendar.taskContent);
$out+=' </div> </li> ';

}}

return new String($out);
});});
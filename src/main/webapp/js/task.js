/*TMODJS:{"version":1,"md5":"97a07f8bc583051f4ecb2045da06b81e"}*/
define(function(require){return require('template')('view/student/announce/task', function($data,$filename
/**/) {
'use strict';var $utils=this,$helpers=$utils.$helpers,taskList=$data.taskList,eLength=$data.eLength,i=$data.i,expire=$data.expire,$escape=$utils.$escape,$out='';
var taskList = taskList || [];
var eLength = taskList.length;
if (eLength > 4) {
    eLength = 4;
}

$out+=' ';

if(eLength == 0)

$out+=' <div class="no-expire-task"></div> ';

for(var i = 0;i < eLength;i++){
    var expire = taskList[i];

$out+=' <li> <a href="javascript:void(0)" class="gxb-cur-point" chapter_id="';
$out+=$escape( expire['taskId']);
$out+='" type_id="';
$out+=$escape( expire['typeId']);
$out+='" type="';
$out+=$escape( expire['taskType']);
$out+='" > <h5>';
$out+=$escape( expire.taskName);
$out+='</h5> <i class="update-time">';
$out+=$escape( expire.expireTime);
$out+='</i> </a> </li> ';

}

return new String($out);
});});
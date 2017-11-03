/*TMODJS:{"version":1,"md5":"f5d770386beeafc647a01aafa2f1348e"}*/
define(function(require){return require('template')('view/student/unit/announcement', function($data,$filename
/**/) {
'use strict';var $utils=this,$helpers=$utils.$helpers,classinfo=$data.classinfo,startAt=$data.startAt,formatOnlyDate=$helpers.formatOnlyDate,concludeAt=$data.concludeAt,$escape=$utils.$escape,$out='';
var classinfo = classinfo || [];
var startAt = formatOnlyDate(classinfo.startAt);
var concludeAt = formatOnlyDate(classinfo.concludeAt);

$out+=' <div> <p>关于成绩考核的重要提醒！</p> <a> 本课程于<span class="announcement-startAt">';
$out+=$escape(startAt);
$out+='</span>开课， 将于<span class="announcement-concludeAt">';
$out+=$escape(concludeAt);
$out+='</span>结课， 请同学在此期间进行课程学习，逾期后的学习将不计入成绩。</a> </div> ';
return new String($out);
});});
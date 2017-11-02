<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:
${pageContext.request.serverPort}${pageContext.request.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="js/jquery-1.10.1.js"></script>
<script type="text/javascript">
	$(function() {
		$("#query").click(function () {
			var url = "user/stus";
			var criteriaVal = $("input[name='criteria']").val();
			var gid = $("input[name='groupId']").val();
			var args = {"criteria":criteriaVal,"groupId":gid};

			$.post(url,args,function(data){
				var $table = $("#stus");
				$table.empty();
				$.each(data, function(index,item) {
					var $tr = $("<tr><td><input type='checkbox' name='stuId' value='"+item.id+"'></td><td>"+item.userName+"</td></tr>")
					$table.append($tr);
				});
				if(data != null && data.length != 0 ){
					alert("返回结果部位空")
					$table.append("<tr><td><input type='submit'  value='Submit'></td></tr>");
				}else{
					$table.append("<tr><td>没有符合条件的用户</td></tr>");
				}
			},"JSON");
			
		return false;
		});
	})

</script>
</head>
<body>
	
	<form action="group/deleteStu" method="post">
		<input type="hidden" value="${group.id }" name="groupId">
		<input type="hidden" value="delete" name="_method">
		<table>
			<tr><td>群组名</td><td>${group.groupName }</td></tr>
			<tr><td>群头像</td><td>${group.groupImg }</td></tr>
			<tr><td>群描述</td><td>${group.groupDesc }</td></tr>
			<tr><td>群创建时间</td><td>${group.createTime }</td></tr>
			<tr><td colspan="2">群成员</td></tr>
			
			<c:forEach items="${group.stus}" var="stu">
			<tr>
				<td colspan="2"><input type="checkbox" name="stus" value="${stu.id}" >${stu.userName}</td>
			</tr>
			</c:forEach>
			<tr>
				<td colspan="2"><input type="submit" value="移除"></td>
			</tr>
		</table>
	</form>
	
	
	
	
	<form action="user/stus" method="post">
		请输入要查询的条件:
		<input type="text" name="criteria">
		<a href="stu/all">查询学生</a>
		<input type="submit" id="query"  value="查询学生">
	</form>
		
		
		<!--ajax查询，局部显示  -->
		
	<br><br>
	<form action="group/djq" method="post">
		<input type="hidden" name="groupId" value="${group.id }">
		<table id="stus"></table>
	</form>
</body>
</html>
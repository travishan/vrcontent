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
<script type="text/javascript">
	function getFileUrl(sourceId) {
		var url;
		if (navigator.userAgent.indexOf("MSIE") >= 1) { // IE  
			url = document.getElementById(sourceId).value;
		} else if (navigator.userAgent.indexOf("Firefox") > 0) { // Firefox  
			url = window.URL
					.createObjectURL(document.getElementById(sourceId).files
							.item(0));
		} else if (navigator.userAgent.indexOf("Chrome") > 0) { // Chrome  
			url = window.URL
					.createObjectURL(document.getElementById(sourceId).files
							.item(0));
		}
		return url;
	}
	function preImg(sourceId, targetId) {
		var url = getFileUrl(sourceId);
		var imgPre = document.getElementById(targetId);
		imgPre.src = url;
		console.log(url);
	}
	</script>
</head>
<body>
<form action="group/${group.id}" method="post" enctype="multipart/form-data">
		<input type="hidden" value="put" name="_method">
		<table>
			<tr><td>群组名</td><td><input type="text" value="${group.groupName }" name="groupName"></td></tr>
			<tr><td>群头像</td>
				<td><input type="image" id="sourceId" disabled="disabled" src="images/${group.groupImg }" 
				style="width: 200px;height: 200px;border-radius: 200px">
				</td>
			</tr>
			<tr><td>上传头像</td>
				<td><input type="file" name="groupImg" id="tagetId"
					onchange="preImg(this.id,'sourceId')">
				</td>
			</tr>
			<tr><td>群描述</td><td><input type="text" value="${group.groupDesc }" name="groupDesc"></td></tr>
			<tr><td>群创建时间</td><td><input type="text" value="${group.createTime }" disabled="disabled"></td></tr>
			<tr><td colspan="2">群成员</td></tr>
			
			<c:forEach items="${group.stus}" var="stu">
			<tr>
				<td colspan="2">${stu.userName}</td>
			</tr>
			</c:forEach>
			
		</table>
		<input type="submit" value="保存">
	</form>
</body>
</html>
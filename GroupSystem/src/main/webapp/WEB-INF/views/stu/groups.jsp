<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:
${pageContext.request.serverPort}${pageContext.request.contextPath}/">
<script type="text/javascript" src="js/jquery-1.10.1.js"></script>
</head>
<body>
<center>
		<c:forEach items="${myGroups}" var="group">
			<table>
				<tr><td>群名称</td><td>${group.groupName}</td></tr>
				<tr><td>群头像</td><td><img src="images/${group.groupImg }" style="width: 150px;height: 150px;border-radius: 150px"></td></tr>
				<tr><td>群描述</td><td>${group.groupDesc }</td></tr>
				<tr><td>群管理员</td><td>${group.teacher.userName}</td></tr>
				<tr><td colspan="2">群成员:</td></tr>
				<tr>
					<td colspan="2">
						<div style="width:260px;height:120px; overflow-y:scroll;">
						<c:forEach items="${group.stus }" var="stu">
							${stu.userName}<br>
						</c:forEach>
						</div>
					<td>
				</tr>
			</table><br><br>
		</c:forEach>
</center>
</body>
</html>
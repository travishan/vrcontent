<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:
${pageContext.request.serverPort}${pageContext.request.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h4>Success page</h4>

<!--0:学生 ；1：老师 -->
<c:if test="${sessionScope.user.identity == '1'}">
<a href="group/list">我创建的群组</a><br><br>
<a href="group/create">创建群</a><br><br>
</c:if>


<c:if test="${sessionScope.user.identity == '0'}">
<a href="group/myGroups">我加入的群</a>
</c:if>


</body>
</html>
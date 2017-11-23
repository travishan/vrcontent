<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<center>
	<form action="group/create" method="post" enctype="multipart/form-data">
		<table>
			<tr>
			
			
				<td>群头像<img src="images/default_headimg.png"
					style="width:200px;height: 200px; border-radius: 200px" id="headpic"> 
				</td>
				<td>
					<input type="file" id="headimgbutton" name="groupImg" onchange="preImg(this.id,'headpic');">
				</td>
			</tr>
			<tr>
				<td>群名称</td><td><input type="text" name="groupName"/></td>
			</tr>
			<tr>
				<td>群描述</td><td><input type="text" name="groupDesc"/></td>
			</tr>
			<tr>
				<td>获取指定年级的学生列表</td><td></td>
			</tr>
		</table>
		<input type="submit" value="Submit">
	</form>
	
</center>


</body>
</html>
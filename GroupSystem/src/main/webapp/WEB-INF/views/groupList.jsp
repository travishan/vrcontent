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
<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="static/bootstrap-3.3.7-dist/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
<script src="static/js/jquery-1.12.4.min.js"></script>
<script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script src="static/bootstrap-3.3.7-dist/js/bootstrap-datetimepicker.js"></script>
<script src="static/bootstrap-3.3.7-dist/js/bootstrap-datetimepicker.fr.js"></script>
<script type="text/javascript">
	$(function() {
		$("#task_add_modal_btn").click(function() {
			//点击添加按钮打开模态框,设置模态框属性，点击背景不关闭
			$('#taskAddModal').modal({
				backdrop:'static'
			});
			
			$('.form_date').datetimepicker({
		        language:  'fr',
		        weekStart: 1,
		        todayBtn:  1,
				autoclose: 1,
				todayHighlight: 1,
				startView: 2,
				minView: 2,
				forceParse: 0
		    });
		});
		
		$("#addTaskBtn").click(function() {
			var str = $("#myForm").serialize();
			alert(str);
			 //发送ajax请求添加任务
			$.ajax({
				url:"task",
				type:"POST",
				data:str,
				success:function(result){
					console.log(result);
					$('#taskAddModal').modal('hide');
					location.reload(true);
				}
			}); 
		})
		
	})


</script>

</head>
<body>
<center>
	<table cellpadding="10" cellspacing="0" border="1">
		<thead>
			<tr>
				<td>群名称</td>
				<td>群头像</td>
				<td>群描述</td>
				<td>创建时间</td>
				<td>查看群成员</td>
				<td>群任务
					<button type="button" id="task_add_modal_btn" class="btn btn-primary">
		  					发布任务
					</button>
				</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${groups}" var="group">
			<tr>
				<td>${group.groupName }</td>
				<td><img src="images/${group.groupImg }"
					style="width:200px;height: 200px; border-radius: 200px"></td>
				<td>${group.groupDesc }</td>
				<td>${group.createTime }</td>
				<td>
					<a href="group/stus/${group.id}">查看群成员</a><br><br>
					<a href="group/${group.id}">更新群信息</a>
					
				</td>
				<td>
			
					<%--遍历map --%>
						 <c:forEach items="${groupTasks}" var="mapTask">
							<c:if test="${mapTask.key == group.id}">
								<c:forEach items="${mapTask.value}" var="task">
									<li>${task.taskName}</li>
								</c:forEach>
							</c:if>
						</c:forEach>
					</ul>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</center>





<!-- 发布任务的模态框 -->
<div class="modal fade" id="taskAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog " role="document">
    <div class="modal-content">
      
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">添加任务</h4>
      </div>
      
      
     <div class="modal-body">
		 <form class="form-horizontal" id="myForm">
			  <div class="form-group">
			    <label class="col-sm-2 control-label">任务名称</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="taskName" id="taskNameInput" placeholder="学习Py基础语法">
			    </div>
			  </div>
			  
			   <div class="form-group">
			    <label class="col-sm-2 control-label">任务描述</label>
			    <div class="col-sm-10">
			      <textarea class="form-control" name="taskDesc" id="taskDescInput"></textarea>
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label class="col-sm-2 control-label">开始时间</label>
			   
			    <div class="input-group date form_date col-sm-6"  data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <input class="form-control" name="startTime" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
			  </div>
			  
			   <div class="form-group">
			    <label class="col-sm-2 control-label">结束时间</label>
			   
			    <div class="input-group date form_date col-sm-6" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <input class="form-control" name="endTime" size="16" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
			  </div>
			  

			  
			  <div class="form-group">
			    <label class="col-sm-2 control-label">群组列表</label>
			    <label class="col-sm-10 control-label">&nbsp;</label>
			   		<c:forEach items="${groups}" var="group">
					   <div class="checkbox col-sm-6">
								  <label>
								    <input type="checkbox" name="groupId" id="group_input_checkbox" value="${group.id }" >${group.groupName }
								  </label>
						</div>
			   		</c:forEach>
			  </div>
			 
		</form>
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" id="addTaskBtn">添加</button>
      </div>
      
    </div>
  </div>
</div>

</body>
</html>
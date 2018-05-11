<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ajax.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<script src="js/jquery-1.11.3.min.js"></script>
	<script>
	
	
		$(document).ready(
			function(){
					$("#btnAdd").click(
						function(){
							//参数对象
							var params={
									"person.name":$("#name").val(),
									"person.sex":$("#sex").val(),
									"person.birthday":$("#birthday").val()
							};
							$.ajax({
								type:"post",//提交方式
								url:"person_save.action",//提交地址
								data:params,//参数
								dataType:"json",//返回的数据类型
								async:true,//默认异步
								success:function(data){
									alert(data);//结果处理
								}
							});
						}			
					);
			}		
		);
	</script>

  </head>
  
  <body>
   		<form>
   			<table>
   				<tr>
   					<td>名字</td>
   					<td><input type="text" name="person.name" id="name"/></td>
   				</tr>
   				<tr>
   					<td>性别</td>
   					<td><input type="text" name="person.sex" id="sex"/></td>
   				</tr>
   				<tr>
   					<td>出生日期</td>
   					<td><input type="text" name="person.birthday" id="birthday"/></td>
   				</tr>
   				<tr>
   					<td>操作</td>
   					<td><input type="button" value="录入"  id="btnAdd"/></td>
   				</tr>
   			</table>
   		</form>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="page/resources/layui/esayui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="page/resources/layui/esayui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="page/resources/layui/esayui/demo/demo.css">
<script type="text/javascript" src="page/resources/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="page/resources/layui/esayui/jquery.easyui.min.js"></script>
<style type="text/css">
#form3 {
	border-bottom: 1px solid #000;
	width: 300px;
	height: 300px;
	position: relative;
	left: 300px;
	top: -300px;
}
</style>
  </head>
  
  <body>
         <div class="easyui-panel" style="padding:5px;width: 200px;height:500px;">
		     <ul id="tt" class="easyui-tree"></ul>
	     </div>
	<div id="form3">
		<div style="padding:3px 2px;border-bottom:1px solid #ccc">添加</div>
		<form id="ff" action="form1_proc.php" method="post">
			<table class="form-group">
				<thead>

				</thead>
				<tbody>
					<tr>
						<td>编号</td>
						<td><input type="text" name="cId"
							id="cId"></td>
					</tr>
					<tr>
						<td>编号</td>
						<td><input type="text" name="sId"
							id="sId"></td>
					</tr>
					<tr>
						<td>名称</td>
						<td><input  type="text" name="sName"
							id="sName"></td>
					</tr>
					<tr>
						<td>类型</td>
						<td><input  type="text" name="sType"
							id="sType"></td>
					</tr>
					<tr>
						<td>供应</td>
						<td><input  type="text" name="sGong"
							id="sGong"></td>
					</tr>

				</tbody>
			</table>
		</form>
	</div>
 </body>
</html>
<script type="text/javascript">
 
  $("#tt").tree({
    url:'dept/queryDept',
 }); 

</script>
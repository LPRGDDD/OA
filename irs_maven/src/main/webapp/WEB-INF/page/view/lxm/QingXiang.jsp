<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'WaiXiang.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="page/resources/layui/css/layui.css"
	media="all">
<script src="page/resources/jquery-1.11.3.min.js"></script>
<script src="page/resources/jquery.form.js"></script>
<script src="page/resources/jqueryExt.js"></script>
<script src="page/resources/layui/layui.js"></script>
<script src="page/resources/layui/layui.all.js" charset="utf-8"></script>
<link href="<c:url value="/page/resources/layui/css/layui.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/page/resources/bootstrap/css/bootstrap.min.css" />"
	media="all" rel="stylesheet">
<script src="<c:url value="/page/resources/jquery-1.11.3.min.js" />"
	charset="utf-8"></script>
<script type="text/javascript"
	src="<c:url value="/page/resources/bootstrap/js/bootstrap.min.js" />"></script>
<style type="text/css">
.lxm {
	width: 250px;
}

.yan {
	color: red;
	font-size: 20px;
}
</style>
</head>

<body>
	<table class="layui-table">
		<tr>
			<td>请假原因</td>
			<td>${list.syReason}</td>

		</tr>
		<tr>
			<td>申请时间</td>
			<td>${list.syShen}</td>

		</tr>
		<tr>
			<td>开始日期</td>
			<td>${list.wcTime}</td>

		</tr>
		<tr>
			<td>结束日期</td>
			<td>${list.wcTimeEnd}</td>
		</tr>
		<tr>
			<td>天</td>
			<td>${list.wcTimeOne}</td>
		</tr>
		<tr>
			<td>时</td>
			<td>${list.wcTimeTwo}</td>
		</tr>
		<tr>
			<td>审批人</td>
			<td>${list.shenname}</td>
		</tr>
	</table>
	<div class="layui-form-item">
		<div class="layui-input-block">
			<button class="layui-btn layui-btn-primary" onclick="shuaxin()">关闭</button>
		</div>
	</div>
	<script type="text/javascript">
		function shuaxin(){
			parent.location.reload();
		}
	</script>
</body>
</html>

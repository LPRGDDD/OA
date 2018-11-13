<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'editExam.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="page/resources/zTree_v3/css/demo.css">
<link rel="stylesheet" type="text/css"
	href="page/resources/zTree_v3/css/zTreeStyle/zTreeStyle.css">
<script src="page/resources/jquery-1.11.3.min.js"></script>
<script src="page/resources/bootstrap/js/bootstrap.min.js"></script>
<script src="page/resources/zTree_v3/js/jquery.ztree.all.min.js"></script>
<link rel="stylesheet" href="page/resources/layui/css/layui.css">
<link rel="stylesheet" href="page/resources/bootstrap/css/bootstrap.css">
<script src="page/resources/jquery-1.11.3.min.js"></script>
<script src="page/resources/layui/layui.js"></script>
<script src="page/resources/layui/layui.all.js"></script>
<script src="page/resources/layui/layui.js" charset="utf-8"></script>
<style type="text/css">
 #diver{
    text-align: center;
    position: relative;
    left:200px;
 }

    #dive{
       height:300px;
       width:300px;
       text-align:center;
    }
    
</style>
</head>

<body>
	<form class="layui-form" lay-filter="formTestFilter2121">
	<div class="layui-form-item" id="diver">
	<c:forEach items="${list}" var="c">
	     <table id="dive">
	         <tr>
	            <td>编号</td><td><input type="text" lay-verify="title" autocomplete="off" value="${c.ApId }" class="layui-input"></td>
	         </tr>
	         <tr>
	            <td>申借人</td><td><input type="text" lay-verify="title" autocomplete="off" value="${c.username }" class="layui-input"></td>
	         </tr>
	         <tr>
	            <td>申借状态</td><td><input type="text" lay-verify="title" autocomplete="off" value="${c.ApFlag }" class="layui-input"></td>
	         </tr>
	         <tr>
	            <td>申借物</td><td><input type="text" lay-verify="title" autocomplete="off" value="${c.ApName }" class="layui-input"></td>
	         </tr>
	         <tr>
	            <td>单价</td><td><input type="text" lay-verify="title" autocomplete="off" value="${c.ApPrice }" class="layui-input"></td>
	         </tr>
	         <tr>
	            <td>数量</td><td><input type="text" lay-verify="title" autocomplete="off" value="${c.ApNum }" class="layui-input"></td>
	         </tr>
	         <tr>
	            <td>备注</td><td><input type="text" lay-verify="title" autocomplete="off" value="${c.ApBei }" class="layui-input"></td>
	         </tr>
	         <tr>
	            <td>时间</td><td><input type="text" lay-verify="title" autocomplete="off" value="${c.ApDate }" class="layui-input"></td>
	         </tr>
	     </table>
		</c:forEach>
		</div>
	</form>
</body>
</html>

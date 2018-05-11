<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'queryOrder.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	a:HOVER{
		color:red;
		text-decorationnone;
	}
</style>
  </head>
  
  <body>
  <center>
    <table style="border-collapse: collapse;" border="1px">
    	<tr>
    		<td>订单名称</td>
    		<td>订单地址</td>
    		<td>手机号</td>
    		<td>时间</td>
    		<td>订单状态</td>
    	</tr>
    	<c:forEach items="${olist}" var="o">
    	<tr>
    		<td>${o.ordName}</td>
    		<td>${o.ordAddress}</td>
    		<td>${o.ordPhone}</td>
    		<td>${o.ordDate}</td>
    		<td><a href="order_queryItem.action?o.ordId=${o.ordId}">查看订单详情</a></td>
    		<td><a href="order_get.action?o.ordId=${o.ordId}">修改订单总表</a></td>
    	</tr>
    	</c:forEach>
    </table></center>
  </body>
</html>

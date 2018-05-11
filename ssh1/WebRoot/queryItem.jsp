<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'queryItem.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table>
    	<tr>
    		<td>商品id</td>
    		<td>商品名称</td>
    		<td>销售价格</td>
    		<td>生产日期</td>
    		<td>品牌</td>
    		<td>数量</td>
    	</tr>
    	<c:forEach items="${oilist}" var="oi">
    		<tr>
    		<td>${oi.itemId}</td>
    		<td>${oi.itemName}</td>
    		<td>${oi.itemPrice}</td>
    		<td>${oi.itemDate}</td>
    		<td>${oi.itemBrand}</td>
    		<td>${oi.itemNum}</td>
    		<td><a href="order_getItem.action?oi.itemId=${oi.itemId }">修改</a></td>
    	</tr>
    	</c:forEach>
    </table>
  </body>
</html>

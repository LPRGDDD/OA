<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'get.jsp' starting page</title>
    
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
   	<form action="order_update.action">
   		订单号：<input type="text" name="o.ordId" value="${o.ordId }"/>
   		名称：<input type="text" name="o.ordName" value="${o.ordName }"/>
   		地址：<input type="text" name="o.ordAddress" value="${o.ordAddress }"/>
   		手机号：<input type="text" name="o.ordPhone" value="${o.ordPhone }"/>
   		订单时间：<input type="text" name="o.ordDate" value="${o.ordDate }"/>
   		<input type="submit" value="提交"/>
   	</form>
  </body>
</html>

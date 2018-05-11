<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
    	<c:forEach var="s" items="${p.list}">
    		<p>学号：${s.id}---名字：${s.name}----------班级：${s.sex}</p>
    	</c:forEach>
    	<a href="person_findByPages.action?curPage=${p.firstPage}">首页</a>
    	<a href="person_findByPages.action?curPage=${p.prevPage}">上页</a>
    	<a href="person_findByPages.action?curPage=${p.nextPage}">下页</a>
    	<a href="person_findByPages.action?curPage=${p.lastPage}">尾页</a>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
  	<table>
  		<tr>
  			<td>班级</td>
  			<td>姓名</td>
  			<td>性别</td>
  		</tr>
  		<c:forEach var="s" items="${p.list}">
  		<tr>
  			<td>${s.classes.cid}</td>
  			<td>${s.sname}</td>
  			<td>${s.sgender}</td>
  			<td><a href="#">删除</a></td>
  			<td><a href="#">修改</a></td>
  		</tr>
    </c:forEach>
    	
  	</table>
   	    <a href="stu_findByPage.action?curPage=${p.firstPage}">首页</a>
    	<a href="stu_findByPage.action?curPage=${p.prevPage}">上页</a>
    	<a href="stu_findByPage.action?curPage=${p.nextPage}">下页</a>
    	<a href="stu_findByPage.action?curPage=${p.lastPage}">尾页</a>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
  			<td>姓名</td>
  			<td>性别</td>
  			<td>出生日期</td>
  		</tr>
  		<c:forEach var="pp" items="${list}">
  		<tr>
  			<td>${pp.name}</td>
  			<td>${pp.gender}</td>
  			<td>${pp.birthday}</td>
  			<td><a href="person_del.action?p.id=${pp.id }">删除</a></td>
  			<td><a href="person_get.action?p.id=${pp.id }">修改</a></td>
  		</tr>
    </c:forEach>
  	</table>
  	-------------------------------------------------------------------------------------------
    <form action="person_save.action">
    	名字：<input type="text" name="p.name" /><br>
    	性别：<input type="radio" name="p.gender" value="男" checked="checked"/>男<input type="radio" value="女" name="p.gender"/>女<br>
    	生日：<input type="text" name="p.birthday" /><br>
    	<input type="submit" value="提交" />
    </form>
  </body>
</html>

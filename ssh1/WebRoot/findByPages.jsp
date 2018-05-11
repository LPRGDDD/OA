<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
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
    		<p>学号：${s.id}---名字：${s.name}----------班级：${s.gender}-----生日：${s.birthday}</p>
    	</c:forEach>
    	<form action="person_findByPages">
    	当前页：${p.curPage}/总页数:${p.totalPages}
    	<a href="person_findByPages.action?curPage=${p.firstPage}">首页</a>
    	<a href="person_findByPages.action?curPage=${p.prevPage}">上页</a>
    	<a href="person_findByPages.action?curPage=${p.nextPage}">下页</a>
    	<a href="person_findByPages.action?curPage=${p.lastPage}">尾页</a>
    	<input type="text" value="${p.curPage }" class="num"  name="curPage"/><input type="submit" value="go"/>
    	</form>
  </body>
</html>

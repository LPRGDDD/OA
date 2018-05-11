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
    
    <title>My JSP 'getItem.jsp' starting page</title>
    
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
    <form action="order_updateItem.action" method="post">
    	商品id:<input type="text" name="oi.itemId" value="${oitem.itemId}"/><br/><br/>
    	订单编号：<select name="oi.orders.ordId">
    	<c:forEach items="${olist}" var="o">
    		<c:if test="${o.ordId==oitem.orders.ordId }">
    			<option value="${o.ordId }" selected>${o.ordName}</option>
    		</c:if>
    		<c:if test="${o.ordId!=oitem.orders.ordId }">
    			<option value="${o.ordId }">${o.ordName}</option>
    		</c:if>
    	</c:forEach>
    		</select><br/><br/>
    	商品名称：<input type="text" name="oi.itemName" value="${oitem.itemName }"/><br/><br/>
    	商品品牌：<input type="text" name="oi.itemBrand" value="${oitem.itemBrand }"/>
    	商品价格：<input type="text" name="oi.itemPrice" value="${oitem.itemPrice }"/><br/><br/>
    	进货数量：<input type="text" name="oi.itemNum" value="${oitem.itemNum }"/><br/><br/>
    	进货日期：<input type="text" name="oi.itemDate" value="${oitem.itemDate }"/>
    	<input type="submit" value="提交"/>
    </form>
  </body>
</html>

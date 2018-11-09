<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    
    <title>My JSP 'Tongji.jsp' starting page</title>
    
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
   <table class="layui-hide" id="test" lay-filter="test"></table>
              
          

 
<script>
layui.use('table', function(){
  var table = layui.table;
  
  table.render({
    elem: '#test'
    ,url:'duty/SelectTongJi'
    ,toolbar: true
    ,title: '用户数据表'
    ,totalRow: true
    ,cols: [[
      {field:'username', title:'姓名', width:80, fixed: 'left', unresize: true, sort: true, totalRowText: '合计行'}
      ,{field:'yingchu', title:'应出勤天数', width:150}
 	  ,{field:'shichu', title:'实际出勤天数', width:150}
 	  ,{field:'xiutian', title:'休息天数', width:150}
 	  ,{field:'quetian', title:'缺勤天数', width:150}
      ,{field:'chici', title:'迟到次数', width:150}
 	  ,{field:'zaoci', title:'早退次数', width:150}
 	  ,{field:'qingci', title:'请假次数', width:150}
 	  ,{field:'jiaci', title:'加班次数', width:150}
 	  ,{field:'chuci', title:'出差次数', width:150}
 	  ,{field:'waici', title:'外出次数', width:150}
    ]]
    ,page: true
    ,response: {
      statusCode: 0 //重新规定成功的状态码为 200，table 组件默认为 0
    }
    
  });
});
</script>

  </body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ include file="/WEB-INF/page/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>测试页面</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
<meta http-equiv="expires" content="Wed, 26 Feb 1997 08:21:57 GMT">
<link rel="stylesheet" href="${ctx }/layui/css/layui.css" media="all" />
<script type="text/javascript" src="${ctx }/layui/layui.js"></script>
<script>
	var ctx = "${ctx}";
</script>
</head>
  <body>
  	
	<table class="layui-hide" id="test"></table>
 
<script>
layui.use('table', function(){
  var table = layui.table
  ,form = layui.form;
  
  table.render({
    elem: '#test'
    ,url:ctx+'/test/testfind'
    ,cellMinWidth: 80
    ,cols: [[
      {type:'numbers'}
      ,{type: 'checkbox'}
      ,{field:'user_id', title:'ID', width:100, unresize: true, sort: true}
      ,{field:'user_name', title:'用户名', templet: '#usernameTpl'}
    ]]
    ,page: true
  });
  
});
</script>

  </body>
</html>

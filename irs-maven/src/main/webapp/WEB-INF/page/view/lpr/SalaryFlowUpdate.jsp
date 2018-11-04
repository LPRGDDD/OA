<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'SalaryFlowUpdate.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="page/resources/layui/css/layui.css" media="all">
	<script type="text/javascript" src="page/resources/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="page/resources/layui/layui.js"></script>
	<script type="text/javascript" src="page/resources/layui/layui.all.js"></script>

  </head>
  
  <body>
    <form class="layui-form" style="width: 80%;" id="aaf">
		<div class="layui-form-item">
			<label class="layui-form-label">开始时间</label>
			<div class="layui-input-block">
				<input type="hidden" name="salaryflowId" value="${sf.salaryflowId}">
				<input type="text" id="salaryflowBegintime" class="layui-input" value="${sf.salaryflowBegintime }"
					name="salaryflowBegintime"  placeholder="请输入开始时间">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">截止时间</label>
			<div class="layui-input-block">
				<input type="text" id="salaryflowEndtime" class="layui-input" value="${sf.salaryflowEndtime }"
					name="salaryflowEndtime"  placeholder="请输入截止时间">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">年份</label>
			<div class="layui-input-block">
				<input type="text" id="salaryflowYear" name="salaryflowYear" class="layui-input"  placeholder="请输入年份" value="${sf.salaryflowYear}">
			</div>
		</div> 
		<div class="layui-form-item">
			<label class="layui-form-label">月份</label>
			<div class="layui-input-block">
				<input type="text" name="salaryflowMonth" id="salaryflowMonth" class="layui-input" value="${sf.salaryflowMonth }"
					 placeholder="请输入月份">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">备注</label>
			<div class="layui-input-block">
				<textarea placeholder="请输入内容" class="layui-textarea" name="salaryflowMark">${sf.salaryflowMark }</textarea>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit="" onclick="btnSubmit()" lay-filter="addAdmin">立即提交</button>
			</div>
		</div>
	</form>
  </body>
<script type="text/javascript">
	var $;
	var $form;
	var form;
	layui.config({
	base : "js/"
}).use([ 'form', 'layer', 'jquery', 'laydate' ], function() {
		var layer = parent.layer === undefined ? layui.layer : parent.layer,
			laypage = layui.laypage,
			laydate = layui.laydate;
		$ = layui.jquery;
		form = layui.form;
		laydate.render({
			elem : '#salaryflowBegintime', //指定元素
			max : 'new Date()'
		});
		laydate.render({
			elem : '#salaryflowEndtime', //指定元素
			min : 'new Date()'
		});
		laydate.render({
			elem : '#salaryflowYear', //指定元素
			type: 'year'
		});
		laydate.render({
			elem : '#salaryflowMonth', //指定元素
			type: 'month'
		});
		form.on("submit(addAdmin)", function(data) {
			//弹出loading
			var index = top.layer.msg('数据提交中，请稍候', {
				icon : 16,
				time : false,
				shade : 0.8
			});
			var msg;
			$.ajax({
				type : "post",
				url : "salaryflow/update",
				data : $("#aaf").serialize(),
				dataType : "text",
				success : function(d) {
					if (d.code !== null) {
						msg = "修改成功！";
					} else {
						msg = d.msg;
					}
				}
			});
			setTimeout(function() {
				top.layer.close(index);
				top.layer.msg(msg);
				layer.closeAll("iframe");
				//刷新父页面
				parent.location.reload();
			}, 2000);
			return false;
		})
	})
	/* function btnSubmit(){
		$.ajax({
				type : "post",
				url : "../salaryflow/update",
				data : $("#aaf").serialize(),
				dataType : "text",
				success : function(d) {
					if (d.code == 0) {
						msg = "修改成功！";
					} else {
						msg = d.msg;
					}
				}
			});
	} */
</script>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	isELIgnored="false"%>
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

<title>My JSP 'XiangQing.jsp' starting page</title>

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
	<div>
		<form class="layui-form" id="form1" action="">
			<div class="layui-form-item">
				<label class="layui-form-label"><span class="yan">*</span>申请人员</label>
				<div class="layui-input-inline">
					<!--style="height:35px"  -->
					<input name="syreason" class="layui-input lxm" type="text"
						style="height:35px" placeholder="请输入" readonly="readonly" value="${list.username  }"
						autocomplete="off" lay-verify="required" lay-verify="title">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label"><span class="yan">*</span>请假原因</label>
				<div class="layui-input-inline">
					<!--style="height:35px"  -->
					<input name="syreason" class="layui-input lxm" type="text"
						style="height:35px" placeholder="请输入" readonly="readonly" value="${list.syReason}"
						autocomplete="off" lay-verify="required" lay-verify="title">
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>开始日期</label>
					<div class="layui-input-inline">
						<input class="layui-input lxm" readonly="readonly"
							value="${list.wcTime}" name="wctime" style="height:35px"
							id="test4" type="text" placeholder="YY-MM—DD HH:mm:ss" lay-verify="kaishi">
					</div>
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>结束日期</label>
					<div class="layui-input-inline">
						<input class="layui-input lxm" readonly="readonly"
							value="${list.wcTimeEnd }" name="wctimeend" style="height:35px"
							id="test30" type="text" placeholder="HH:mm:ss"
							lay-verify="jieshi">
					</div>
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">请假时长</label>
					<div class="layui-input-inline" style="width:100px;">
						<input name="wctimeone" id="wctimeone" value="${list.wcTimeOne }" readonly="readonly" class="layui-input"
							onfocus="shi()" style="height:35px" type="text" placeholder=""
							autocomplete="off">
					</div>
					<div class="layui-form-mid">天</div>
					<div class="layui-input-inline" style="width:100px;height:35px;">
						<input name="wctimetwo" value="${list.wcTimeTwo }" id="wctimetwo" readonly="readonly" class="layui-input"
							style="height:35px" type="text" placeholder="" autocomplete="off">
					</div>
					<div class="layui-form-mid">时</div>
				</div>
			</div>
			
			<input type="hidden" name="systate" value="1" /> <input type="hidden"
				name="exstate" value="0" /> <input type="hidden" name="syshen"
				id="xitong" /> <input type="hidden" id="sid" value="${list.sId }">
		</form>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn layui-btn-primary" onclick="shuaxin()">关闭</button>
				</div>
			</div>
	</div>
	<script type="text/javascript">
		function shuaxin(){
		parent.location.reload();
	}
		function update(){
			$.ajax({
				url:'WaiChu/updateState',
				data:{
					sid:$("#sid").val()
				},
				type:"post",
				dataType:"json",
				success:function(data){
					if(data>0){
					 	alert("已审批")
					 	parent.location.reload();
					}else{
					alert("未审批");
						parent.location.reload();
					}
				}
			})
		}
	</script>
</body>
</html>

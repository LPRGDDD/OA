<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'TanchuKuang.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="resources/layui/css/layui.css" media="all">
<script src="resources/jquery-1.11.3.min.js"></script>
<script src="resources/jquery.form.js"></script>
<script src="resources/jqueryExt.js"></script>
<script src="resources/layui/layui.js"></script>
<script src="resources/layui/layui.all.js" charset="utf-8"></script>
<link href="<c:url value="/resources/layui/css/layui.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/demo/common/bootstrap/css/bootstrap.min.css" />"
	media="all" rel="stylesheet">
<script src="<c:url value="/resources/jquery-1.11.3.min.js" />"
	charset="utf-8"></script>
<script type="text/javascript"
	src="<c:url value="/demo/common/bootstrap/js/bootstrap.min.js" />"></script>

</head>

<body>
	<div class="layui-input-inline">
		<button type="button" onclick="selectRole()"
			class="layui-btn layui-btn-primary layui-btn-radius">选择角色</button>
	</div>
	
	<!-- 选择角色的按钮 -->
	<div class="layui-row" id="popSearchRoleTest" style="display:none;">
	    <div class="layui-col-md11">
	        <form class="layui-form" lay-filter="formTestFilter2121" >
	            <div class="layui-form-item">
	                <label class="layui-form-label">用户名：</label>
	                <div class="layui-input-inline">
	                    <input type="text" name="userName"  class="layui-input">
	                </div>
	                <label class="layui-form-label">密码：</label>
	                <div class="layui-input-inline">
	                	<input type="text" name="password"  class="layui-input">
	                </div>
	            </div>
	            <div class="layui-form-item">
	                <label class="layui-form-label">角色：</label>
	                <div class="layui-input-inline">
	                    <input type="text" name="roleName" class="layui-input">
	                </div>
	                <div class="layui-input-inline">
	                	<button onclick="selectRole()" class="layui-btn layui-btn-primary layui-btn-radius">选择角色</button>
	                </div>
	            </div>
	            <div class="layui-form-item">
	                <label class="layui-form-label">备注：</label>
	                <div class="layui-input-block">
	                    <textarea placeholder="请输入内容" class="layui-textarea" name="userDescription"></textarea>
	                </div>
	            </div>
	            <div class="layui-form-item">
	                <div class="layui-input-block">
	                    <button type="button" class="layui-btn layui-btn-normal">提交</button>
	                </div>
	            </div>
	        </form>
	    </div>
	</div>
<script>
	//选择角色弹层
	function selectRole(){
		layer.open({
        	//layer提供了5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
            type:1,
            title:"查找用户角色",
            area: ['50%','50%'],
            content:$("#popSearchRoleTest").html()
        });
	}

</script>
</body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'BoHui.jsp' starting page</title>
    
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
  					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label"><span class="yan">*</span>外出时间</label>
							<div class="layui-input-inline">
								<textarea id="ta1" style="width:330px;height:100px;" value="我可以自动换行"></textarea>
							<input type="hidden" id="sid" value="${sid}">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-input-block">
							<button class="layui-btn" lay-filter="demo1" onclick="save()" lay-submit="">立即提交</button>
							<button class="layui-btn layui-btn-primary" onclick="shuaxin()" >关闭</button>
						</div>
					</div>
	<script type="text/javascript">
		function　save(){
		var num=$("#sid").val();
		var name=$("#ta1").val();
			$.ajax({
				url:'WaiChu/BoHuiUpdate',
				data:{
					'syName':name,
					'sid':num
				},
				type:'post',
				dataType:"json",
				success:function(data){
					if(data>0){
						alert("操作成功");
						parent.location.reload();
					}else{
						alert("操作失败");
						parent.location.reload();
					}
				}
			})
		}
		function shuaxin(){
			parent.location.reload();
		}
	</script>	
  </body>
</html>

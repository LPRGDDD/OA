<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<base href="<%=basePath%>">

<title>My JSP 'update.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css"
	href="page/resources/layui/css/layui.css" media="all">
<link rel="stylesheet" type="text/css"
	href="page/resources/bootstrap/css/bootstrap.min.css">

<script type="text/javascript" src="page/resources/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="page/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="page/resources/layui/layui.js"></script>
<script type="text/javascript" src="page/resources/layui/layui.all.js"></script>

<body>
 <!--  <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">选择您要发送的联系人</h4>
								</div>
								<div class="modal-body">
									选择负责人
									<input type="text" style="width:192px;height:35px" id="keyWord">
									<button style="height:35px;position:relative;top:-5px;"
										class="layui-btn" id="getUserByKey">查询</button>
									<table class="layui-hide"  id="test"></table>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">关闭</button>
									<button type="button" class="btn btn-primary" id="sure"
										data-dismiss="modal">确认选择</button>
								</div>
							</div>
							/.modal-content
						</div>
						/.modal
					</div> -->
					
		<div id="kuang"  style="display:none">
		<button type="button" class="layui-btn" id="off">关闭</button>
			<button type="button" class="layui-btn" id="sure">确认选择</button>
		        <table class="layui-hide"  id="test">
			
		</table>
		         </div>			
					
					
                        <form id="addre" method="post">
							 <input type="hidden" style="width:192px;height:35px" id="showUser" name="id" > 
							 <input type="hidden" value="${map.emailId }" id="emailId">
							<!--  <div class="layui-input-inline">
								<button type="button" onclick="selectUser()" class="layui-btn layui-btn-primary layui-btn-radius">查询员工</button>
							 </div> -->
		                    收件人： <input type="text" style="width:192px;height:35px" value="${map.fullname }"><br> <br>
		                       主题： <input type="text" style="width:192px;height:35px" value="${map.subject }" name="subject"id="subject"><br> <br>
						                        内容： <input
									type="text" style="width:400px;height:150px" value="${map.content }" name="content"id="content"><br>
								<br>
							<button class="layui-btn layui-btn-danger"  onclick="update(this)" >修改</button>
								
					      </form>
      </body>
 <script>
var layer=layui.layer;
$("#off").click(function(){
	$("#kuang").css("display","none");
	layer.closeAll();
})

  /* 查询员工 */
 function selectUser(){
 	getUsers();
   layer.open({
	 type:1,
	 title:"查找员工",
	 area:['80%','80%'],
	 content:$("#kuang"),
	 offset:['0px','100px']
   });   
}


         //查询所有用户
		var list = [];
		function getUsers(keyWord) {
			var table = layui.table;
			var tableins = table.render({
				id : 'test',
				elem : '#test',
				url : 'mail/getAllUsers',
				cols : [ [ //表头
					{
						checkbox : true,
						fixed : true
					}
					, {
						field : 'id',
						title : '员工编号',
						width : 110,
						sort : true,
						fixed : 'left'
					}
					, {
						field : 'fullname',
						width : 120,
						title : '员工姓名',
					}
					, {
						field : 'dept_id',
						width : 100,
						title : '部门编号',
					}
					, {
						field : 'dept_name',
						width : 120,
						title : '所在部门',
					}
				] ]
			});
	
			$("#sure").click(function() {
				var checkStatus = table.checkStatus('test'); //test即为基础参数id对应的值
				var length = checkStatus.data.length
				var users = "";
				for (var i = 0; i < length; i++) {
					if (checkStatus.data[i].id == $("#userId").val()) {
						alert("您不能选择自己！")
						return false;
					} else {
						users += checkStatus.data[i].fullname + ","
						var jsonData = "{"
						jsonData += "\"to_id2\":\"" + checkStatus.data[i].id + "\",";
						jsonData += "\"dept_id\":\"" + checkStatus.data[i].dept_id + "\",";
						jsonData = jsonData.substring(0, jsonData.length - 1) + "}"
						list.push(JSON.parse(jsonData))
					}
				}
				$("#showUser").val(users)
				$("#kuang").css("display","none")
			$(".layui-layer-title").css("display","none")
			$(".layui-layer-content").css("display","none")
			$("#layui-layer1").css("display","none")
			$("#layui-layer-shade1").css("display","none")
			
				//$('#myModal').modal('hide')
	
			})
			//    在模糊检索员工时 重载表格
			$("#getUserByKey").click(function() {
				tableins.reload({
					url : 'mail/getAllUsers',
					where : { //设定异步数据接口的额外参数，任意设
						"keyWord" : $("#keyWord").val()
					}
				});
			})
		}
	
      function update(obj){  
      alert("success");
      parent.location.reload();
            $.ajax({
               url:"mail/updateMail",
               type:'post',
               data:{
               "emailId":$("#emailId").val(),
               "subject":$("#subject").val(),
               "content":$("#content").val()
               },
               dataType:'text',
               success:function(data){
               
				//刷新父页面
               }
            })
        }
             
    
       
       
       
       


</script>

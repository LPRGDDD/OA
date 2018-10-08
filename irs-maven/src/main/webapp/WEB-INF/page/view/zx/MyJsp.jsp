<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/page/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/page/resources/bootstrap/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/page/resources/zTree_v3/css/demo.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/page/resources/zTree_v3/css/zTreeStyle/zTreeStyle.css">
<script
	src="${pageContext.request.contextPath}/page/resources/jquery-1.11.3.min.js"></script>
<script
	src="${pageContext.request.contextPath}/page/resources/bootstrap/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/page/resources/zTree_v3/js/jquery.ztree.all.min.js"></script>
<script src="${pageContext.request.contextPath}/page/resources/jqueryExt.js"></script>
  </head>
  	
  <body>
  <ul class="nav nav-tabs">
				<li class="active">
					 <a href="#">首页</a>
				</li>
				<li>
					 <a href="#">简介</a>
				</li>
				<li class="disabled">
					 <a href="#">信息</a>
				</li>
				<li class="dropdown pull-right">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle">下拉<strong class="caret"></strong></a>
					<ul class="dropdown-menu">
						<li>
							 <a href="#">操作</a>
						</li>
						<li>
							 <a href="#">设置栏目</a>
						</li>
						<li>
							 <a href="#">更多设置</a>
						</li>
						<li class="divider">
						</li>
						<li>
							 <a href="#">分割线</a>
						</li>
					</ul>
				</li>
			</ul>
    <input type="button" value="查询" onclick="findAll()">
    <table border="1" style="width:60%;text-align:center;" class="table table-bordered table-hover table-condensed">
		<tr style="width:400px; height:30px;text-align:center;" class="success">
			<td>编号</td>
			<td>仓库名称</td>
			<td>类别</td>
			<td>排序</td>
			<td>操作</td>
		</tr>
		<tbody id="box">
		</tbody>
	</table>
	
	<!-- 模态框弹1出录入内容 -->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times; <!-- 关闭按钮 -->
				</button>
				<h4 class="modal-title" id="myModalLabel">
					录入商品
				</h4>
			</div>
			<div class="modal-body">
<form class="form-horizontal"  role="form" id="productForm">
	<table class="form-group">
		<thead>
			
		</thead>
		<tbody>
		<tr>
	       <td>商品编号<input type="text" name="goId" id="go_id"></td>
	   </tr>
	   <tr>
	       <td>商品外键<input type="text" name="cId" id="c_id"></td>
	   </tr>
	     <tr>
	       <td>商品品牌<input type="text" name="goName" id="go_name"></td>
	   </tr>
	    <tr>
	       <td>商品序列<input type="text" name="goOrder" id="go_order"></td>
	   </tr>
	   </tbody>
	</table>
	  <input type="button" value="新建仓库" onclick="add()">
	  <input type="button" value="确认修改" onclick="date()">
	</form>

			</div>
			<div class="modal-footer">
				<button type="button" id="save" data-toggle='modal' data-target='#myModal' class="btn btn-primary" >确认修改</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
			</div>
		</div><!-- /.modal-content -->
		</div>
		</div>
	 </body>
</html>
<script>
 $(function(){
	       findAll();
	    })
    function findAll(){
    alert(1)
		       $.ajax({
        	url:"goodtype2/sel2",
        	type : "post",
       	 	dataType : 'JSON',//返回的数据类型
       	 	async:true,
		        success:function(data){
		        	$("#box").html("");//清空内容数据
		        	var ary=data;
		        	for(var i=0;i<ary.length;i++){
		        		var obj=ary[i];//获取当前对象
		        		var tr="<tr>";
		        		tr+="<td>"+obj.goId+"</td>";
		        		tr+="<td>"+obj.cName+"</td>";
		        		tr+="<td>"+obj.goName+"</td>";
		        		tr+="<td>"+obj.goOrder+"</td>";
		        		tr+="<td ><input type='button' value='修改' id="+obj.goId+" class='findone btn btn-default' /><input type='button' value='删除' id="+obj.goId+" class='delete btn btn-default' /></td>";
		        		tr+="</tr>"; 
		        		$("#box").append(tr);//追加行	
		        		
		        	}
		        	}
		        	})
	    }
	    	  function add(){
	 var obj=$("#productForm").serializeObject();//将表单数据转换成json对象
	 alert(obj)
			$.ajax({
	        	url :"goodtype2/save",
	        	type :"post",
	        	async :true,
	        	contentType:"application/json; charset=utf-8",//需要制定
	        	data :JSON.stringify(obj),//将json对象转换成json格式的字符串
	       	 	//dataType : 'text',//返回的数据类型
	       	 	dataType:'json',
	        	success : function(data) {
	        		alert(data.name+":"+data.pse);
	        		findAll();//再次加载数据
	        	}
 		});
	}
	$(function(){
					$("#box").on("click",".delete",function(){
						var id=this.id;
					 	alert(id);
					 	if(confirm("确认删除？")){
					 		$.ajax({
					 		url : "goodtype2/delete",
					 		type : "post",
					 		async : true,
					 		contentType: "application/json; charset=utf-8",
					 		data : JSON.stringify(id),
					 		dataType : 'text',
					 		success:function(data){
					 			alert(data);
					 			test();
					 		}
					 	});
					 	}else{
					 		alert("取消了删除！");
					 	}
					 	
					})
			})
			$(function(){
				$("#box").on("click",".findone",function(){
					var pid=this.id;
					alert(pid)
					$.ajax({
						url:"goodtype2/findone",
						type:"post",
						async:true,
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(pid),
						dataType: 'Json',
						success:function(data){
							$("#c_id").val(data[0].cId);
							$("#go_id").val(data[0].goId);
							$("#go_order").val(data[0].goOrder);
							$("#go_name").val(data[0].goName);
							if(data[0].pse=="男"){
								alert("checked")
							}else{
								alert("NoChecked");
							}
							//alert(data[0].sex=="男");
						}
					});
				})
			})
			 function date(){
			 var obj=$("#productForm").serializeObject();//将表单数据转换成json对象
			 alert(obj)
			$.ajax({
	        	url:"goodtype2/updateone",
	        	type:"post",
	        	async:true,
	        	contentType:"application/json; charset=utf-8",//需要制定
	        	data:JSON.stringify(obj),//将json对象转换成json格式的字符串
	       	 	//dataType : 'text',//返回的数据类型
	       	 	dataType:'text',
	        	success:function(data) {
	        		alert(data.goName+":"+data.goId);
	        		findAll();//再次加载数据
	        	}
 		});
			}
			
</script>
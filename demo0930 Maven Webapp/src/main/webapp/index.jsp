<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="resources/layui/css/layui.css" media="all">
	<script type="text/javascript" src="resources/layui/layui.js"></script>
	<script type="text/javascript" src="resources/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="resources/jquery.form.js"></script>
	<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" type="text/css"href="resources/easyui/themes/default/easyui.css"></link>
	<link rel="stylesheet" type="text/css"href="resources/easyui/themes/icon.css"></link>
	<script type="text/javascript"src="resources/easyui/jquery.easyui.min.js"></script>
	
	<script type="text/javascript">
		/* 商品查询 */
		function goodsFind(){
			$.ajax({
				url : "goods/findAll",
				dataType : 'json',
				type : 'post',
				success : function(data) {
					$("#tbody1").html(""); //清空内容数据
					var ary = data;
					for(var i=0;i<ary.length;i++){
			       		var obj=ary[i];//获取当前对象
			       		var tr="<tr>";
		        		tr+="<td class='pid'>"+obj.goodsid+"</td>";
		        		tr+="<td>"+obj.goodsname+"</td>";
		        		tr+="<td>"+obj.goodstype.typename+"</td>";
			       		tr+="<td>"+obj.goodsdesc+"</td>";
			       		tr+="<td>"+obj.goodsunitprice+"</td>";
			       		tr+="<td><img src='"+obj.goodsimagename+"' width='50px' height='50px'></td>";
			       		tr+="<td>"+obj.sellcount+"</td>";
			       		tr+="<td>"+obj.goodsdate+"</td>";
			       		tr+="<td><input data-toggle='modal' data-target='#myModal2' type='button' value='修改' id="+obj.goodsid+" class='get btn btn-default'/>"
			       		tr+="<input type='button' value='删除' id="+obj.goodsid+" class='delete btn btn-default' onclick='return'/></td>";
			       		tr+="</tr>";
		        		$("#tbody1").append(tr);//追加行
		        	}
		        }
			}
		)}
		/* 查询品牌 */
	 	function goodsTypeFind(){
				$.ajax({
					url : "goodsType/findAll",
					dataType : 'json',
					type : 'post',
					success : function(data) {
						$("#typeid").html(""); //清空内容数据
						var ary = data;
						for(var i=0;i<ary.length;i++){
			        		var obj=ary[i];//获取当前对象
			        		$("#typeid").append("<option class='form-control' value='" + obj.typeid + "'>" + obj.typename + "</option>"); //追加行
			        	}}
					}
				)
	 	}
	 	/* 商品图片上传 */
		 function upload(){
		 alert("!!!!")
		 	$("#form1").ajaxSubmit({
		 		url : "goods/uploads",
				type : "post",
				contentType : "application/x-www-form-urlencoded; charset=utf-8",
				dataType : 'text',
				success : function(data) {
					$("#lujing").val(data);
					/* $("#img").val(data); */
				}
			});
	 	}
	 	/* 商品录入 */
	 	function add() {
	 	alert("商品开始录入！！！"+$("#form1").serialize())
	  				$.ajax({
						url : "goods/save",
						type : "post", 
						async : true,
						data : $("#form1").serialize(),
						dataType : "text",
						success : function(data) {
								alert(data);
								refresh();
		  					},
		  				error:function(data){
		  					alert(data);
		  					refresh();
		  				}
				})
			}
		/* 单个商品查询 */
		$("#tbody1").on("click", ".get", function() {
		alert("11")
			/* var goodsid = this.id;
			alert(goodsid);
			$.ajax({
				url : "goods/findById",
				data : {
					"goodsid" : goodsid,
				},
				dataType : "json",
				type : "post",
				success : function(data) {
					$("#goodsid").html("");
					$("#goodsname").html("");
					$("#goodsdesc").html("");
					$("#goodsunitprice").html("");
					$("#goodsimagename").html("");
					$("#sellcount").html("");
					$("#goodsdate").html("");
					var ary = data;
					$("#goodsname").val(ary.goodsname);
					$("#goodsdesc").val(ary.goodsdesc);
					$("#goodsunitprice").val(ary.goodsunitprice);
					$("#goodsimagename").val(ary.goodsimagename);
					$("#sellcount").val(ary.sellcount);
					$("#goodsdate").val(ary.goodsdate);
				}
			}); */
		})
		/* 修改 */
		function JsonUpdate() {
			alert($("#form1").serialize());
			$.ajax({
				url : "goods/update",
				type : "post",
				async : true,
	        	data : $("#form1").serialize(),
				dataType : 'text',
				success : function(data) {
					alert(data);
					aa();
				},
				error : function(data) {
					alert(data);
					refresh();
				}
			})
		}
		/* 删除 */
		$("#tbody1").on("click", ".delete", function() {
			var goodsid = this.id;
			alert(id);
			if(confirm("确定删除吗？？？？")){
				$.ajax({
					url : "goods/delete",
					type : "post",
					data : {
						"goodsid" : goodsid,
					},
					dataType : "text",
					success : function(data) {
					alert(data)
					refresh();
					}
				})
			}else{alert("你取消了删除！！")}
		})
		/* 模糊查询 */
		function keyup(){
		var name=$("#mohuname").val();
			$.ajax({
				url : "goods/mohuFind",
				data:{
					goodsname:name
				},
				dataType : 'json',
				type : 'post',
				success : function(data) {
					$("#tbody1").html(""); //清空内容数据
					var ary = data;
					for(var i=0;i<ary.length;i++){
			       		var obj=ary[i];//获取当前对象
			       		var tr="<tr>";
		        		tr+="<td class='pid'>"+obj.goodsid+"</td>";
		        		tr+="<td>"+obj.goodsname+"</td>";
		        		tr+="<td>"+obj.goodstype.typename+"</td>";
			       		tr+="<td>"+obj.goodsdesc+"</td>";
			       		tr+="<td>"+obj.goodsunitprice+"</td>";
			       		tr+="<td><img src='"+obj.goodsimagename+"' width='50px' height='50px'></td>";
			       		tr+="<td>"+obj.sellcount+"</td>";
			       		tr+="<td>"+obj.goodsdate+"</td>";
			       		tr+="<td><input data-toggle='modal' data-target='#myModal2' type='button' value='修改' id="+obj.goodsid+" class='get btn btn-default'/>"
			       		tr+="<input type='button' value='删除' id="+obj.goodsid+" class='delete btn btn-default' onclick='return'/></td>";
			       		tr+="</tr>";
		        		$("#tbody1").append(tr);//追加行
		        	}
		        }
			}
		)}
		/* 页面刷新调用查询方法 */
		$(function() {
			goodsFind();
			goodsTypeFind();
		})
		//页面刷新
		function refresh() {
			window.location.reload(); //刷新当前页面.
		//或者下方刷新方法
		//parent.location.reload()刷新父亲对象（用于框架）--需在iframe框架内使用
		// opener.location.reload()刷新父窗口对象（用于单开窗口
		//top.location.reload()刷新最顶端对象（用于多开窗口）
		}
	</script>
  </head>

  <body>
    <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input class="form-control" type="text" placeholder="输入商品名字" id="mohuname" onkeyup="keyup()"/>
						</div> 
						<button type="button" class="btn btn-default" id="mohufind">查找</button>
						<button type="reset" class="btn btn-default red" id="chongzhi" onclick="refresh()">重置</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li>
							 <a><button class="layui-btn layui-btn-primary layui-btn-sm" data-toggle="modal" data-target="#myModal2"><span>添加商品信息</span></button></a>
						</li>
					</ul>
				</div>
				
			</nav>
			<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title" align="center">商品信息</h3>
					</div>
					<div class="panel-body">
			<table class="table table-hover">
					<thead>
						<tr>
							<th>编号</th>
							<th>名称</th>
							<th>类型</th>
							<th>简介</th>
							<th>价格</th>
							<th>图片</th>
							<th>数量</th>
							<th>商品日期</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody id="tbody1">
					</tbody>
			</table>
				
				<div class="alert alert-dismissable alert-danger">
				 <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>这是放置统计数据的东西
			</div>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<ul class="breadcrumb">
				<li>
					 <a href="#">商品管理</a>
				</li>
				<li class="active">
					商品信息查看
				</li>
			</ul>
		</div>
	</div>
</div>
</div>
</div>

<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">录入商品信息</h4>
				</div>
				<div class="modal-body">
					<form id="form1" role="form" method="post" enctype="multipart/form-data">
						<div class="form-group">
							<label for="description"  class="col-sm-2 control-label">商品名称</label>
							<div class="col-sm-4">
								<input type="hidden" name="goodsid" class="form-control" id="goodsid">
								<input type="text" name="goodsname" class="form-control" id="goodsname">
							</div>
							<label for="description" class="col-sm-2 control-label">商品类型</label>
							<div class="col-sm-4">
								<select class="form-control" name="goodstype.typeid" id="typeid">
								</select>
							</div>
							<label for="description" class="col-sm-2 control-label">商品单价</label>
							<div class="col-sm-2">
								<input type="text" name="goodsunitprice" class="form-control" id="goodsunitprice">
							</div>
							<label for="description" class="col-sm-2 control-label">商品数量</label>
							<div class="col-sm-2">
								<input type="text" name="sellcount" class="form-control" id="sellcount">
							</div>
							<label for="description" class="col-sm-2 control-label">出产日期</label>
							<div class="col-sm-2">
								<input type="text" name="goodsdate" class="form-control" id="goodsdate">
							</div>
							<div class="layui-form-item layui-form-text">
						    <label class="layui-form-label">商品简介</label>
						    <div class="layui-input-block">
						     	<textarea name="goodsdesc" placeholder="请输入内容" class="layui-textarea"></textarea>
						    </div>
						    <label class="layui-form-label">添加照片</label>
						    <div class="col-sm-2">
						     	<input type="file" name="files"/>
						     	<!-- <input type="button" value="文件上傳" onclick="upload()"/> -->
						    	<input type="text" name="goodsimagename" class="form-control" id="lujing"/>
						    </div>
						  </div>
						</div>
					</form>
				</div>
				<div class="modal-header"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" id="mohufind" onclick="upload()">文件上传</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="add" onclick="add()">提交</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
  </body>
</html>
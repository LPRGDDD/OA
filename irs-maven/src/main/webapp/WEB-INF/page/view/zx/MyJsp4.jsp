<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'MyJsp4.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="shortcut icon" href="#" />
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/page/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/page/resources/esayui/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/page/resources/esayui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/page/resources/esayui/demo/demo.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/page/resources/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/page/resources/esayui/jquery.easyui.min.js"></script>
<script
	src="${pageContext.request.contextPath}/page/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#tt").tree({
			url : 'tree/dept',
			onClick : function(node) {
				// 在用户点击的时候提示
				$.ajax({
					url : "shop/findById",
					type : "post",
					data : {
						"sId" : node.id
					},
					dataType : "json",
					success : function(data) {
						$("#cId").val(data[0].cId)
						$("#sId").val(data[0].sId)
						$("#sName").val(data[0].sName)
						$("#sFu").val(data[0].sFu)
						$("#sType").val(data[0].sType)
						$("#sBian").val(data[0].sBian)
						$("#sPrice").val(data[0].sPrice)
						$("#sGong").val(data[0].sGong)
						$("#sUpAlert").val(data[0].sUpalert)
						$("#sLowAlert").val(data[0].sLowalert)
						$("#sNow").val(data[0].sNow)
						$("#sCount").val(data[0].sCount)
						$("#sDate").val(data[0].sDate)

					}
				});
			}
		})
	});

	function updateshop() {
		var sId = $("#sId").val();
		var sName = $("#sName").val();
		var sFu = $("#sFu").val();
		var sType = $("#sType").val();
		var sBian = $("#sBian").val();
		var sPrice = $("#sPrice").val();
		var sGong = $("#sGong").val();
		var sUpAlert = $("#sUpAlert").val();
		var sLowAlert = $("#sLowAlert").val();
		var sNow = $("#sNow").val();
		var sCount = $("#sCount").val();
		$.ajax({
			url : "shop/updateshop",
			type : "post",
			data : {
				"sId" : sId,
				"sName" : sName,
				"sFu" : sFu,
				"sType" : sType,
				"sBian" : sBian,
				"sPrice" : sPrice,
				"sGong" : sGong,
				"sUpalert" : sUpAlert,
				"sLowalert" : sLowAlert,
				"sNow" : sNow,
				"sCount" : sCount
			},
			dataType : "text",
			success : function(data) {
				findAll(); //再次加载数据
			}
		})
	}

	function add() {
		var obj = $("#ff").serialize() //将表单数据转换成json对象
		alert(obj)
		$.ajax({
			url : "apply/save2",
			type : "post",
			data : $("#ff").serialize(),
			dataType : "text",
			/* async :true,
			contentType:"application/json; charset=utf-8",//需要制定
	         	data :JSON.stringify(obj),//将json对象转换成json格式的字符串 
	       	 	//dataType : 'text',//返回的数据类型
	       	 	dataType:'json', */
			success : function(data) {

				findAll(); //再次加载数据
			}
		});
	}


	$(function() {
		$("#span1").click(function() {
			$('#myModalx').modal('show');
		})
		//查询仓库
		$("#span1").click(function() {
			$.ajax({
				url : "court/find",
				type : "post",
				dataType : "json",
				success : function(data) {
					$("#tbo").html(""); //清空内容数据
					var ary = data;
					for (var i = 0; i < ary.length; i++) {
						var obj = ary[i]; //获取当前对象
						var tr = "<tr>";
						tr += "<td>" + obj.cId + "</td>";
						tr += "<td>" + obj.cName + "</td>";
						tr += "<td ><input type='button' value='处理' id=" + obj.cId + " class='deta btn btn-info' /></td>";
						tr += "</tr>";
						$("#tbo").append(tr); //追加行	

					}
				}
			})

			$("#tbo").on("click", ".deta", function() {
				var id = this.id;
				$("#c2Id").val(id)
			})
			/* 
			  商品录入
			 */
			$("#addshop").click(function() {
				var obj = $("#fff").serialize()
				alert(obj)
				$.ajax({
					url : "shop/addshop",
					type : "post",
					data : $("#fff").serialize(),
					dataType : "json",
					success : function(data) {
						$("#tbo").html(""); //清空内容数据
						var ary = data;
						for (var i = 0; i < ary.length; i++) {
							var obj = ary[i]; //获取当前对象
							var tr = "<tr>";
							tr += "<td>" + obj.cId + "</td>";
							tr += "<td>" + obj.cName + "</td>";
							tr += "<td ><input type='button' value='处理' id=" + obj.cId + " class='deta btn btn-info' /></td>";
							tr += "</tr>";
							$("#tbo").append(tr); //追加行	

						}
					}
				})
			})


		})



		$("#hidden").click(function() {
			$("#myModalx").modal('hide');
		})

	})

	/* 查仓库 */
	$(function() {
		var url = "court/findone"
		$.ajax({
			url : url,
			dataType : "json",
			type : "post",
			ansy : false,
			success : function(data) {
				$("#chioce").html(""); //清空内容数据
				var ary = data;
				for (var i = 0; i < ary.length; i++) {
					var obj = ary[i]; //获取当前对象
					var op = "<option value='" + obj.cId + "'>" + obj.cName + "</option>";
					$("#chioce").append(op); //追加行 
				}
			}
		})
		/* 提示id */
		$("#chioce").change(function() {
			let $dom = $("#chioce");
			let id = $dom[0].options[$dom[0].selectedIndex].value;
			$.ajax({
				url : "goodtype2/findtype",
				dataType : "json",
				type : "post",
				data : {
					"cId" : id
				},
				ansy : false,
				success : function(data) {
					$("#chioce2").html(""); //清空内容数据
					var ary = data;
					for (var i = 0; i < ary.length; i++) {
						var obj = ary[i]; //获取当前对象
						var op = "<option value='" + obj.goId + "'>" + obj.goName + "</option>";
						$("#chioce2").append(op); //追加行 
					}
				}
			})
		});
		$("#chioce2").change(function() {
			let $dom = $("#chioce2");
			let id = $dom[0].options[$dom[0].selectedIndex].value;
			$.ajax({
				url : "shop/findshop",
				dataType : "json",
				type : "post",
				data : {
					"goId" : id
				},
				ansy : false,
				success : function(data) {
					$("#chioce3").html(""); //清空内容数据
					var ary = data;
					for (var i = 0; i < ary.length; i++) {
						var obj = ary[i]; //获取当前对象
						var op = "<option value='" + obj.sId + "'>" + obj.sName + "</option>";
						$("#chioce3").append(op); //追加行 
					}
				}
			})
		})

		$("#findtype2").click(function() {
			var id = $("#chioce").val();
			var id2 = $("#chioce2").val();
			var id3 = $("#chioce3").val();
			alert(id2)
			$.ajax({
				url : "shop/findvag",
				dataType : "json",
				type : "post",
				data : {
					"cId" : id,
					"goId" : id2,
					"sId" : id3
				},
				ansy : false,
				success : function(data) {
					$("#tbody2").html(""); //清空内容数据
					var ary = data;
					for (var i = 0; i < ary.length; i++) {
						var obj = ary[i]; //获取当前对象
						var tr = "<tr>";
						tr += "<td>" + obj.sId + "</td>";
						tr += "<td>" + obj.sName + "</td>";
						tr += "<td>" + obj.goName + "</td>";
						tr += "<td>" + obj.sGong + "</td>";
						tr += "<td>" + obj.sUpAlert + "</td>";
						tr += "<td>" + obj.sNow + "</td>";
						tr += "<td>" + obj.sCreator + "</td>";
						tr += "</tr>";
						$("#tbody2").append(tr); //追加行	

					}
				}
			})
		})
	})
	
	$(function(){
	     $.ajax({
				url : "goodtype2/findtype2",
				dataType : "json",
				type : "post",
				ansy : false,
				success : function(data) {
					$("#chioce5").html(""); //清空内容数据
					var ary = data;
					for (var i = 0; i < ary.length; i++) {
						var obj = ary[i]; //获取当前对象
						var tr = "<tr>";
						tr += "<td>" + obj.goId + "</td>";
						tr += "<td>" + obj.goName + "</td>";
						tr += "</tr>";
						$("#chioce5").append(tr); //追加行	

					}
				}
			})
			$("#butn1").click(function() {
		   var id2=$("#chioce5").val();
			alert(id2)
			
			$.ajax({
				url : "shop/findshop2",
				dataType : "json",
				type : "post",
				data : {
					"goId" : id2,
				},
				ansy : false,
				success : function(data) {
					$("#tbody3").html(""); //清空内容数据
					var ary = data;
					for (var i = 0; i < ary.length; i++) {
						var obj = ary[i]; //获取当前对象
						var tr = "<tr>";
						tr += "<td>" + obj.sId + "</td>";
						tr += "<td>" + obj.sName + "</td>";
						tr += "<td>" + obj.goName + "</td>";
						tr += "<td>" + obj.sGong + "</td>";
						tr += "<td>" + obj.sUpAlert + "</td>";
						tr += "<td>" + obj.sNow + "</td>";
						tr += "<td>" + obj.sCreator + "</td>";
						tr += "</tr>";
						$("#tbody3").append(tr); //追加行	

					}
				}
			})
		})
	})
</script>
<style type="text/css">
#form3 {
	border-bottom: 0px solid #000;
	width: 800px;
	height: auto;
	position: relative;
	left: 300px;
	top: -300px;
}

.form-control {
	width: 250px;
}

#div1 {
	float: left;
	position: relative;
	margin-left: 50px;
}

#div2 {
	position: absolute;
	top: 500px;
	left: 260px;
}

#span1 {
	color: red;
	position: relative;
	top: -30px;
	left: 250px;
	font-size: small;
}

#cha {
	position: relative;
	left: 300px;
}
#butn1{
    position: relative;
    top:-33px;
    left:260px;
}
</style>
</head>

<body>

	<div class="easyui-panel" style="padding:5px;width: 200px;height:auto;">
		<ul id="tt" class="easyui-tree"
			data-options="url:'tree_data1.json',method:'get',animate:true,lines:true"></ul>
		<ul class="nav nav-pills nav-stacked">
			<li class="btn btn-primary" data-toggle="modal"
				data-target="#myModal">新建办公用品</li>
			<li class="btn btn-primary" data-toggle="modal"
				data-target="#myModal3">办公用品查询</li>
			<li class="btn btn-primary" data-toggle="modal"
				data-target="#myModal4">商品管理</li>
		</ul>
	</div>
	<!-- 模态框4 -->
	<div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width:900px;height:auto;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">商品管理</h4>
					<label for="name">选择</label><select id="chioce5"
						class="form-control">
					</select><input type="button" value="查询" class="btn btn-primary" id="butn1">
				</div>
				<div class="modal-body">
					
					<table class="table table-bordered" style="text-align: center;">
						<tr>
							<td>编号</td>
							<td>名称</td>
							<td>类型</td>
							<td>供应</td>
							<td>上限</td>
							<td>当前库存</td>
							<td>商品处理人</td>
							<td>处理</td>
						</tr>
						<tbody id="tbody3">

						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary">提交更改</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<!-- 模态框结束 -->
	<!-- 模态框3（Modal） -->
	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width:900px;height:auto;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">办公用品查询</h4>
				</div>
				<div class="modal-body">
					<div id="cha">
						<label for="name">选择仓库</label><select id="chioce"
							class="form-control">
						</select> <label for="name">选择类型</label> <select id="chioce2"
							class="form-control">
							<option value="0">默认</option>
						</select> <label for="name">选择商品</label> <select id="chioce3"
							class="form-control">
							<option value="0">默认</option>
						</select> <input class="btn btn-primary" type="button" value="查询"
							id="findtype2">
					</div>
					<table class="table table-bordered" style="text-align: center;">
						<thead>
							<tr>
								<td>编号</td>
								<td>名称</td>
								<td>类型</td>
								<td>供应</td>
								<td>上限</td>
								<td>当前库存</td>
								<td>商品处理人</td>
							</tr>
						</thead>
						<tbody id="tbody2"></tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default">关闭</button>
					<button type="button" class="btn btn-primary">提交更改</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<!-- 模态框3结束 -->



	<div id="form3">
		<div style="padding:3px 2px;border-bottom:1px solid #ccc">添加</div>
		<form id="ff" action="form1_proc.php" method="post"
			class="form-horizontal" role="form">
			<div id="div1">
				<input type="hidden" class="form-control" id="cId"
					placeholder="请输入编号">
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">商品编号</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="sId"
							placeholder="请输商品编号" readonly="readonly">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">商品名称</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="sName"
							placeholder="请输入商品名称">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">附件</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="sFu"
							placeholder="请输入附件">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">商品类型</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="sType"
							placeholder="请输入类型">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">商品编码</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="sBian"
							placeholder="请输入编码">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">单价</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="sPrice"
							placeholder="请输入单价">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">供应商</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="sGong"
							placeholder="请输入供应商">
					</div>
				</div>
			</div>
			<div id="div1">
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">库存上限</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="sUpAlert"
							placeholder="库存上限">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">库存下线</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="sLowAlert"
							placeholder="库存下限">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">现有</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="sNow"
							placeholder="现有库存">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">总价</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="sCount"
							placeholder="总价">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">时间</label>
					<div class="col-sm-10">
						<input type="Date" class="form-control" id="sDate"
							placeholder="时间">
					</div>
				</div>
			</div>
			<div id="div2">
				<input type="button" value="保存" class="btn btn-default"
					onclick="updateshop()"><input type="button" value="返回"
					class="btn btn-default">
			</div>
		</form>
	</div>

	<!-- 模态框1（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width:800px;height:auto;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">新建办公用品</h4>
				</div>
				<div class="modal-body">
					<form id="fff" action="form1_proc.php" method="post"
						class="form-horizontal" role="form">
						<div id="div1">
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">仓库编号</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="c2Id" name="cId"
										placeholder="仓库"><span id="span1">+选择</span>
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">商品名称</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="sName" name="sName"
										placeholder="请输入商品名称">
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">附件</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="sFu" name="sFu"
										placeholder="请输入附件">
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">商品类型</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="sType" name="sType"
										placeholder="请输入类型">
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">商品编码</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="sBian" name="sBian"
										placeholder="请输入编码">
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">单价</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="sPrice"
										name="sPrice" placeholder="请输入单价">
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">供应商</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="sGong" name="sGong"
										placeholder="请输入供应商">
								</div>
							</div>
						</div>
						<div id="div1">
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">库存上限</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="sUpAlert"
										name="sUpalert" placeholder="库存上限">
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">库存下线</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="sLowAlert"
										name="sLowalert" placeholder="库存下限">
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">现有</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="sNow" name="sNow"
										placeholder="现有库存">
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">总价</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="sCount"
										name="sCount" placeholder="总价">
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">时间</label>
								<div class="col-sm-10">
									<input type="date" class="form-control" id="sDate"
										placeholder="时间" value="new date" name="sDate">
								</div>
								<input type="hidden" name="sCreator" id="id"
									value="<shiro:principal property="id"/>">
							</div>
						</div>
						<input type="button" value="提交" id="addshop"
							class="btn btn-primary">
					</form>
				</div>
				<div class="modal-footer"></div>
				<!-- 模态框2（Modal） -->
				<div class="modal fade" id="myModalx" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">模态框</h4>
							</div>
							<div class="modal-body">
								<table>
									<thead>
										<tr>
											<td>编号</td>
											<td>名称</td>
										</tr>
									</thead>
									<tbody id="tbo">

									</tbody>
								</table>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" id="hidden">关闭</button>
								<button type="button" class="btn btn-primary">提交更改</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>
				<!-- 模态框2结束 -->
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<!-- 模态框1结束 -->
</body>
</html>

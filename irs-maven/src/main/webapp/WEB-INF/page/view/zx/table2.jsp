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

<title>My JSP 'table2.jsp' starting page</title>

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
	href="page/resources/zTree_v3/css/demo.css">
<link rel="stylesheet" type="text/css"
	href="page/resources/zTree_v3/css/zTreeStyle/zTreeStyle.css">
<script src="page/resources/jquery-1.11.3.min.js"></script>

<script src="page/resources/zTree_v3/js/jquery.ztree.all.min.js"></script>
<link rel="stylesheet" href="page/resources/layui/css/layui.css">
<link rel="stylesheet"
	href="page/resources/bootstrap/css/bootstrap.min.css">
<script src="page/resources/jquery-1.11.3.min.js"></script>
<script src="page/resources/layui/layui.js"></script>
<script src="page/resources/layui/layui.all.js"></script>
<script src="page/resources/layui/layui.js" charset="utf-8"></script>

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
<script>
	layui.use('table', function() {
		var table = layui.table;
		table.render({
			elem : '#tableDemo',
			toolbar : '#toolbarDemo',
			height : 500,
			url : 'apply/query',
			page : true, //开启分页
			cols : [ [ //表头
				//全选
				//edit: 'text'为开启单元格编辑，sort:true开启排序
				{
					field : 'ApId',
					title : '用品编号',
					sort : true,
				}
				, {
					field : 'sName',
					title : '用品名称',
					sort : true,
				}
				, {
					field : 'username',
					title : '申借人',
					sort : true
				}
				, {
					field : 'ApFlag',
					title : '借用类别',
					sort : true,
				}
				, {
					field : 'ApNum',
					title : '申请数量',
					sort : true,
				}
				, {
					field : 'ApDate',
					title : '申请日期',
					sort : true,
				}
				, {
					field : 'ApBei',
					title : '备注',
					sort : true,
				},
				{
					field : 'ApState',
					title : '状态',
					sort : true,
				}
				, {
					width : 200,
					align : 'center',
					title : '操作',
					toolbar : '#barDemo'
				}
			] ]
		});
		//头工具栏事件
		table.on('toolbar(toolbarDemo)', function(obj) {
			var checkStatus = table.checkStatus(obj.config.id);
			switch (obj.event) {
			case 'getCheckData':
				var data = checkStatus.data;
				layer.alert(JSON.stringify(data));
				break;
			case 'getCheckLength':
				var data = checkStatus.data;
				layer.msg('选中了：' + data.length + ' 个');
				break;
			case 'isAll':
				layer.msg(checkStatus.isAll ? '全选' : '未全选');
				break;
			}
			;
		});

		table.on('tool(demo)', function(obj) {
			var data = obj.data;
			//console.log(obj)
			if (obj.event === 'del') {
				layer.confirm('真的删除行么', function(index) {
					obj.del();
					layer.close(index);
					layer.msg(data.ApId);
					$.ajax({
						url : "apply/deleteapp",
						data : {
							'ApId' : data.ApId
						},
						type : "post",
						dataType : 'JSON',
						success : function(data) {
							if (data > 0) {
								layer.msg("删除成功");
							} else {
								layer.msg("删除失败");
							}
						}
					})
				});
			} else if (obj.event === 'edit') {
				layer.msg(data.ApId);
				layer.open({
					type : 2,
					title : "查询信息 ",
					area : [ '50%', '70%' ],
					offset : [ '100px', '500px' ],
					content : "http://localhost:8080/oa/apply/findById/" + data.ApId
				});
			}

		});
	});

	function openwin() {
		window.open("page/view/zx/MyJsp4.jsp",
			"newwindow",
			"height=800, width=800, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, status=no")
	}
	;
	function openwin2() {
		window.open("demo/MyJsp3.jsp",
			"newwindow",
			"height=800, width=800, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, status=no")
	}
</script>
<script type="text/javascript">
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
	//用品库查询
	$(function() {
		var url = "court/findone"
		$.ajax({
			url : url,
			dataType : "json",
			type : "post",
			ansy : false,
			success : function(data) {
				$("#opt").html(""); //清空内容数据
				var ary = data;
				for (var i = 0; i < ary.length; i++) {
					var obj = ary[i]; //获取当前对象
					var op = "<option value='" + obj.cId + "'>" + obj.cName + "</option>";
					$("#opt").append(op); //追加行 
				}
			}
		})
		$("#opt").change(function() {
			let $dom = $("#opt");
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
					$("#opt2").html(""); //清空内容数据
					var ary = data;
					for (var i = 0; i < ary.length; i++) {
						var obj = ary[i]; //获取当前对象
						var op = "<option value='" + obj.goId + "'>" + obj.goName + "</option>";
						$("#opt2").append(op); //追加行 
					}
				}
			})
		});
		
		$("#opt2").change(function() {
			let $dom = $("#opt2");
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
					$("#opt1").html(""); //清空内容数据
					var ary = data;
					for (var i = 0; i < ary.length; i++) {
						var obj = ary[i]; //获取当前对象
						var op = "<option value='" + obj.sId + "'>" + obj.sName + "</option>";
						$("#opt1").append(op); //追加行 
					}
				}
			})
		})
		/* 为商品价格赋值 */
		$("#opt1").change(function(){
		     let $dom = $("#opt1");
			let id = $dom[0].options[$dom[0].selectedIndex].value;
			alert(id)
			$.ajax({
				url : "shop/findById",
				dataType : "json",
				type : "post",
				data : {
					"sId" : id
				},
				ansy : false,
				success : function(data) {
				   $("#sPrice").val(data[0].sPrice)
				}
			})
		})
		})
	
	
	$(function() {
		var url = "use/findAll"
		$.ajax({
			url : url,
			dataType : "json",
			type : "post",
			ansy : false,
			success : function(data) {
				$("#box").html(""); //清空内容数据
				var ary = data;
				for (var i = 0; i < ary.length; i++) {
					var obj = ary[i]; //获取当前对象
					var tr = "<tr>";
					tr += "<td>" + obj.user_id + "</td>";
					tr += "<td>" + obj.user_name + "</td>";
					tr += "<td ><input type='button' value='处理' id=" + obj.user_name + " class='deta btn btn-info' /></td>";
					tr += "</tr>";
					$("#box").append(tr); //追加行	

				}
			}
		})
	})

	$(function() {
		$("#box").on("click", ".deta", function() {
			var pid = this.id;
			alert(pid)
			$.ajax({
				url : "${pageContext.request.contextPath}/apply/updateState",
				data : {
					"ApId" : pid
				},
				dataType : "json",
				type : "post",
				success : function(data) {
					console.log(data);
					if (data.state > 0) {
						findAll();
					//清空数据
					}
				}
			});
		})
	})


	/* 树 */

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
						$("#opt").val(data[0].cId)
						$("#opt2").val(data[0].goId)
						$("#opt1").val(data[0].sId)
					}
				});
			}
		})
	});
</script>
<style type="text/css">
#div4 {
	padding: 5px;
	width: 200px;
	height: 200px;
	border: 0px solid #000;
}

#div5 {
	position: relative;
	left: 250px;
	top: -200px;
	border: 0px solid #000;
	width: 500px;
	height: 300px;
}
</style>
</head>

<body>
	<ul class="layui-nav">
		<li class="layui-nav-item" data-toggle="modal" data-target="#myModal">办公用品申领</li>
		<li class="layui-nav-item layui-this"><a href="javascript:;"
			onclick="openwin()">详情申领</a></li>
		<li class="layui-nav-item" onclick="openwin2()">我的申领记录</li>
		<li class="layui-nav-item"><a href="">社区</a></li>
	</ul>
	<div id="serch">
		<input type="text" id="ipt" placeholder="请输入内容" onkeyup="serch()">
	</div>
	<script type="text/html" id="toolbarDemo">
  <div class="layui-btn-container">
    <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
    <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
    <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
  </div>
</script>
	<table class="layui-table" id="tableDemo" lay-filter="demo"></table>
	<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-xs" lay-event="edit">详情</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
	<div id="fenye"></div>
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width:600px;height:800px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">物品申请</h4>
					<div id="form3">
						<div style="padding:3px 2px;border-bottom:1px solid #ccc">添加</div>
						<!-- 树 -->
						<div id="div4">
							<ul id="tt" class="easyui-tree"
								data-options="url:'tree_data1.json',method:'get',animate:true,lines:true"></ul>
						</div>
						<div id="div5">
							<form id="ff" action="form1_proc.php" method="post">
								<table class="form-group">
									<thead>

									</thead>
									<tbody>
										<tr>
											<td><label for="name">选择仓库</label><select name="cId" id="opt" class="form-control">

											</select></td>
										</tr>
										<tr>
											<td><label for="name">选择类型</label><select name="goId" id="opt2" class="form-control"></select></td>
										</tr>
										<tr>
											<td><label for="name">选择商品</label><select name="sId" id="opt1" class="form-control"></select></td>
										</tr>
										<tr>
											<td><input type="hidden" name="id" id="id" value="<shiro:principal property="id"/>"></td>
										</tr>
										<tr>
											<td><label for="name">选择方式</label> <select name="apFlag" id="Tid" class="form-control">
													<option value="领用">领用</option>
													<option value="借用">借用</option>
											</select>
											</td>
										</tr>
										<tr>
											<td><label for="name">价格</label><input class="form-control" placeholder="请输入名称" type="text"
												name="apPrice" id="sPrice"></td>
										</tr>
										<tr>
											<td><span><label for="name">申请数量</label></span><input class="form-control" id="name" placeholder="请输入名称"
												name="apNum" type="number" value="" placeholder="0" /></td>
										</tr>
										<tr>
											<td><label for="name">时间</label><input class="form-control" id="name" placeholder="请输入名称" type="Date"
												 name="apDate"
												id="apDate"></td>
										</tr>
										<tr>
											<td><label for="name">备注</label>
												 <textarea class="form-control" rows="3" name="apBei" id="Apbei" placeholder="请输入名称"></textarea>
												</td>
										</tr>
										<tr>
											<td><input class="easyui-textbox" type="hidden"
												name="apState" id="state" value="0"></td>
										</tr>
										<tr>
											<td><input type="button" class="btn btn-primary" value="添加" onclick="add()"></td>
										</tr>
									</tbody>
								</table>
								<div id="win" class="easyui-window" title="选择人" closed="true"
									style="width:300px;height:100px;padding:0px;">
									<table style="width:200px;">
										<thead>
											<tr>
												<td>编号</td>
												<td>名称</td>
											</tr>
										</thead>
										<tbody id="box">

										</tbody>
									</table>
								</div>
								<p>
									总价：<label id="total"></label>
								</p>
							</form>
						</div>
					</div>
				</div>
				<div class="modal-body">在这里添加一些文本</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary">提交更改</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
</body>
</html>

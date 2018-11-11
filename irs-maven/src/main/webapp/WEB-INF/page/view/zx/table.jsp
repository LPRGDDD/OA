<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
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
<script type="text/javascript">
	$(function() {
		findAll();
		findAll2();
	})
	function findAll() {
	var id=$("#id").val();
		$.ajax({
			url : "findByState",
			type : "post",
			dataType : 'JSON', //返回的数据类型
			async : true,
			success : function(data) {
				$("#box").html(""); //清空内容数据
				var ary = data;
				for (var i = 0; i < ary.length; i++) {
					var obj = ary[i]; //获取当前对象
					var tr = "<tr>";
					tr += "<td>" + obj.ApId + "</td>";
					tr += "<td>" + obj.cName + "</td>";
					tr += "<td>" + obj.sName + "</td>";
					tr += "<td>" + obj.ApFlag + "</td>";
					tr += "<td>" + obj.username + "</td>";
					tr += "<td>" + obj.ApNum + "</td>";
					tr += "<td>" + obj.ApDate + "</td>";
					tr += "<td ><input type='button' value='处理' id=" + obj.ApId + " class='findone btn btn-info' data-toggle='modal' data-target='#myModal2'/></td>";
					tr += "</tr>";
					$("#box").append(tr); //追加行	

				}
			}
		})
	}
	function findAll2() {
		$.ajax({
			url : "findByState2",
			type : "post",
			dataType : 'JSON', //返回的数据类型
			async : true,
			success : function(data) {
				$("#box1").html(""); //清空内容数据
				var ary = data;
				for (var i = 0; i < ary.length; i++) {
					var obj = ary[i]; //获取当前对象
					var tr = "<tr>";
					tr += "<td>" + obj.ApId + "</td>"; 
					tr += "<td>" + obj.cName + "</td>";
					tr += "<td>" + obj.sName + "</td>";
					tr += "<td>" + obj.ApFlag + "</td>";
					tr += "<td>" + obj.username + "</td>";
					tr += "<td>" + obj.ApNum + "</td>";
					tr += "<td>" + obj.ApDate + "</td>";
					tr += "<td ><input type='button' value='发放' id=" + obj.ApId + " class='findState btn btn-info' /></td>";
					tr += "</tr>";
					$("#box1").append(tr); //追加行	

				}
			}
		})
	}
	
	$(function(){
	   $("#box1").on("click",".findState",function(){
				var pid=this.id;
                 $.ajax({
				        url:"findByState3",
				        data:{
				        	 "ApId":pid
				        },
				       type:"post",
				       dataType : 'JSON', //返回的数据类型
			           async : true,
			success : function(data) {
				$("#box2").html(""); //清空内容数据
				var ary = data;
				for (var i = 0; i < ary.length; i++) {
					var obj = ary[i]; //获取当前对象
					var tr = "<tr>";
					tr += "<td>" + obj.cName + "</td>";
					tr += "<td>" + obj.sName   +"(库存:<input type='text' value="+obj.sNow+" id='snow' readonly='readonly'>)</td>";
					tr += "<td>" + obj.sLowAlert +'到'+obj.sUpAlert +"</td>";
					tr += "<td>" + obj.sPrice + "</td>";
					 tr += "<td><input class='text_box' name='apNum' type='number' value="+obj.ApNum+" placeholder='0' id='ApNum'/></td>";
					tr += "<td>" + obj.ApBei + "</td>";
					tr += "<td>" + obj.ApOperator + "</td>";
					tr += "<td><input type='hidden' id='sid' value="+obj.sId+"></td>";
					tr += "<td ><input type='button' value='处理' id=" + obj.ApId + " class='updateByState btn btn-info' /></td>";
					tr += "</tr>";
					$("#box2").append(tr);//追加行	

				}
			      }
	   })
	   })
	})
	  $(function(){
	     $("#box2").on("click",".updateByState",function(){
	        var  snow=$("#snow").val();
	        var ApNum=$("#ApNum").val();
	        var sId=$("#sid").val();
	        var sNow=snow-ApNum;
	        $.ajax({
				        url:"updateNum",
				        data:{
				        "sId":sId ,
				        "sNow":sNow
				        },
				         type:"post",
				       dataType : 'JSON', //返回的数据类型
				        success:function(data){
				        	if(data.state>0){
				        		location.reload();
				        		//清空数据
				        	}
				        }
			      });
	     })
	  })
	  

	
	$(function(){
	   $("#box2").on("click",".updateByState",function(){
				var pid=this.id;
 $.ajax({
				        url:"updateState1",
				        data:{
				        	 "ApId":pid
				        },
				        dataType:"json",
				        type:"post",
				        success:function(data){
				        	console.log(data);
				        	if(data.state>0){
				        		findAll();
				        		//清空数据
				        	}
				        }
			      });
	   })
	})
	
	$(function(){
	   $("#box").on("click",".findone",function(){
				var pid=this.id;
 $.ajax({
				        url:"findBydetail",
				        data:{
				        	 "ApId":pid
				        },
				        dataType:"json",
				        type:"post",
				        success : function(data) {
				$("#box3").html(""); //清空内容数据
				var ary = data;
				for (var i = 0; i < ary.length; i++) {
					var obj = ary[i]; //获取当前对象
					var tr = "<tr>";
					tr += "<td>" + obj.ApId + "</td>"; 
					tr += "<td>" + obj.cName + "</td>";
					tr += "<td>" + obj.sName + "</td>";
					tr += "<td>" + obj.ApFlag + "</td>";
					tr += "<td>" + obj.username + "</td>";
					tr += "<td>" + obj.ApNum + "</td>";
					tr += "<td>" + obj.ApDate + "</td></tr><tr>";
					tr += "<td ><input type='button' value='审批' id=" + obj.ApId + " class='change btn btn-info' /></td><td data-toggle='modal' data-target='#myModalzx'><input type='button' value='驳回' id=" + obj.ApId + " class='ret btn btn-warning' /></td>";
					tr += "</tr>";
					$("#box3").append(tr); //追加行	

				}
			      }
			      });
	   })
	   $("#return").click(function() {
			$("#myModalzx").modal('hide');
		}) 
	})
	
	$(function(){
	   $("#box3").on("click",".change",function(){
				var pid=this.id;
 $.ajax({
				        url:"updateState",
				        data:{
				        	 "ApId":pid
				        },
				        dataType:"json",
				        type:"post",
				        success:function(data){
				        	console.log(data);
				        	if(data.state>0){
				        		findAll();
				        		//清空数据
				        	}
				        }
			      });
	   })
	})
	
	
	
	function get1(ApState) {
		if (ApState == 1)
			return '未处理';
		if (ApState == 0)
			return '已处理';
	}
	function currentTime() {
		var d = new Date(),
			str = '';
		str += d.getFullYear() + '年';
		str += d.getMonth() + 1 + '月';
		str += d.getDate() + '日';
		return str;
	}
	//用品库查询
	$(function() {
		var url = "findone"
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
	})

	//类别查询
	$(function() {
		var url = "findbyid"
		$.ajax({
			url : url,
			dataType : "json",
			type : "post",
			ansy : false,
			success : function(data) {
				$("#opt1").html(""); //清空内容数据
				var ary = data;
				for (var i = 0; i < ary.length; i++) {
					var obj = ary[i]; //获取当前对象
					var op = "<option value='" + obj.goId + "'>" + obj.goName + "</option>";
					$("#opt1").append(op); //追加行 
				}
			}
		})
		$("#box3").on("click",".ret",function(){
	         var id=this.id
	         $("#hidebox").val(id)
	   })
	})
	   
function insapp(){
    var text=$("#textarea").val();
    var id=$("#hidebox").val();
    alert(text)
    alert(id)
     $.ajax({
        url:'insapp',
        data:{
            "apId":id,
            "apReson":text
        },
        type:'post',
        datatype:'json',
        ansy : false,
        success:function(data){
           location.reload();
        }
    }) 
}	
	
</script>
<style type="text/css">
#box {
	text-align: center;
	line-height: 200px;
}

#snow {
	width: 50px;
}

#ApNum {
	width: 50px;
}

</style>
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span><span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Brand</a>
				</div>

				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active" data-toggle="modal" data-target="#myModal">
							<a href="#">发放物品</a>
						</li>
						<li><a href="#" onclick="openwin()">Link</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#">Separated link</a></li>
								<li class="divider"></li>
								<li><a href="#">One more separated link</a></li>
							</ul></li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">Link</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#">Separated link</a></li>
							</ul></li>
					</ul>
				</div>
				</nav>
				<input type="hidden" name="id" id="id"
					value="<shiro:principal property="id"/>">
				<table class="table table-striped" id="tab1">
					<thead>
						<tr>
							<th>编号</th>
							<th>库名称</th>
							<th>商品名称</th>
							<th>领用状态</th>
							<th>申领人</th>
							<th>数量</th>
							<th>时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody id="box">

					</tbody>
				</table>

				<!-- 模态框2（Modal） -->
				<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog" style="width:900px; height: 500px;">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">物品审批</h4>
							</div>
							<form id="product">
								<table class="table table-striped" style="width:750px;">
									<thead>
										<tr>
											<td>办公用品库</td>
											<td>办公用品名称</td>
											<td>警戒库存范围</td>
											<td>单价</td>
											<td>申请数量</td>
											<td>申请备注</td>
											<td>部门审批人</td>
										</tr>
									</thead>
									<tbody id="box3">

									</tbody>
								</table>
							</form>
							<!-- 模态框（Modal） -->
<div class="modal fade" id="myModalzx" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" id="return">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					不批准理由
				</h4>
			</div>
			<div class="modal-body">
				<table>
				    <tr>
				        <td>
				            <textarea class="form-control" rows="4" cols="50" id="textarea"></textarea>
				        </td>
				        </tr>
				        
				    <tr>
				         <td><p>请输入不批准理由</p></td>
				         <td><input type="hidden" id="hidebox"></td>
				    </tr>
				</table>
				
			</div>
			<div class="modal-footer">
								<button type="button" class="btn btn-primary" onclick="insapp()">提交</button>
							</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">关闭</button>
								<button type="button" class="btn btn-primary">提交更改</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>

				<!-- 模态框（Modal） -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog" style="width:800px;">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">物品发放</h4>
								<div>
									<form id="product">
										<table class="table table-striped" style="width:750px;">
											<thead>
												<tr>
													<td>办公用品库</td>
													<td>办公用品名称</td>
													<td>警戒库存范围</td>
													<td>单价</td>
													<td>申请数量</td>
													<td>申请备注</td>
													<td>部门审批人</td>
													<td>归还信息</td>
												</tr>
											</thead>
											<tbody id="box1">

											</tbody>
										</table>
									</form>
								</div>
							</div>
							<div class="easyui-panel"
								style="padding:5px;width: 300px;height:300px;">
								<ul id="tter" class="easyui-tree"
									data-options="url:'tree_data1.json',method:'get',animate:true,lines:true"></ul>
								<div>
									<table class="table table-striped" style="width:750px;">
										<thead>
											<tr>
												<td>办公用品库</td>
												<td>办公用品名称</td>
												<td>警戒库存范围</td>
												<td>单价</td>
												<td>申请数量</td>
												<td>申请备注</td>
												<td>部门审批人</td>
												<td>归还信息</td>
											</tr>
										</thead>
										<tbody id="box2">

										</tbody>
									</table>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">关闭</button>
								<button type="button" class="btn btn-primary">提交更改</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>
				<ul class="pagination">
					<li><a href="#">Prev</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">Next</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>

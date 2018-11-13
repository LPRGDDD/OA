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

<title>My JSP 'report.jsp' starting page</title>

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
<script type="text/javascript" src="${pageContext.request.contextPath}/page/resources/FileSaver.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/page/resources/tableExport.js"></script>
<script type="text/javascript">
	       $(function() {
		$.ajax({
			url : "court/findone",
			dataType : "json",
			type : "post",
			ansy : false,
			success : function(data) {
				$("#opt1").html(""); //清空内容数据
				var ary = data;
				for (var i = 0; i < ary.length; i++) {
					var obj = ary[i]; //获取当前对象
					var op = "<option value='" + obj.cId + "'>" + obj.cName + "</option>";
					$("#opt1").append(op); //追加行 
				}
			}
		})
		$("#opt1").change(function(){
		    var id=$("#opt1").val();
		    alert(id)
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
		})
		$("#opt2").change(function() {
			 var id=$("#opt2").val();
			 alert(id)
			$.ajax({
				url : "shop/findshop",
				dataType : "json",
				type : "post",
				data : {
					"goId" : id
				},
				ansy : false,
				success : function(data) {
					$("#opt3").html(""); //清空内容数据
					var ary = data;
					for (var i = 0; i < ary.length; i++) {
						var obj = ary[i]; //获取当前对象
						var op = "<option value='" + obj.sId + "'>" + obj.sName + "</option>";
						$("#opt3").append(op); //追加行 
					}
				}
			})
		})
		$("#butt").click(function(){
		    $("#div3").show();
		    var id1=$("#opt1").val();
		    var id2=$("#opt2").val();
		    var id3=$("#opt3").val();
		  $.ajax({   
				url : "shop/findvag",
				dataType : "json",
				type : "post",
				data : {
					"cId" : id1,
					"goId" : id2,
					"sId" : id3
				},
				ansy : false,
				success : function(data) {
					$("#tbod4").html(""); //清空内容数据
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
						$("#tbod4").append(tr); //追加行	

					}
				}
			})
		})
	
	    })
	    
	    
	    
	</script>
<style type="text/css">
#div1 {
	width: 200px;
}

#div2 {
	border: 0px solid #ccc;
	width: 1100px;
	height: 200px;
	position: absolute;
	left: 230px;
	top: 20px;
	border-radius: 10px;
}
#div3{
    border: 1px solid #ccc;
	width: 1100px;
	height: 200px;
	position: absolute;
	left: 230px;
	border-radius: 10px;
	top:200px;
	display: none;
}
#tab{
   border-radius: 10px;
   border:0px solid #ccc;
}
#tab td{
margin-top:5px;
   border:1px solid #ccc;
   width:300px;
   height:50px;
}
#butt{
   position: absolute;
   left:300px;
   top:110px;
}
#div4{
   position: absolute;
   left:1000px;
   top:-15px;
}
</style>
</head>

<body>
	<div id="div1">
		<ul class="nav nav-pills nav-stacked">
			<li class="btn btn-primary">物品总表</li>
			<li class="btn btn-primary">采购物品报表</li>
			<li class="btn btn-primary">部门，人员领用物品报表</li>
			<li class="btn btn-primary">借用物品报表</li>
			<li class="btn btn-primary">归还物品报表</li>
			<li class="btn btn-primary">未归还物品报表</li>
			<li class="btn btn-primary">报废物品报表</li>
			<li class="btn btn-primary">维护记录报表</li>
			<li class="btn btn-primary">台账报表</li>
		</ul>
	</div>
	<div id="div2" class="form-group">
		<table id="tab">
			<tr>
				<td><label for="name">办公用品库:</label></td>
				<td><select class="form-control" style="width:200px;" id="opt1">
 				</select></td>
			
				<td><label for="name">办公用品类别:</label></td>
				<td><select class="form-control" style="width:200px;" id="opt2">
				   <option value="0">默认</option>
				</select></td>
		
				<td><label for="name">办公用品名称:</label></td>
				<td><select class="form-control" style="width:200px;" id="opt3">
				<option value="0">默认</option>
				</select></td>
			</tr>
			<tr>
			   <td><label for="name">日期:</label></td>
			   <td><input type="Date" class="form-control" style="width:200px;"></td><td><label for="name">到</label></td><td><input type="Date" class="form-control" style="width:200px;"></td>
			</tr>
			<tr>
			   <td colspan="6"><input type="button" value="查询" class="btn btn-primary" id="butt"></td>
			</tr>
		</table>
	</div>
	
	<div id="div3">
	<div id="div4">
	<a href="#" onclick="$('.pvtTable').tableExport({type:'excel',
                                                   mso: {
                                                     styles:['border-bottom', 'border-top', 'border-left', 'border-right']
                                                     }});">导出为 Excel</a>
                                                     </div>
	     <table class="pvtTable table table-condensed">
	         <thead>
	              <tr class="success">
	                  <td>序号</td>
	                  <td>名称</td>
	                  <td>类别</td>
	                  <td>供应</td>
	                  <td>最大库存</td>
	                  <td>当前</td>
	                  <td>序号</td>
	              </tr>
	         </thead>
	         <tbody id="tbod4">
	             
	         </tbody>
	     </table>
	</div>
</body>
</html>

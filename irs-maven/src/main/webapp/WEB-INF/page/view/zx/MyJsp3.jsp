<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'MyJsp3.jsp' starting page</title>

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
	})
  $(function() {
		var url = "shop/finddet"
		$.ajax({
			url : url,
			dataType : "json",
			type : "post",
			ansy : false,
			success : function(data) {
				$("#opt2").html(""); //清空内容数据
				var ary = data;
				for (var i = 0; i < ary.length; i++) {
					var obj = ary[i]; //获取当前对象
					var op = "<option value='" + obj.sId + "'>" + obj.sName + "</option>";
					$("#opt2").append(op); //追加行 
				}
			}
		})
	})
	//类别查询
	$(function() {
		var url = "goodtype2/findbyid"
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
	})
$(function(){
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

$(function(){
	   $("#box").on("click",".deta",function(){
				var pid=this.id;
				alert(pid)
 $.ajax({
				        url:"${pageContext.request.contextPath}/apply/updateState",
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
    $("#butt1").click(function(){
        $('#win').window('open');
    })
})

//加减数字
$(function() {
				$(".add").click(function() {
					var t = $(this).parent().find('input[class*=text_box]');
					if(t.val()==""||undefined||null){
						t.val(0);
					}
					t.val(parseInt(t.val()) + 1)
					setTotal();
				})
				$(".min").click(function() {
					var t = $(this).parent().find('input[class*=text_box]');
					if(t.val()==""||undefined||null){
						t.val(0);
					}
					t.val(parseInt(t.val()) - 1)
					if(parseInt(t.val()) < 0) {
						t.val(0);
					}
					setTotal();
				})
				$(".text_box").keyup(function(){
					var t = $(this).parent().find('input[class*=text_box]');
					if(parseInt(t.val())==""||undefined||null || isNaN(t.val())) {
						t.val(0);
					}
					setTotal();
				})
				function setTotal() {
					var s = 0;
					$("#tab td").each(function() {
						var t = $(this).find('input[class*=text_box]').val();
						var p = $(this).find('span[class*=price]').text();
						if(parseInt(t)==""||undefined||null || isNaN(t) || isNaN(parseInt(t))){
							t=0;
						}
						s += parseInt(t) * parseFloat(p);
					});
					$("#total").html(s.toFixed(2));
				}
				setTotal();
			})
    </script>
<style type="text/css">
#form3 {
	border-bottom: 1px solid #000;
	width: 300px;
	height: 300px;
	position: relative;
	left: 150px;
	top: 30px;
}

input[type=number] {
	-moz-appearance: textfield;
}

input[type=number]::-webkit-inner-spin-button, input[type=number]::-webkit-outer-spin-button
	{
	-webkit-appearance: none;
	margin: 0;
}

.text_box {
	width: 50px;
}
</style>
</head>

<body>
	<div id="form3">
		<div style="padding:3px 2px;border-bottom:1px solid #ccc">添加</div>
		<form id="ff" action="form1_proc.php" method="post">
			<table class="form-group">
				<thead>

				</thead>
				<tbody>
					<tr>
						<td>品库<select name="cId" id="opt">

						</select></td>
					</tr>
					<tr>
						<td>名称<select name="goId" id="opt1"></select></td>
					</tr>
					<tr>
						<td>用品<select name="sId" id="opt2"></select></td>
					</tr>
					<tr>
						<td>办公审批<input class="easyui-textbox" type="text"
							name="borrow" id="borrow"><button type="button" class="easyui-linkbutton" id="butt1">添加人</button></td>
					</tr>
					<tr>
						<td>类型 <select name="apFlag" id="Tid" >
								<option value="领用">领用</option>
								<option value="借用">借用</option>
						</select>
						</td>
					</tr>
					<tr>
						<td>单价<input class="easyui-textbox" type="text"
							name="apPrice" id="Apprice"></td>
					</tr>
					<tr>
						<td><span>数量:</span><input class="min" name="" type="button"
							value="-" /> <input class="text_box" name="apNum" type="number"
							value="" placeholder="0" /> <input class="add" name=""
							type="button" value="+" /></td>
					</tr>
					<tr>
						<td>备注<input class="easyui-textbox" type="text" name="apBei"
							id="Apbei"></td>
					</tr>
					<tr>
						<td>时间<input class="easyui-datebox" type="apDate" readonly="readonly" value="new date" name="apDate"
							id="apDate"></td>
					</tr>
					<tr>
						<td><input class="easyui-textbox" type="hidden"
							name="apState" id="state" value="0"></td>
					</tr>
					<tr>
						<td><input type="button" value="添加" onclick="add()"></td>
					</tr>
				</tbody>
			</table>
			<div id="win" class="easyui-window" title="选择人" closed="true" style="width:300px;height:100px;padding:0px;">
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
			<p>总价：<label id="total"></label></p>
		</form>
	</div>
	
</body>
</html>

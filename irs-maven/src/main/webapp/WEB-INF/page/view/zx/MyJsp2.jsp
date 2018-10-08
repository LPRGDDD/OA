<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<script src="../resource/jquery-1.11.3.min.js"></script>
<script src="../resource/jqueryExt.js"></script>
<script>
     $(function(){
	       findAll();
	    })
    function findAll(){
    alert(1)
		       $.ajax({
        	url:"apply/findapp",
        	type : "post",
       	 	dataType : 'JSON',//返回的数据类型
       	 	async:true,
		        success:function(data){
		        	$("#box").html("");//清空内容数据
		        	var ary=data;
		        	for(var i=0;i<ary.length;i++){
		        		var obj=ary[i];//获取当前对象
		        		var tr="<tr>";
		        		tr+="<td>"+obj.Ap_id+"</td>";
		        		tr+="<td>"+obj.s_name+"</td>";
		        		tr+="<td>"+obj.borrow+"</td>";
		        		tr+="<td>"+obj.Ap_flag+"</td>";
		        		tr+="<td>"+obj.Ap_num+"</td>";
		        		tr+="<td>"+obj.Ap_date+"</td>";
		        		tr+="<td>"+obj.Ap_bei+"</td>";
		        		tr+="<td>"+get1(obj.Ap_state)+"</td>";
		        		tr+="<td ><input type='button' value='修改' id="+obj.ap_id+" class='findone btn btn-default' /><input type='button' value='删除' id="+obj.ap_id+" class='delete btn btn-default' /></td>";
		        		tr+="</tr>"; 
		        		$("#box").append(tr);//追加行	
		        		
		        	}
		        	}
		        	})
	    }
	    function get1(status){
	       if(status=0)
	       return '未处理';
	       if(status=1)
	       return '已处理';
	    }
	     function add(){
	 var obj=$("#product").serialize()//将表单数据转换成json对象
	 alert(obj)
			$.ajax({
	        	url :"apply/save2",
	        	type :"post",
	        	data :$("#product").serialize(),
	        	dataType:"text",
	        	/* async :true,
	        	contentType:"application/json; charset=utf-8",//需要制定
	         	data :JSON.stringify(obj),//将json对象转换成json格式的字符串 
	       	 	//dataType : 'text',//返回的数据类型
	       	 	dataType:'json', */
	        	success : function(data) {
	        	
	        		findAll();//再次加载数据
	        	}
 		});
	}
	//用品库查询
	 $(function(){
	        var url="court/findone"
		 $.ajax({
		        url:url,
		        dataType:"json",
		        type:"post",
		        ansy:false,
		        success:function(data){
		        	$("#opt").html("");//清空内容数据
		        	var ary=data;
		        	for (var i = 0; i< ary.length; i++) {
					var obj = ary[i]; //获取当前对象
					var op="<option value='"+obj.c_id+"' class='opt'>"+obj.c_name+obj.c_id+"</option>";
					$("#opt").append(op);//追加行 
					
				}
		        	}
	    })
	    })
	    
	 //类别查询
	 $(function(){
	        var url="goodtype2/findbyid"
		 $.ajax({
		        url:url,
		        dataType:"json",
		        type:"post",
		        ansy:false,
		        success:function(data){
		        	$("#opt1").html("");//清空内容数据
		        	var ary=data;
		        	for (var i = 0; i< ary.length; i++) {
					var obj = ary[i]; //获取当前对象
					var op="<option value='"+obj.go_id+"'>"+obj.go_name+"</option>";
					$("#opt1").append(op);//追加行 
				}
		        	}
	    })
	    })   
</script>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="#" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <input type="button" value="查询" onclick="findAll()">
    <table border="1" style="width:60%;text-align:center;">
		<tr style="width:400px; height:30px;text-align:center;">
			<td>仓库外键</td>
			<td>商品编号</td>
             <td>类型</td>
			<td>商品名称</td>
			<td>名称</td>
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
					申请
				</h4>
			</div>
			<div class="modal-body">
<form id="product">
	<table class="form-group">
		<thead>
			
		</thead>
		<tbody>
	   <tr>
	       <td>办公用品库<select name="cId" id="opt">
	       </select></td>
	   </tr>
	   <tr>
	      <td>用品库名称<select name="sId" id="opt1"></select></td>
	   </tr>
	   <tr>
	       <td>办公审批<input type="text" name="borrow" id="user_id"></td>
	    </tr>
	    <tr>
	       <td>办公审批<input type="text" name="apFlag" id="T_id"></td>
	    </tr>
	   <tr>
	       <td>单价<input type="text" name="apPrice" id="Ap_price"></td>
	   </tr>
	   <tr>
	       <td>数量<input type="text" name="apNum" id="Ap_num"></td>
	   </tr>
	    <tr>
	       <td>备注<input type="text" name="apBei" id="Ap_bei"></td>
	    </tr>
	   </tbody>
	</table>
	  <input type="button" value="确认申请" onclick="add()">
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
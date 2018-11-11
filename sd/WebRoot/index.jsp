<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="resources/jquery-1.11.3.min.js"></script>
	<script src="resources/jquery.form.js"></script>
	<script src="resources/jqueryExt.js"></script>
	
  </head>
  
  <body>
  <!------------------------ 查询------------------ -->
        <div>
		<table border="1">
			<tr>
				<td>商品编号</td>
				<td>商品名称</td>
				<td>商品描述</td>
				<td>价格</td>
				<td>商品照片</td>
				<td>数量</td>
				<td>添加时间</td>
				<td>商品类型编号</td>
				<td>类型名称</td>
				<td>操作</td>
			</tr>
			<tbody id="tbody">
			</tbody>
		</table>
	</div>
	<br>
	<br>
	<hr>
	<br>
	<br>
	
	<div>
		<form method="post" id="form1" enctype="multipart/form-data">
			<table border="1">
				<tr>
					<td>商品名称</td>
					<td><input type="text" name="goodsName"/></td>
				</tr>
				<tr>
					<td>价格</td>
					<td><input type="text" name="goodsUnitPrice"/></td>					
				</tr>
				<tr>
					<td>数量</td>
					<td><input type="text" name="sellCount"/></td>					
				</tr>
				<tr>
					<td>商品照片</td>
					<td><img src="" id="poto2" style="width:200px;height:100px;"/></td>
					<td>
    				<input type="file" name="files"/>
    				</td>
					<td><input type="text" name="goodsImageName" id="poto" /></td>					
				</tr>
				<tr>
					<td>添加时间</td>
					<td><input type="date" name="goodsDate"/></td>					
				</tr>
				<tr>
					<td>评价</td>
					<td><input type="text" name="goodsDesc"/></td>					
				</tr>
				<tr>
					<td>商品类型</td>
					<td>
						<select name="GoodsType.typeId" id="sele">
							
						</select>
					</td>					
				</tr>
				<tr>
					<td>添加</td>
					<td><input type="button" value="添加商品图片" onclick="send()"/></td>
					<td><input type="button" value="添加商品" onclick="save()"/></td>
				</tr>
			</table>
		</form>
	</div>
  </body>
</html>

<script>
     //查询
         function queryAll(){
             alert("11111")
	          $.ajax({
	              url : "goods/queryAll",
	              type : "post",
	              async : true,
	              dataType : 'json',
	              success : function(data){
	                 $("#tbody").html("");
	                 for(var i=0;i<data.length;i++){
	                    var obj=data[i];//获取当前对象
	                    var tr="<tr>";
	                    tr+="<td>"+obj.goodsId+"</td>";
	                    tr+="<td>"+obj.goodsName+"</td>";
	                    tr+="<td>"+obj.goodsDesc+"</td>";
	                    tr+="<td>"+obj.goodsUnitPrice+"</td>";
	                    tr+="<td><img src='"+obj.goodsImageName+"' width='70px' height='50px'></td>";
	                    tr+="<td>"+obj.sellCount+"</td>";
	                    tr+="<td>"+obj.goodsDate+"</td>";
	                    tr+="<td>"+obj.typeId+"</td>";
        			    tr+="<td>"+obj.typeName+"</td>";
	                    tr+="</td>";
	                    tr+="<td><input type='button' id='"+obj.id+"' value='删除' class='delete'/><input type='button' id='"+obj.id+"' value='更改' class='update'/></td>";
	                    $("#tbody").append(tr);
	                           			        			
	                 }
	              }
	          })
	      } 
	     
	    /* 查询商品类型 */
  	function queryType(){
  		$.ajax({
  			url:"goods/queryTypeAll",
  			type:"post",
  			asunc:true,
  			dataType:'Json',
  			success:function(data){
  				$("#sele").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
					 var tr="<option value='"+obj.typeId+"'>"+obj.typeName+"</option>";
					  $("#sele").append(tr);    			
        		}
  			}
  		})
  	}
  	  $(function(){
			queryAll();
			queryType();
		})
		
		/*添加*/
	function save(){
  		var obj=$("#form1").serialize();
			alert(obj);
			$.ajax({
	        	     url : "goods/save",
	        	     type : "post",
	        	     async : true,
	        	     data : $("#form1").serialize(),
	       	         dataType : 'text',//返回的数据类型
	        	   success : function(data) {
	        		    alert(data);
	        		    queryAll();
	        	}
	 		});
  	}
  	/*图片*/
  	function send() {
		alert(11);
		$("#form1").ajaxSubmit({
			url : "upload",
			type : "post",
			contentType : "application/x-www-form-urlencoded; charset=utf-8",
			dataType : 'text',
			success : function(data) {
				$("#poto").val(data);
				$("#poto2").attr("src",data);
			}
		});
	}
  	
	</script>

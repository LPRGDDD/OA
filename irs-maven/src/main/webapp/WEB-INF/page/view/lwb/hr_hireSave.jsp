<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <script src="../../resources/jquery-1.11.3.min.js"></script>
<script src="../../resources/jqueryExt.js"></script>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hr_hireSave.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	

<link rel="stylesheet" href="demo/common/bootstrap/css/bootstrap.min.css">
	<script src="demo/common/bootstrap/js/bootstrap.min.js"></script>


  </head>
  
  <body>
       <div>
		   <form method="post" id="formh">
			<table border="1">
				<tr>
					<td>计划名称</td>
					<td><select name="hrPlanId" onchange="queryHire1()" id="seleP"></select>
						</td>
		        </tr>
		        <tr>
					<td><input type="hidden" name="hrTalentsId" id="hr_talents_id"/></td>
					</tr>
		         <tr>
					<td>应聘人姓名</td>
					<td><input type="text" id="hr_talents_name"/></td>
				 </tr>
		        <tr>
					<td>应聘岗位</td>
					 <td><input type="text" name="hrHireRelation" id="hr_talents_relation"/></td>				
				</tr>
				<tr>
					<td>登陆用户名</td>
					<td><input type="text" name="hrHireName"/></td>					
				</tr>
			
				<tr>
					<td>发起人</td>
					<td><input type="text" name="hrHireUsername"/></td>					
				</tr>
				<tr>
					<td>招聘部门</td>
					<td>
					     <select name="deptId" id="seDept"></select>
					</td>					
				</tr>
				
				<tr>
					<td>录用日期</td>
					<td><input type="date" name="hrHireDate"/></td>
				</tr>
				<tr>
					<td>员工类型</td>
					<td><input type="text" name="hrHireType"/></td>
				</tr>
				<tr>
					<td>职务</td>
					<td><input type="text" name="hrHireDuty"/></td>
				</tr>
				<tr>
					<td>行政等级</td>
					<td><input type="text" name="hrHireClassa"/></td>
				</tr>
				<tr>
					<td>入职时间</td>
					<td><input type="date" name="hrHireEntrytime"/></td>
				</tr>
				<tr>
					<td>正式起薪日期</td>
					<td><input type="date" name="hrHireStartingsalary"/></td>
				</tr>
				<tr>
					<td>备注</td>
					<td><input type="text" name="hrHireRemark"/></td>
				</tr>
				
				
				<tr>
					<td>添加</td>
					<td><input type="button" value="确认添加"   onclick="save()"/></td>
				
				</tr>
			</table>
		</form>
	</div>
		
  <!-- 按钮触发模态框 -->
    <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="queryHire1()">
	  开始演示模态框
</button>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					应聘人姓名
				</h4>
			</div>
			<div class="modal-body">
						<table>
						    <tbody id="tbody"></tbody>
						 </table>
			 
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
  </body>
</html>
<script>
                             //查询计划
  	function queryHire(){
  	
  		$.ajax({
  			url:"hire/hireSePl",
  			type:"post",
  			asunc:true,
  			dataType:'json',
  			success:function(data){
  				$("#seleP").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
					 var tr="<option value='"+obj.hr_plan_id+"'>"+obj.hr_plan_name+"</option>";
					  $("#seleP").append(tr);    			
        		}
  			}
  		})
  	}
 
                        //根据计划查询计划内人员
   function queryHire1(){
          var id= $("#seleP").val();
           alert(id)
	          $.ajax({
	             
	              url : "hire/hireSeTa",
				  type : "post",
				  data : {
					"id" : id,
				},
	              dataType : 'json',
	              success : function(data){
	                 $("#tbody").html("");
	                 for(var i=0;i<data.length;i++){
	                    var obj=data[i];//获取当前对象
	                    var tr="<tr>";
	                    tr+="<td><input type='button' id='"+obj.hr_talents_id+"' value='"+obj.hr_talents_name+"' class='zpsx'/></td>";
	                    tr+="</td>";
	                    $("#tbody").append(tr);
	                           			        			
	                 }
	              }
	          })
	      }
	  
	                          //查询计划
  	function seleDeptt(){
  		$.ajax({
  			url:"hire/seleDept",
  			type:"post",
  			asunc:true,
  			dataType:'json',
  			success:function(data){
  				$("#seDept").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
					 var tr="<option value='"+obj.dept_id+"'>"+obj.dept_name+"</option>";
					  $("#seDept").append(tr);    			
        		}
  			}
  		})
  	}
  $(function(){
  	    queryHire();
  	    seleDeptt()
  	})
  	                   
	                 //根据人员查询出数据，并显示在页面上
  	$(function(){
        $("#tbody").on("click", ".zpsx", function() {
			 var id = this.id;
			alert(id);
			$.ajax({
				url : "hire/hTalentId",
				type : "post",
				data : {
					"id" : id,
				},
				dataType : 'json',
				success : function(data) {
				    $("#hr_talents_id").html("");
					$("#hr_talents_name").html("");
					$("#hr_talents_relation").html("");
					var ary = data[0];
			        $("#hr_talents_id").val(ary.hr_talents_id);
					$("#hr_talents_name").val(ary.hr_talents_name);
					$("#hr_talents_relation").val(ary.hr_talents_relation);
				}
			}); 
		})
		})

  	                /*添加*/
		function save(){
	  		var obj=$("#formh").serialize();
				alert(obj);
				$.ajax({
		        	     url : "hire/saveHire",
		        	     type : "post",
		        	     async : true,
		        	     data :$("#formh").serialize(),
		       	         dataType : 'text',//返回的数据类型
		        	     success : function(data) {
		        	         
		        		       alert(data);
		        	}
		 		});
	  	}
	
</script>
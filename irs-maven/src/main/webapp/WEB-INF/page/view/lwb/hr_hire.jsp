<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hr_hire.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" type="text/css" href="page/resources/layui/css/layui.css">
    <script type="text/javascript" src="page/resources/jquery-1.11.3.min.js"></script>
    <script src="page/resources/layui/layui.js" charset="utf-8"></script>
    <script src="page/resources/layui/layui.all.js" charset="utf-8"></script>
    <link rel="stylesheet" href="page/resources/bootstrap/css/bootstrap.min.css">
	<script src="page/resources/bootstrap/js/bootstrap.min.js"></script>
  </head>
  
  <body>
    <div class="layui-tab">
  <ul class="layui-tab-title">
    <li class="layui-this">计划管理</li>
    <li>新增计划</li>
  </ul>
  <div class="layui-tab-content">
  <!-- 第一块 -->
    <div class="layui-tab-item layui-show">
          111111111111111111111
            
    </div>
    
    
    
<!-- 第二块 -->
    <div class="layui-tab-item">
		 
	      <div>
<form method="post"  id="formh">
<table class="Table" width="60%" align="center">

   <tr>
      <td nowrap class="col-md-1 control-label" style="width: 10%">计划名称:</td>
      <td class="TableData" style="width: 20%">
         <select name="hrPlanId" onchange="queryHire1()" id="seleP" class="form-control"></select>
      </td>
      <td nowrap class="col-md-4 control-label" style="width: 20%">应聘人姓名:</td>
      <td class="TableData" style="width: 20%">
        <input type="text" name="hrTalentsName" id="hr_talents_name" class="form-control">
        <input type="hidden" name="hrTalentsId" id="hr_talents_id"/>
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label" style="width: 20%">应聘岗位:</td>
      <td class="TableData">
         <input type="text" name="hrTalentsToemploy" id="hr_talents_toemploy" class="form-control"   >
      </td>

      <td nowrap class="col-md-2 control-label">发起人:</td>
      <td class="TableData">
        <input type="text" name="hrScreenUsername" class="form-control"  >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label" style="width: 20%">招聘部门:</td>
      <td class="TableData">
          <select name="deptId" id="seDept" class="form-control"></select>
      </td>

      <td nowrap class="col-md-2 control-label">录用日期:</td>
      <td class="TableData">
        <input type="date" name="hrHireDate" class="form-control">
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label" style="width: 20%">员工类型:</td>
      <td class="TableData">
          <input type="text" type="text" name="hrHireType" class="form-control">
      </td>

      <td nowrap class="col-md-2 control-label">职务:</td>
      <td class="TableData">
        <input type="text" type="date" name="hrHireDuty" class="form-control">
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">入职时间:</td>
      <td class="TableData">
        <input type="date" name="hrHireEntrytime" class="form-control">
      </td>
      
      <td nowrap class="col-md-2 control-label">正式起薪日期:</td>
      <td class="TableData">
      <input type="date" name="hrHireStartingsalary" class="form-control" 
      </td>     
   </tr>
   
   <tr>
	   <td nowrap class="col-md-2 control-label">备注:</td>
	      <td class="TableData">
	      <textarea class="form-control" rows="3" name="hrHireRemark"></textarea>
	      </td>
   </tr>
    <tr align="center" class="TableControl">
      <td colspan=4 nowrap>
        <input type="button" class="btn btn-default" value="添加"  onclick="save()">
      </td>
    </tr>
  </table>
</form>
</div>

<!-- 按钮触发模态框 -->
<button  data-toggle="modal" data-target="#myModal" onclick="queryScreen1()" id="mtk">
	+++
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
		


   </div>
  </div>
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
					$("#hr_talents_toemploy").html("");
					var ary = data[0];
			        $("#hr_talents_id").val(ary.hr_talents_id);
					$("#hr_talents_name").val(ary.hr_talents_name);
					$("#hr_talents_toemploy").val(ary.hr_talents_toemploy);
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
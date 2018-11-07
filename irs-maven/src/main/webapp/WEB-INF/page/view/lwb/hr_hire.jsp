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
  
   <style type="text/css">
  #mtk{
     position:absolute;left:800px;top:80px;
  }
</style>
  </head>
  
  <body>
    <div class="layui-tab">
  <ul class="layui-tab-title">
    <li class="layui-this">录用管理</li>
    <li>新增录用</li>
  </ul>
  <div class="layui-tab-content">
  <!-- 第一块 -->
    <div class="layui-tab-item layui-show">
    
    
          <table class="layui-hide" id="myTab" lay-filter="demo"></table>
	<div id="fenye"></div>
	
<script id="barDemo" type="text/html">

</script>
<script>
		layui.use('table', function() {
			var table = layui.table;
			//监听表格复选框选择
			table.on('checkbox(demo)', function(obj) {
				console.log(obj)
			});
			layui.use('table', function(){
				  var table = layui.table;
				  //监听单元格编辑
				   table.render({
				    elem: '#myTab'
				    ,height:500
				    ,url: 'hire/queryHire' //数据接口
				    ,page: true //开启分页
				    ,cols: [[ //表头
				       //全选
				       //edit: 'text'为开启单元格编辑，sort:true开启排序
			   {field:'hr_plan_name', width:220, title: '计划名称', align:'center'}
		      ,{field:'hr_talents_name', width:220, title: '应聘者姓名', align:'center'}
		      ,{field:'hr_talents_major', width:220, title: '应聘岗位', align:'center'}
		      ,{field:'hr_talents_relation', width:220, title: '联系电话', align:'center'}
		      ,{field:'hr_hire_username', width:220, title: '录用负责人', align:'center'}
		      ,{field:'hr_hire_date', title: '录用时间', width: 220, align:'center'} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
		      /* ,{fixed: 'right', width:220, align:'center', toolbar: '#barDemo'} */
				    ]],
				  });             
				});
			//监听工具条
			table.on('tool(demo)', function(obj) {
				var data = obj.data;
				if (obj.event === 'detail') {
					layer.msg('ID：' + data.hr_screen_id + ' 的查看操作');
				} else if (obj.event === 'check') {
					layer.msg(data.hr_screen_id);
	//打开一个面试窗口
		layer.open({
            type:2,
            title:"查找用户角色",
            area: ['80%','90%'],
            offset: ['20px', '50px'],
            content:"http://localhost:8080/oa/screen/ScreenById/"+data.hr_screen_id
        });
				}
			});
	
		});
	</script>
            
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

      <td nowrap class="col-md-2 control-label">录用负责人:</td>
      <td class="TableData">
        <input type="text" name="hrHireUsername" value="<shiro:principal property="fullname"/>" readonly="readonly" class="form-control">
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label" style="width: 20%">招聘部门:</td>
      <td class="TableData">
          <select name="deptId" id="seDept" class="form-control"></select>
      </td>

      <td nowrap class="col-md-2 control-label">录用日期:</td>
      <td class="TableData">
        <input type="text" name="hrHireDate" readonly="readonly" id="xx" class="form-control">
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
  	    seleDeptt();
  var today=new Date();
    var H=today.getFullYear();
    var M=today.getMonth()+1;
    var R=today.getDate();
    var h=today.getHours();
    var mm=today.getMinutes();
    var ss=today.getSeconds();
  	var xitong=H+"-"+M+"-"+R+" "+h+":"+mm+":"+ss;
  	$("#xx").val(xitong);
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
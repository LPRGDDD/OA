<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hr_jhgl.jsp' starting page</title>
    
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
           
          <table class="layui-hide" id="myTab" lay-filter="demo"></table>
	<div id="fenye"></div>
	
<script id="barDemo" type="text/html">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit">修改</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
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
				    ,url: 'plan/queryPlan' //数据接口
				    ,page: true //开启分页
				    ,cols: [[ //表头
				       //全选
				       //edit: 'text'为开启单元格编辑，sort:true开启排序
			   {field:'hr_plan_id', width:80, title: 'ID'}
		      ,{field:'hr_plan_number', width:80, title: '计划编号'}
		      ,{field:'hr_plan_name', width:80, title: '计划名称'}
		      ,{field:'hr_plan_ditch', width:80, title: '招聘渠道'}
		      ,{field:'hr_plan_budget', title: '预算费用', width: '10%'} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
		      ,{field:'hr_plan_startdate', title: '开始日期'}
		      ,{field:'hr_plan_dateclosed', title: '结束日期'}
		      ,{field:'hr_plan_department', width:137, title: '招聘部门'}
		      ,{field:'hr_plan_post', width:137, title: '招聘岗位'}
		      ,{field:'hr_plan_count', title: '招聘人数'}
		      ,{field:'hr_plan_skilldate', width:137, title: '用工日期'}
		      ,{field:'username', width:137, title: '审批人'}
		      ,{field:'hr_plan_explain', width:137, title: '招聘说明'}
		      ,{field:'hr_plan_remark', width:137, title: '招聘备注'}
		      ,{field:'hr_plan_adjunct', width:137, title: '附件'}
		      ,{field:'hr_plan_state', width:137, title: '计划状态'}
		      ,{field:'hr_plan_username', width:137, title: '创建者用户名'}
		      ,{field:'hr_plan_auditingDate', width:137, title: '审批日期'}
		      ,{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}
				    ]],
		done:function(res,page,count){
		  $("[data-field='hr_plan_state']").children().each(function(){
           if($(this).text()=='0'){
             $(this).text("待批准")
           }else if($(this).text()=='1'){
             $(this).text("批准")
           }else if($(this).text()=='2'){
             $(this).text("不批准")
                 }
              })
              }
				  });
               
				});
			//监听工具条
			table.on('tool(demo)', function(obj) {
				var data = obj.data;
				if (obj.event === 'detail') {
					layer.msg('ID：' + data.hr_plan_id + ' 的查看操作');
				} else if (obj.event === 'del') {
					layer.confirm('真的删除行么',function(index) {
						obj.del();
						layer.close(index);
						$.ajax({
							url : "plan/deletePlan",
							data : {
								'id' : data.hr_plan_id
							},
							type : "post",
							dataType : 'json',
							success : function(data) {
								if(data>0){
									layer.msg("删除成功");
									location.reload();
								}else{
									layer.msg("删除失败");
									location.reload();
								}
							}
						})
					});//判断
				} else if (obj.event === 'edit') {
					layer.msg(data.hr_plan_id);
	//打开一个窗口
		layer.open({
            type:2,
            title:"查找用户角色",
            area: ['50%','70%'],
            offset: ['100px', '500px'],
            content:"http://localhost:8080/oa/plan/planById/"+data.hr_plan_id
        });
				}
			});
	
		});
	</script>
            
    </div>
    
    
    
<!-- 第二块 -->
    <div class="layui-tab-item">
					<div>
		<form  method="post" id="selejihua">
			<table border="1">
				<tr>
					<td>计划编号</td>
					<td><input type="text" name="hrPlanNumber"/></td>
				</tr>
				<tr>
					<td>计划名称</td>
					<td><input type="text" name="hrPlanName"/></td>					
				</tr>
				<tr>
					<td>招聘渠道</td>
					<td><input type="text" name="hrPlanDitch"/></td>					
				</tr>
				<tr>
					<td>预算费用</td>
					<td><input type="text" name="hrPlanBudget"/></td>					
				</tr>
				<tr>
					<td>开始时间</td>
					<td><input type="date" name="hrPlanStartdate"/></td>					
				</tr>
				<tr>
					<td>结束时间</td>
					<td><input type="date" name="hrPlanDateclosed"/></td>					
				</tr>
				<tr>
					<td>招聘部门</td>
					<td><input type="text" name="hrPlanDepartment"/></td>					
				</tr>
				
				<tr>
					<td>招聘岗位</td>
					<td><input type="text" name="hrPlanPost"/></td>
				</tr>
				<tr>
					<td>招聘人数</td>
					<td><input type="text" name="hrPlanCount"/></td>					
				</tr>

				<tr>
					<td>用工日期</td>
					<td><input type="date" name="hrPlanSkilldate"/></td>					
				</tr>
				
				<tr>
					<td>审批人</td>
					<td> 
					     <select name="admin.id" id="sele"> </select>
					</td>					
				</tr>
				
				<tr style="display:none">
					<td>计划状态</td>
					<td><input type="text" name="hrPlanState" value="0"/></td>					
				</tr>
				
				<tr>
					<td>招聘说明</td>
					<td><input type="text" name="hrPlanExplain"/></td>					
				</tr>
				<tr>
					<td>招聘备注</td>
					<td><input type="text" name="hrPlanRemark"/></td>					
				</tr>
				
				<tr>
					<td>附件</td>
					<td><input type="text" name="hrPlanAdjunct"/></td>					
				</tr>
				
				<tr>
					<td>创建者用户名</td>
					<td><input type="text" name="hrPlanUsername"/></td>					
				</tr>
				<tr>
					<td>审批日期</td>
					<td><input type="date" name="hrPlanAuditingdate"/></td>					
				</tr>
				
				<tr>
					<td>添加</td>
					<td><input type="button" value="新建计划" onclick="save()"/></td>
				</tr>
			</table>
		</form>
	</div>
    </div>
  </div>
</div>
  </body>
</html>
<script>
 /* 查询审批人 */
  	function queryuser(){
  		$.ajax({
  			url:"plan/userAll",
  			type:"post",
  			asunc:true,
  			dataType:'json',
  			success:function(data){
  				$("#sele").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
					 var tr="<option value='"+obj.id+"'>"+obj.username+"</option>";
					  $("#sele").append(tr);    			
        		}
  			}
  		})
  	}
  	$(function(){
  	    queryuser();
  	})
	/*添加*/
		function save(){
	  		var obj=$("#selejihua").serialize();
				alert(obj);
				$.ajax({
		        	     url : "plan/savePlan",
		        	     type : "post",
		        	     async : true,
		        	     data :$("#selejihua").serialize(),
		       	         dataType : 'text',//返回的数据类型
		        	     success : function(data) {
		        		       alert(data);
		        	}
		 		});
	  	}
  </script>
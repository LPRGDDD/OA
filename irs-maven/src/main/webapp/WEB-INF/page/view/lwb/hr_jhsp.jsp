 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hr_jhsp.jsp' starting page</title>
    
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
	  <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
	  <legend>计划审批</legend>
	</fieldset>
 
<div class="layui-tab">
  <ul class="layui-tab-title">
    <li class="layui-this" onclick="fianAll0()">待审批计划</li>
    <li>已批准计划查询</li>
    <li>不批准计划查询</li>
  </ul>
  <div class="layui-tab-content">
    <div class="layui-tab-item layui-show">
           
      
             <table class="layui-hide" id="myTab0" lay-filter="demo0"></table>
	           <div id="fenye"></div>
	 
<script id="barDemo0" type="text/html">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail0">查看</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit0">批准</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del0">不批准</a>
</script>
<script>
		layui.use('table', function() {
			var table = layui.table;
			
			layui.use('table', function(){
				  var table = layui.table;
				  //监听单元格编辑
				   table.render({
				    elem: '#myTab0'
				    ,height:500
				    ,url: 'plan/fianAll0' //数据接口
				    ,page: true //开启分页
				    ,cols: [[ //表头
				       //全选
				       //edit: 'text'为开启单元格编辑，sort:true开启排序
			   {field:'hr_plan_id', width:80, title: 'ID'}
		      ,{field:'hr_plan_number', width:80, title: '计划编号'}
		      ,{field:'hr_plan_name', width:80, title: '计划名称'}
		      ,{field:'hr_plan_ditch', width:80, title: '招聘渠道'}
		      ,{field:'hr_plan_budget', title: '预算费用', width: '10%', minWidth: 100} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
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
		      ,{fixed: 'right', width:178, align:'center', toolbar: '#barDemo0'}
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
			table.on('tool(demo0)', function(obj) {
				var data = obj.data;
				if (obj.event === 'detail0') {
					layer.msg('ID：' + data.hr_plan_id + ' 的查看操作');
				} else if (obj.event === 'del0') {
						$.ajax({
							url : "plan/updatestate2",
							data : {
								'id' : data.hr_plan_id
							},
							async:true,
							type : "post",
							dataType : 'text',
							success : function(data) {
								if(data>0){
									layer.msg("修改失败");
									location.reload();
								}else{
									layer.msg("修改成功");
									location.reload();
								}
							
						}
					});//判断
				} else if (obj.event === 'edit0') {
					layer.msg(data.hr_plan_id);
	                  $.ajax({
							url : "plan/updatestate1",
							data : {
								'id' : data.hr_plan_id
							},
							type : "post",
							dataType : 'text',
							success : function(data) {
								if(data>0){
									layer.msg("删除成功");
									location.reload();
								}else{
									layer.msg("修改失败");
									location.reload();
								}
							
						}
					});
				}
			});
	
		});
	</script>

            
    </div>
    <div class="layui-tab-item">
					 <table class="layui-hide" id="myTab1" lay-filter="demo1"></table>
	           <div id="fenye"></div>
	 
<script id="barDemo1" type="text/html">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail1">查看</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del1">不批准</a>
</script>
<script>
		layui.use('table', function() {
			var table = layui.table;
		
			layui.use('table', function(){
				  var table = layui.table;
				  //监听单元格编辑
				   table.render({
				    elem: '#myTab1'
				    ,height:500
				    ,url: 'plan/fianAll1' //数据接口
				    ,page: true //开启分页
				    ,cols: [[ //表头
				       //全选
				       //edit: 'text'为开启单元格编辑，sort:true开启排序
			   {field:'hr_plan_id', width:80, title: 'ID'}
		      ,{field:'hr_plan_number', width:80, title: '计划编号'}
		      ,{field:'hr_plan_name', width:80, title: '计划名称'}
		      ,{field:'hr_plan_ditch', width:80, title: '招聘渠道'}
		      ,{field:'hr_plan_budget', title: '预算费用', width: '10%', minWidth: 100} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
		      ,{field:'hr_plan_startdate', title: '开始日期'}
		      ,{field:'hr_plan_dateclosed', title: '结束日期'}
		      ,{field:'hr_plan_department', width:137, title: '招聘部门'}
		      ,{field:'hr_plan_post', width:137, title: '招聘岗位'}
		      ,{field:'hr_plan_count', title: '招聘人数'}
		      ,{field:'hr_plan_skilldate', width:137, title: '用工日期'}
		      ,{field:'user_name', width:137, title: '审批人'}
		      ,{field:'hr_plan_explain', width:137, title: '招聘说明'}
		      ,{field:'hr_plan_remark', width:137, title: '招聘备注'}
		      ,{field:'hr_plan_adjunct', width:137, title: '附件'}
		      ,{field:'hr_plan_state', width:137, title: '计划状态'}
		      ,{field:'hr_plan_username', width:137, title: '创建者用户名'}
		      ,{field:'hr_plan_auditingDate', width:137, title: '审批日期'}
		      ,{fixed: 'right', width:178, align:'center', toolbar: '#barDemo1'}
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
			table.on('tool(demo1)', function(obj) {
				var data = obj.data;
				if (obj.event === 'detail1') {
					layer.msg('ID：' + data.hr_plan_id + ' 的查看操作');
				} else if (obj.event === 'del1') {
						$.ajax({
							url : "plan/updatestate2",
							data : {
								'id' : data.hr_plan_id
							},
							async:true,
							type : "post",
							dataType : 'text',
							success : function(data) {
								if(data>0){
									layer.msg("修改失败");
									location.reload();
								}else{
									layer.msg("修改成功");
									location.reload();
								}
							
						}
					});//判断
				} 
			});
	
		});
	</script>
    </div>
    <div class="layui-tab-item">
                      <table class="layui-hide" id="myTab2" lay-filter="demo2"></table>
	           <div id="fenye"></div>
	 
<script id="barDemo2" type="text/html">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail2">查看</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit2">批准</a>
</script>
<script>
		layui.use('table', function() {
			var table = layui.table;

			layui.use('table', function(){
				  var table = layui.table;
				  //监听单元格编辑
				   table.render({
				    elem: '#myTab2'
				    ,height:500
				    ,url: 'plan/fianAll2' //数据接口
				    ,page: true //开启分页
				    ,cols: [[ //表头
				       //全选
				       //edit: 'text'为开启单元格编辑，sort:true开启排序
			   {field:'hr_plan_id', width:80, title: 'ID'}
		      ,{field:'hr_plan_number', width:80, title: '计划编号'}
		      ,{field:'hr_plan_name', width:80, title: '计划名称'}
		      ,{field:'hr_plan_ditch', width:80, title: '招聘渠道'}
		      ,{field:'hr_plan_budget', title: '预算费用', width: '10%', minWidth: 100} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
		      ,{field:'hr_plan_startdate', title: '开始日期'}
		      ,{field:'hr_plan_dateclosed', title: '结束日期'}
		      ,{field:'hr_plan_department', width:137, title: '招聘部门'}
		      ,{field:'hr_plan_post', width:137, title: '招聘岗位'}
		      ,{field:'hr_plan_count', title: '招聘人数'}
		      ,{field:'hr_plan_skilldate', width:137, title: '用工日期'}
		      ,{field:'user_name', width:137, title: '审批人'}
		      ,{field:'hr_plan_explain', width:137, title: '招聘说明'}
		      ,{field:'hr_plan_remark', width:137, title: '招聘备注'}
		      ,{field:'hr_plan_adjunct', width:137, title: '附件'}
		      ,{field:'hr_plan_state', width:137, title: '计划状态'}
		      ,{field:'hr_plan_username', width:137, title: '创建者用户名'}
		      ,{field:'hr_plan_auditingDate', width:137, title: '审批日期'}
		      ,{fixed: 'right', width:178, align:'center', toolbar: '#barDemo2'}
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
			table.on('tool(demo2)', function(obj) {
				var data = obj.data;
				if (obj.event === 'detail2') {
					layer.msg('ID：' + data.hr_plan_id + ' 的查看操作');
				} else if (obj.event === 'edit2') {
					layer.msg(data.hr_plan_id);
	                  $.ajax({
							url : "plan/updatestate1",
							data : {
								'id' : data.hr_plan_id
							},
							type : "post",
							dataType : 'text',
							success : function(data) {
								if(data>0){
									layer.msg("修改成功");
									location.reload();
								}else{
									layer.msg("修改失败");
									location.reload();
								}
							
						}
					});
				}
			});
	
		});
	</script>
       
    </div>
  </div>
</div>
  </body>
</html>
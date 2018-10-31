<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>部门工资上报</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="page/resources/layui/css/layui.css" media="all">
	<script type="text/javascript" src="page/resources/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="page/resources/layui/layui.js"></script>
	<script type="text/javascript" src="page/resources/layui/layui.all.js"></script>

  </head>
  
  <body>
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
      <ul class="layui-tab-title">
          <li class="layui-this">工资上报流程管理</li>
          <li>工资上报历史流程</li>
      </ul>
      <div class="layui-tab-content" style="height:100px;">
          <div class="layui-tab-item layui-show">
               <!--工资上报流程管理-->
                <h3 align="left">工资上报流程管理</h3>
			    <table class="layui-hide" id="myTab" lay-filter="myTab"></table>
			    <div id="fenye"></div>
          </div>
          <div class="layui-tab-item">
          <!--工资上报历史流程-->
                 <h3 align="left">工资上报历史流程</h3>
				<table class="layui-hide" id="myTab1" lay-filter="myTab1"></table>
				<div id="fenye1"></div>
			</div>
          </div>
</div>
<script type="text/html" id="barDemo">
 <a class="layui-btn layui-btn-xs" lay-event="luru">录入</a>
</script>
<script type="text/html" id="barDemo1">
 <a class="layui-btn layui-btn-xs" lay-event="chayue">查阅</a>
</script>
</body>
<script>
   /* 分页*/
	var table = layui.table; //定义全局变量  方便使用layui的表格
	var laypage = layui.laypage, layer = layui.layer; //定义全局变量  方便使用layui的分页条
		table.render({
			id : 'myTab', //table的id
			elem : '#myTab',   //同上
			//height : 700,  //表格的高度
			width:890,
			url : 'saldata/findByStatus',
			cols : [ [ 
			{field : 'salaryflow_creator',title : '流程创建人',sort : true}, 
			{field : 'salaryflow_begintime',title : '流程起始时间',sort : true,edit: 'text'}, 
			{field : 'salaryflow_endtime',title : '流程截止时间',sort : true,edit: 'text'},
			{field : 'salaryflow_year',title : '工资年份',sort : true,edit: 'text'}, 
			{field : 'salaryflow_month',title : '工资月份',sort : true,edit: 'text'},
			{field : 'salaryflow_mark',title : '备注',sort : true,edit: 'text'},
			{field : 'right',title:'操作', toolbar: '#barDemo', width:150} 
		                 ] ],
		           page:true,
		           })
	//监听行工具事件(编辑，删除按钮)
	table.on('tool(myTab)', function(obj) {
		var data = obj.data;
		//console.log(obj)
		if (obj.event === 'luru') {
			layer.msg(data.salaryflow_id);
			layer.open({
				type : 2,
				title : "上报页面",
				area : [ '90%', '490px' ],
				offset:['0','50'],
				content : "http://localhost:8080/oa/saldata/shangbao/" + data.salaryflow_id
			});
		}
	})
		table.render({
			id : 'myTab1', //table的id
			elem : '#myTab1',   //同上
			//height : 700,  //表格的高度
			width:890,
			url : 'saldata/findByStatus1',
			cols : [ [ 
			{field : 'salaryflow_creator',title : '流程创建人',sort : true}, 
			{field : 'salaryflow_begintime',title : '流程起始时间',sort : true,edit: 'text'}, 
			{field : 'salaryflow_endtime',title : '流程截止时间',sort : true,edit: 'text'},
			{field : 'salaryflow_year',title : '工资年份',sort : true,edit: 'text'}, 
			{field : 'salaryflow_month',title : '工资月份',sort : true,edit: 'text'},
			{field : 'salaryflow_mark',title : '备注',sort : true,edit: 'text'},
			{field : 'right',title:'操作', toolbar: '#barDemo1', width:150} 
		          ] ],
		        page:true,
		     })
			//监听行工具事件(编辑，删除按钮)
			table.on('tool(myTab1)', function(obj) {
				var data = obj.data;
				 if (obj.event === 'chayue') {
					layer.msg(data.salaryflow_id);
					layer.open({
						type : 2,
						title : "查阅页面",
						area : [ '90%', '490px' ],
						offset:['0','50'],
						content : "http://localhost:8080/oa/saldata/chayue/" + data.salaryflow_id
					});
				}
			})
	
</script>
</html>
<script type="text/javascript">
layui.use('element',function(){
    var $=layui.jquery,element=layui.element;//Tab的切换事件监听等，需要依赖element模块
    //触发事件
    var active={
        tabChange:function(){
           //切换到指定Tab项
           element.tabChange('demo','22');//切换到：工资上报历史流程  
        }
    };
});
    /* 页面刷新调用查询方法 */
   $(function(){
   })
   /* 页面刷新 */
   function refresh(){
       window.location.reload();//刷新当前页面
       //或者下方刷新方法
       //parent.location.reload()刷新父亲对象（用于框架）---需在iframe框架内使用
       //opener.location.reload()刷新父窗口对象（用于单开窗口）
       //top.location.reload()刷新最顶端对象（用于多开窗口）
   }
</script>


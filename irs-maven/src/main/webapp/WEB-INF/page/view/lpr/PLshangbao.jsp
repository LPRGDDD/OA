<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ include file="/WEB-INF/page/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>批量上报页面</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
<meta http-equiv="expires" content="Wed, 26 Feb 1997 08:21:57 GMT">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="${ctx }/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="${ctx }/css/font_eolqem241z66flxr.css"
	media="all" />
<link rel="stylesheet" href="${ctx }/css/list.css" media="all" />
<script>
	var ctx = "${ctx}";
</script>
</head>
<body class="childrenBody">
	<blockquote class="layui-elem-quote news_search">
		<form class="layui-form">
			<div>
				<div class="layui-inline">
					<div class="layui-input-inline">
						<input type="text" id="nickname" value="" placeholder="请输入姓名"
							class="layui-input search_input">
					</div>
					<div class="layui-input-inline layui-form">
						<select name="sex" class="" id="sex">
							<option value="-1">请选择性别</option>
							<option value="1">男</option>
							<option value="0">女</option>
							<option value="2">保密</option>
						</select>
					</div>
					<div class="layui-inline">
					<input type="text" id="createTimeStart"
						class="layui-input userName" name="createTimeStart"
						placeholder="输入工资(开始)" value="">
					</div>
					<div class="layui-inline">
						<input type="text" id="createTimeEnd" class="layui-input userName"
							name="createTimeEnd" placeholder="输入工资(结束)" value="">
					</div>
					<a class="layui-btn search_btn" lay-submit="" data-type="search"
						lay-filter="search">查询</a>
				</div>
			</div>
	</blockquote>
	</form>
	<div class="layui-form">
		<table id="userList" lay-filter="userList"></table>
	</div>
	<script type="text/javascript" src="${ctx }/layui/layui.js"></script>
	<script type="text/html" id="toolbarDemo">
 	<div class="layui-btn-container">
    	<button class="layui-btn layui-btn-sm" lay-event="getCheckData">上报</button>
   		<button class="layui-btn layui-btn-sm" lay-event="getCheckLength">上报数目</button>
  	    <button class="layui-btn layui-btn-sm" lay-event="isAll">是否全选</button>
  	</div>
	</script>
	<script type="text/html" id="barEdit">
			<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	</script>
	<script>
		layui.config({
				base : "js/"
			})
			.use(
				[ 'form', 'layer', 'jquery', 'table', 'laydate' ],
				function() {
					var form = layui.form,table = layui.table,layer = parent.layer === undefined ? layui.layer: parent.layer,laydate = layui.laydate
					$ = layui.jquery,nowTime = new Date().valueOf(),
					max = null,
					active = {
						search : function() {
							var nickname = $('#nickname'),sex = $('#sex option:selected'),status = $('#status option:selected');
							createTimeStart = $("#createTimeStart"),
							createTimeEnd = $("#createTimeEnd");
							//执行重载
							table.reload('userList',
									{
										page : {
											curr : 1
										//重新从第 1 页开始
										},
										where : {
											//key: {
											nickname : nickname.val(),
											sex : sex.val(),
											status : status.val(),
											createTimeStart : createTimeStart.val(),
											createTimeEnd : createTimeEnd.val()
										//}
										}
									});
						}
					};
	
					var start = laydate.render({
						elem : '#createTimeStart',
						type : 'datetime',
						max : nowTime,
						btns : [ 'clear', 'confirm' ],
						done : function(value, date) {
							endMax = end.config.max;
							end.config.min = date;
							end.config.min.month = date.month - 1;
						}
					});
					var end = laydate.render({
						elem : '#createTimeEnd',
						type : 'datetime',
						max : nowTime,
						done : function(value, date) {
							if ($.trim(value) == '') {
								var curDate = new Date();
								date = {
									'date' : curDate.getDate(),
									'month' : curDate.getMonth() + 1,
									'year' : curDate.getFullYear()
								};
							}
							start.config.max = date;
							start.config.max.month = date.month - 1;
						}
					})
	
					//加载页面数据
					table.render({
							id : 'userList',
							elem : '#userList',
							url : ctx + '/personxc/findPage', //数据接口
							limit : 10, //每页默认数
							limits : [ 10, 20, 30, 40 ],
							totalRow: true,
							toolbar: '#toolbarDemo',
							cols : [ [ //表头
						 	   {type: 'checkbox', fixed: 'left'},
							   {field : 'personxc_id',title : '编号',fixed: 'left',sort : true,width:80,align:'center',totalRowText: '合计',unresize: true},//员工薪酬基数编号
							   {field : 'fullname',title : '用户名称',fixed: 'left',width:100,align:'center'},//用户名称
							   {field : 'personxc_s1',title : '基本工资',width:100, totalRow: true},//薪酬项目1
							   {field : 'personxc_s2',title : '劳务费',edit: 'text',width:100,align:'center', totalRow: true},//薪酬项目2 
							   {field : 'personxc_s3',title : '奖金',edit: 'text',width:100,align:'center', totalRow: true},//薪酬项目3
							   {field : 'personxc_s4',title : '房帖',edit: 'text',width:100,align:'center', totalRow: true},//薪酬项目4
							   {field : 'personxc_s5',title : '资金',edit: 'text',width:100,align:'center', totalRow: true},//薪酬项目5
							   {field : 'personxc_s6',title : '高温费',edit: 'text',width:100,align:'center', totalRow: true},//薪酬项目6
							   {field : 'personxc_s7',title : '迟到扣款',edit: 'text',width:100,align:'center', totalRow: true},//薪酬项目7
							   {field : 'personxc_s8',title : '薪酬项目8',edit: 'text',width:120,align:'center', totalRow: true},//薪酬项目8
							   /* {field : 'personxc_s9',title : '薪酬项目9',edit: 'text',width:120,align:'center'},
							   {field : 'personxc_s10',title : '薪酬项目10',edit: 'text',width:120,align:'center'}, */
							   {field : 'personxc_insurejs',title : '保险基数',edit: 'text',width:120,align:'center', totalRow: true},//员工保险基数 
							   {field : 'personxc_ylinsure',title : '养老保险',edit: 'text',width:120,align:'center', totalRow: true},//员工养老保险
							   {field : 'personxc_dwyl',title : '单位养老',edit: 'text',width:120,align:'center', totalRow: true},//员工单位养老
							   {field : 'personxc_gryl',title : '个人养老',edit: 'text',width:120,align:'center', totalRow: true},//员工个人养老
							   {field : 'personxc_ylbx',title : '医疗保险',edit: 'text',width:120,align:'center', totalRow: true},//员工医疗保险
							   {field : 'personxc_dw_medical',title : '单位医疗',edit: 'text',width:120,align:'center', totalRow: true},//员工单位医疗
							   {field : 'personxc_grmedical',title : '个人医疗',edit: 'text',width:120,align:'center', totalRow: true},//员工个人医疗
							   {field : 'personxc_group',title : '生育保险',edit: 'text',width:120,align:'center', totalRow: true},//员工生育保险
							   {field : 'personxc_dwsy',title : '单位生育',edit: 'text',width:120,align:'center', totalRow: true},//员工单位生育
							   {field : 'personxc_sybx',title : '失业保险',edit: 'text',width:120,align:'center', totalRow: true},//员工失业保险
							   {field : 'personxc_dwshiye',title : '单位失业',edit: 'text',width:120,align:'center', totalRow: true},//员工单位失业
							   {field : 'personxc_grsy',title : '个人失业',edit: 'text',width:120,align:'center', totalRow: true},//员工个人失业
							   {field : 'personxc_gsbx',title : '工伤保险',edit: 'text',width:120,align:'center', totalRow: true},//员工工伤保险
							   {field : 'personxc_dwgs',title : '单位工伤',edit: 'text',width:120,align:'center', totalRow: true},//员工单位工伤
							   {field : 'personxc_housingfund',title : '住房公积金',edit: 'text',width:120,align:'center', totalRow: true},//员工住房公积金
							   {field : 'personxc_dwzf',title : '单位住房',edit: 'text',width:120,align:'center', totalRow: true},//员工单位住房
							   {field : 'personxc_grzf',title : '个人住房',edit: 'text',width:120,align:'center', totalRow: true},//员工个人住房
							   {field : 'personxc_expression',title : '表现',edit: 'text',width:120,align:'center'},//员工表现
							   {field : 'salSsalary',title : '实发工资', totalRow: true,edit: 'text',width:120,align:'center', totalRow: true,fixed: 'right',templet: function(d){
       							 return d.personxc_s1+d.personxc_s2+d.personxc_s3+d.personxc_s4+d.personxc_s5+d.personxc_s6+d.personxc_s7-d.personxc_gryl-d.personxc_grmedical-d.personxc_grsy-d.personxc_grzf
     							 }},
  							 ] ],
							page : true,
						});
					  /* table.on('edit(userList)',function(obj){
					  	var data=obj.data;  //得到所在行的所有键值
					  	layer.alert(JSON.stringify(data));
					  }) */
					 //工具栏事件:左侧全选
					  table.on('toolbar(userList)', function(obj){
					    var checkStatus = table.checkStatus(obj.config.id);
					    switch(obj.event){
					      case 'getCheckData':
					        var c = table.checkStatus('userList'); 
					        var data = checkStatus.data;
					        var lengths = checkStatus.data.length;
							var id = "";
							for (var i = 0; i < lengths; i++) {
								id += c.data[i].id + ","
							}
							//layer.alert();
							layer.confirm('确定添加<strong>'+ data.length+ '</strong>条数据吗？',function(index) {
						        $.ajax({
									url : "http://localhost:8080/oa/saldata/PLInsert?userStr="+id+"&salaryflowIdStr="+${salaryflow_id}+"",
									type : 'post',
									contentType:"application/json;charset=utf-8",
									data:JSON.stringify(data),
									dataType : 'text',
									success : function(data) {
										layer.closeAll();
										alert(data);
										
									}
								})
							})
					      break;
					      case 'getCheckLength':
					        var data = checkStatus.data;
					        layer.msg('选中了：'+ data.length + ' 个');
					      break;
					      case 'isAll':
					        layer.msg(checkStatus.isAll ? '全选': '未全选')
					      break;
					    };
					  });
					//查询
					$(".search_btn").click(function() {
						var type = $(this).data('type');
						active[type] ? active[type].call(this) : '';
					})
	
				})
	</script>
</body>
</html>
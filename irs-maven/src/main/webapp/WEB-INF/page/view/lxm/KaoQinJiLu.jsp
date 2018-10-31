<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'KaoQinJiLu.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="page/resources/layui/css/layui.css"
	media="all">
<script src="page/resources/jquery-1.11.3.min.js"></script>
<script src="page/resources/jquery.form.js"></script>
<script src="page/resources/jqueryExt.js"></script>
<script src="page/resources/layui/layui.js"></script>
<script src="page/resources/layui/layui.all.js" charset="utf-8"></script>
<link href="<c:url value="/page/resources/layui/css/layui.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/page/resources/bootstrap/css/bootstrap.min.css" />"
	media="all" rel="stylesheet">
<script src="<c:url value="/page/resources/jquery-1.11.3.min.js" />"
	charset="utf-8"></script>
<script type="text/javascript"
	src="<c:url value="/page/resources/bootstrap/js/bootstrap.min.js" />"></script>
<style type="text/css">
.lxm {
	width: 250px;
}

.yan {
	color: red;
	font-size: 20px;
}
</style>
</head>
<!--排班记录  -->
<script>
	$(function() {
		$.ajax({
			url : "duty/queryAll",
			type : "post",
			data : {
				'id' : $("#id").val()
			},
			dataType : "json",
			success : function(data) {}
		})
	})
</script>
<body>
	
	<div class="layui-tab">
		<ul class="layui-tab-title">
			<li class="layui-this">考勤记录</li>
			<li>考勤统计</li>
		</ul>
		<div class="layui-tab-content">
			<div class="layui-tab-item layui-show">
				<input type="hidden" id="id" value="<shiro:principal property="id"/>">
				<div class="demoTable">
					搜索日期：
					<div class="layui-inline">
						<input name="username" class="layui-input" id="test1"
							autocomplete="off">
					</div>
					<button class="layui-btn" lay-submit="" data-type="sousuo">搜索</button>
				</div>
				<table class="layui-hide" lay-filter="demo1" id="test"></table>
			</div>
			<!--考勤统计  -->
			<div class="layui-tab-item">
					<div class="demoTable">
					搜索日期：
					<div class="layui-inline">
						<input name="" class="layui-input" id="test50"
							autocomplete="off">
					
							<input name="" class="layui-input" id="test51"
							autocomplete="off">
					</div>
					<button class="layui-btn" lay-submit="" data-type="sousuo1">搜索</button>
				</div>
					<table class="layui-hide" id="test5" lay-filter="test"></table>
				<script>
					var today = new Date();
					var H = today.getFullYear();
					var M = today.getMonth() + 1;
					var R = today.getDate();
					var h = today.getHours();
					var mm = today.getMinutes();
					var ss = today.getSeconds();
					var xitong = H + "-" + M + "-" + R;
					var day= H + "-" + M + "-" + "01";
					var id=$("#id").val();
				layui.use('table', function(){
				  var table = layui.table;
				  table.render({
				    elem: '#test5'
				    ,url:'duty/TongJi'
				    ,toolbar: 'default'
				    ,title: '用户数据表'
				  ,totalRow: true
				    ,where : {
						id : id,
						date1:day,
						date2:xitong
					}
				    ,cols:[[
				      {field:'username', title:'姓名', width:80, fixed: 'left', unresize: true, totalRowText: '合计行'}
				      ,{field:'yingchu', title:'应出勤天数', width:150}
     				  ,{field:'shichu', title:'实际出勤天数', width:150}
     				  ,{field:'xiutian', title:'休息天数', width:150}
     				  ,{field:'quetian', title:'缺勤天数', width:150}
     				  ,{field:'chici', title:'迟到次数', width:150}
     				  ,{field:'zaoci', title:'早退次数', width:150}
     				  ,{field:'qingci', title:'请假次数', width:150}
     				  ,{field:'jiaci', title:'加班次数', width:150}
     				  ,{field:'chuci', title:'出差次数', width:150}
     				  ,{field:'waici', title:'外出次数', width:150}
				    ]]
				    ,page: true
				    ,id:'testReload1'
				    ,response: {
				      statusCode: 0 //重新规定成功的状态码为 200，table 组件默认为 0
				    }
				  });
				  var $ = layui.$,
							active = {
								sousuo1 : function() {
									var demoReload = $('#test50').val();
									var demoReload1 = $('#test51').val();
									//执行重载
									table.reload('testReload1', {
										page : {
											curr : 1 //重新从第 1 页开始
										},
										where : {
											date1 :demoReload,
											date2 :demoReload1
										}
									});
								}
							};
				
						$('.demoTable .layui-btn').on('click', function() {
							var type = $(this).data('type');
							active[type] ? active[type].call(this) : '';
						});
					
				});
				
				</script>
					
			</div>
		</div>
	</div>

	<!--动态Tab  -->
	<script>
				$(function(){
					var today = new Date();
					var H = today.getFullYear();
					var M = today.getMonth() + 1;
					var R = today.getDate();
					var h = today.getHours();
					var mm = today.getMinutes();
					var ss = today.getSeconds();
					var xitong = H + "-" + M + "-" + R;
					var day= H + "-" + M + "-" + "01";
					$("#test51").val(xitong);
					$("#test50").val(day);
				})
	</script>
	<script>
		layui.use('element', function() {
			var $ = layui.jquery,
				element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块
	
			//触发事件
			var active = {
				tabAdd : function() {
					//新增一个Tab项
					element.tabAdd('demo', {
						title : '新选项' + (Math.random() * 1000 | 0), //用于演示
						content : '内容' + (Math.random() * 1000 | 0),
						id : new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
					})
				},
				tabDelete : function(othis) {
					//删除指定Tab项
					element.tabDelete('demo', '44'); //删除：“商品管理”
	
	
					othis.addClass('layui-btn-disabled');
				},
				tabChange : function() {
					//切换到指定Tab项
					element.tabChange('demo', '22'); //切换到：用户管理
				}
			};
	
			$('.site-demo-active').on('click', function() {
				var othis = $(this),
					type = othis.data('type');
				active[type] ? active[type].call(this, othis) : '';
			});
	
			//Hash地址的定位
			var layid = location.hash.replace(/^#test=/, '');
			element.tabChange('test', layid);
	
			element.on('tab(test)', function(elem) {
				location.hash = 'test=' + $(this).attr('lay-id');
			});
	
		});
	</script>
		<script>
					var num = $("#id").val();
					var today = new Date();
					var H = today.getFullYear();
					var M = today.getMonth() + 1;
					var R = today.getDate();
					var h = today.getHours();
					var mm = today.getMinutes();
					var ss = today.getSeconds();
					var xitong = H + "-" + M + "-" + R;
					layui.use('table', function() {
						var table = layui.table;
						table.on('checkbox(demo1)', function(obj) {
							console.log(obj)
						});
						table.render({
							elem : '#test',
							url : 'pbjl/selectId',
							cellMinWidth : 80, //全局定义常规单元格的最小宽度，layui 2.2.1 新增
							where : {
								id : num,
								date : xitong
							},
							cols : [ [
								{
									field : 'pdate',
									title : '日期',
									sort : true
								}
								, {
									field : 'timeState1',
									title : '上班登记'
								} //width 支持：数字、百分比和不填写。你还可以通过 minWidth 参数局部定义当前单元格的最小宽度，layui 2.2.1 新增
								, {
									field : 'timeState2',
									title : '下班登记'
								}
								, {
									field : 'timeState3',
									title : '上班登记'
								}
								, {
									field : 'timeState4',
									title : '下班登记'
								}
							] ],
							id : 'testReload',
							page : true
						});
						var $ = layui.$,
							active = {
								sousuo : function() {
									var demoReload = $('#test1');
									//执行重载
									table.reload('testReload', {
										page : {
											curr : 1 //重新从第 1 页开始
										},
										where : {
											date : demoReload.val()
										}
									});
								},
								getCheckLength : function() { //获取选中数目
									var checkStatus = table.checkStatus('idTest'),
										data = checkStatus.data;
									layer.msg('选中了：' + data.length + ' 个');
								},
								isAll : function() { //验证是否全选
									var checkStatus = table.checkStatus('idTest');
									layer.msg(checkStatus.isAll ? '全选' : '未全选')
								}
							};
				
						$('.demoTable .layui-btn').on('click', function() {
							var type = $(this).data('type');
							active[type] ? active[type].call(this) : '';
						});
					});
				</script>
	<script>
		layui.use('laydate', function() {
			var laydate = layui.laydate;
			//常规用法
			laydate.render({
				elem : '#test1'
			});
			//常规用法
			laydate.render({
				elem : '#test50'
			});
			laydate.render({
				elem : '#test51'
			});
		});
	</script>
</body>
</html>

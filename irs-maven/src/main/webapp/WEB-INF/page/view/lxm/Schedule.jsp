<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>My JSP 'Schedule.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="page/resources/layui/css/layui.css" media="all">
<link rel="stylesheet" href="page/resources/calendar.css">
<link
	href="page/resources/bootstrap-datetimepicker/sampleinbootstrap/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<link
	href="page/resources/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" media="screen">
<script src="page/resources/jquery-1.11.3.min.js"></script>
<script src="page/resources/calendar.js"></script>
<script src="page/resources/jquery.form.js"></script>
<script src="page/resources/jqueryExt.js"></script>
<script src="page/resources/layui/layui.js"></script>

<link rel="stylesheet" href="page/resources/layui/css/layui.css" media="all">
<script src="page/resources/jquery-1.11.3.min.js"></script>
<script src="page/resources/jquery.form.js"></script>
<script src="page/resources/jqueryExt.js"></script>
<script src="page/resources/layui/layui.js"></script>
<script src="page/resources/layui/layui.all.js" charset="utf-8"></script>
<script src="page/resources/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="layui-tab">
		<ul class="layui-tab-title">
			<li class="layui-this">班次查询</li>
			<li>新建班次</li>
		</ul>
		<div class="layui-tab-content">
			<div class="layui-tab-item layui-show">
				<table class="layui-table" id="tableDemo" lay-filter="demo">
				</table>

				<script id="barDemo" type="text/html">
               <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="edit">编辑</a>
               <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	          </script>

			</div>
			<div class="layui-tab-item">
				<form class="layui-form form-horizontal" action="" id="form1"
					lay-filter="example">
					<div class="layui-form-item ">
						<label class="layui-form-label">班次名称</label>
						<div class="layui-input-block">
							<div class="control-group">
								<input name="sname" id="sname" class="layui-input" type="text"
									placeholder="请输入班次名称" autocomplete="off" lay-verify="title">
								<i class="fa fa-calendar"></i>
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">第一次记录</label>
						<div class="layui-input-block">
							<div class="input-append date form_time" data-date=""
								data-date-format="hh:ii" data-link-field="dtp_input3"
								data-link-format="hh:ii">
								<input size="16" type="text" name="dutyTime1" id="dutyTime1"
									value="签到时间" readonly> <span class="add-on"><i
									class="icon-remove"></i></span> <span class="add-on"><i
									class="icon-th"></i></span>
							</div>
							<input type="hidden" id="dtp_input3" value="" /><br />

						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">第二次记录</label>
							<div class="layui-input-block">
								<div class="input-append date form_time" data-date=""
									data-date-format="hh:ii" data-link-field="dtp_input3"
									data-link-format="hh:ii">
									<input size="16" type="text" name="dutyTime2" id="dutyTime2"
										value="签到时间" readonly> <span class="add-on"><i
										class="icon-remove"></i></span> <span class="add-on"><i
										class="icon-th"></i></span>
								</div>
								<input type="hidden" id="dtp_input3" value="" /><br />
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">第三次记录</label>
							<div style=" position: relative;left:32px;"
								class="input-append date form_time" data-date=""
								data-date-format="hh:ii" data-link-field="dtp_input3"
								data-link-format="hh:ii">
								<input size="16" type="text" name="dutyTime3" id="dutyTime3"
									value="签到时间" readonly> <span class="add-on"><i
									class="icon-remove"></i></span> <span class="add-on"><i
									class="icon-th"></i></span>
							</div>
							<input type="hidden" id="dtp_input3" value="" /><br />
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">第四次记录</label>
							<div style=" position: relative;left:32px;"
								class="input-append date form_time" data-date=""
								data-date-format="hh:ii" data-link-field="dtp_input3"
								data-link-format="hh:ii">
								<input size="16" type="text" name="dutyTime4" id="dutyTime4"
									value="签到时间" readonly> <span class="add-on"><i
									class="icon-remove"></i></span> <span class="add-on"><i
									class="icon-th"></i></span>
							</div>
							<input type="hidden" id="dtp_input3" value="" /><br />
						</div>
						<div class="layui-form-item">
							<div class="layui-input-block">
								<button class="layui-btn" lay-filter="demo1" lay-submit=""
									id="but" onclick="save()">立即提交</button>
							</div>
						</div>
				</form>
			</div>
		</div>
	</div>
	<!-- javascript  -->
	<script src="page/resources/jquery-1.12.4.min.js"></script>
	<script src="page/resources/calendar.js"></script>
	<script type="text/javascript"
		src="page/resources/bootstrap-datetimepicker/sampleinbootstrapv3/jquery/jquery-1.8.3.min.js"
		charset="UTF-8"></script>
	<script type="text/javascript"
		src="page/resources/bootstrap-datetimepicker/sampleinbootstrap/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="page/resources/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"
		charset="UTF-8"></script>
	<script type="text/javascript"
		src="page/resources/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.fr.js"
		charset="UTF-8"></script>
	<script type="text/javascript">
		$('.form_datetime').datetimepicker({
			//language:  'fr',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			forceParse : 0,
			showMeridian : 1
		});
		$('.form_date').datetimepicker({
			language : 'fr',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			minView : 2,
			forceParse : 0
		});
		$('.form_time').datetimepicker({
			language : 'fr',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 1,
			minView : 0,
			maxView : 1,
			forceParse : 0
		});
	</script>
	<script>
		$(function() {
			$('#calendar').calendar();
		})
	</script>
	<script src="resources/layui/layui.js" charset="utf-8"></script>
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
    elem: '#tableDemo'
    ,height: 500
    ,url: 'schedule/findAll' //数据接口
    ,page: true //开启分页
    ,cols: [[ //表头
       //全选
       //edit: 'text'为开启单元格编辑，sort:true开启排序
      {field:'scid', title: 'ID', width:80, sort: true}
      ,{field:'sname', title: '班次名称', width:150, edit: 'text'}
      ,{field:'duty_time1',title: '第一次签到时间', width:150,  edit: 'text'}
      ,{field:'duty_time2',title: '第二次签到时间', width:150,  edit: 'text'}
      ,{field:'duty_time3',title: '第三次签到时间', width:150,  edit: 'text'}
      ,{field:'duty_time4',title: '第四次签到时间', width:150,  edit: 'text'}
      ,{width:200, align:'center', toolbar: '#barDemo'}
    ]]
  });
  table.on('edit(demo)', function(obj){
    var value = obj.value //得到修改后的值
    ,data = obj.data //得到所在行所有键值
    ,field = obj.field; //得到字段
    layui.use('jquery',function(){
      var $=layui.$;
      $.ajax({  
          type: 'post',  
          url: "schedule/update", // ajax请求路径  
          data: {  
              scid:data.scid,
              sname:data.sname,
              duty_time1:data.duty_time1,
              duty_time2:data.duty_time2,
              dutyTime3:data.duty_time3,
              dutyTime4:data.duty_time4,
          },  
          success: function(data){ 
              layer.msg('修改成功');
          }  
      });     
    }); 
  });
});
			//监听工具条
			table.on('tool(demo)', function(obj) {
				var data = obj.data;
				if (obj.event === 'detail') {
					layer.msg('ID：' + data.sfId + ' 的查看操作');
				} else if (obj.event === 'del') {
					layer.confirm('真的删除行么', function(index) {
						obj.del();
						layer.close(index);
						$.ajax({
							url : "schedule/delete",
							data : {
								'scid' : data.scid
							},
							type : "post",
							dataType : 'Json',
							success : function(data) {
								layer.msg("删除成功");
								location.reload();
							}
						})
					});
	
	
				} else if (obj.event === 'edit') {
					layer.open({
            type:2,
            title:"查找班次",
            area: ['90%','90%'],
            offset: ['10px', '100px'],
            content:"http://localhost:8080/oa/schedule/findById/"+data.scid
        });
	
	
					
				}
			});
	
			var $ = layui.$,
				active = {
					getCheckData : function() { //获取选中数据
						var checkStatus = table.checkStatus('idTest'),
							data = checkStatus.data;
						layer.alert(JSON.stringify(data));
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
		//添加
		function save() {
			var obj = $("#form1").serialize();
			alert(obj);
			$.ajax({
				url : "schedule/save",
				type : "post",
				data : {
					"sname" : $("#sname").val(),
					"duty_time1" : $("#dutyTime1").val(),
					"duty_time2" : $("#dutyTime2").val(),
					"duty_time3" : $("#dutyTime3").val(),
					"duty_time4" : $("#dutyTime4").val()
				},
				dataType : 'text', //返回的数据类型
				success : function(data) {
					if(data>0){
					alert("添加成功");
					}else{
					alert("添加失败");
					}
				}
			})
		}
	</script>
	<!--动态Tab  -->
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
</body>
</html>

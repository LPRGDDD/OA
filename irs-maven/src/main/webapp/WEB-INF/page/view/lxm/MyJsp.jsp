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

<title>My JSP 'MyJsp.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">

<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="page/resources/layui/css/layui.css" media="all">
<script src="page/resources/jquery-1.11.3.min.js"></script>
<script src="page/resources/jquery.form.js"></script>
<script src="page/resources/jqueryExt.js"></script>
<script src="page/resources/layui/layui.js"></script>
<script src="page/resources/layui/layui.all.js" charset="utf-8"></script>
<link href="<c:url value="page/resources/layui/css/layui.css" />"
	rel="stylesheet">
<%-- <link
	href="<c:url value="page/resources/bootstrap/css/bootstrap.min.css" />"
	media="all" rel="stylesheet"> --%>
<script src="<c:url value="page/resources/jquery-1.11.3.min.js" />"
	charset="utf-8"></script>
<script type="text/javascript"
	src="<c:url value="page/resources/bootstrap/js/bootstrap.min.js" />"></script>
</head>

<body>
	<div class="layui-tab">
		<ul class="layui-tab-title">
			<li class="layui-this">免签节假日</li>
			<li>添加免签节假日</li>
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
				<form class="layui-form" action=""  id="form1" lay-filter="example">
					<div class="layui-form-item">
						<label class="layui-form-label">节假日名称</label>
						<div class="layui-input-block">
							<input name="sfName" class="layui-input" type="text"
								placeholder="请输入节假日名称" autocomplete="off" lay-verify="title">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">开始日期</label>
						<div class="layui-input-block">
							<input name="sfTime" class="layui-input" type="date"
								placeholder="请输入开始日期" autocomplete="off" lay-verify="title">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">结束日期</label>
						<div class="layui-input-block">
							<input name="sfTimeEnd" class="layui-input" type="date"
								placeholder="请输入结束日期" autocomplete="off" lay-verify="title">
						</div>
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
	<!--业务  -->
	<script type="text/javascript">
		$(function() {
			findAll();
		})
		
			//添加
		function save(){
			var obj=$("#form1").serialize();
			alert(obj);
			$.ajax({
	        	url : "Festival/save",
	        	type : "post",
	        	async : true,
	        	data : $("#form1").serialize(),//将json对象转换成json格式的字符串
	       	 	dataType : 'text',//返回的数据类型
	        	success : function(data) {
	        		alert(data);
	        	}
	 		});
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
	<!--弹出框  -->
	<script>
		layui.use('layer', function() { //独立版的layer无需执行这一句
			var $ = layui.jquery,
				layer = layui.layer; //独立版的layer无需执行这一句
	
			//触发事件
			var active = {
				setTop : function() {
					var that = this;
					//多窗口模式，层叠置顶
					layer.open({
						type : 2, //此处以iframe举例
						title : '当你选择该窗体时，即会在最顶端',
						area : [ '390px', '260px' ],
						shade : 0,
						maxmin : true,
						offset : [ //为了演示，随机坐标
							Math.random() * ($(window).height() - 300)
							, Math.random() * ($(window).width() - 390)
						],
						content : '//layer.layui.com/test/settop.html',
						btn : [ '继续弹出', '全部关闭' ], //只是为了演示
						yes : function() {
							$(that).click();
						},
						btn2 : function() {
							layer.closeAll();
						},
						zIndex : layer.zIndex, //重点1
						success : function(layero) {
							layer.setTop(layero); //重点2
						}
					});
				},
				confirmTrans : function() {
					//配置一个透明的询问框
					layer.msg('大部分参数都是可以公用的<br>合理搭配，展示不一样的风格', {
						time : 20000, //20s后自动关闭
						btn : [ '明白了', '知道了', '哦' ]
					});
				},
				notice : function() {
					//示范一个公告层
					layer.open({
						type : 1,
						title : false, //不显示标题栏
						closeBtn : false,
						area : '300px;',
						shade : 0.8,
						//id : 'LAY_layuipro', //设定一个id，防止重复弹出
						btn : [ '火速围观', '残忍拒绝' ],
						btnAlign : 'c',
						moveType : 1, //拖拽模式，0或者1
						content : "'<div style='padding: 22px; line-height: 1000px; background-color: #393D49; color: #fff; font-weight: 300;'>" +
							"<form class='layui-form' action='' lay-filter='example'>" +
							"<div class='layui-form-item'>" +
							"<label class='layui-form-label'>节假日名称</label>" +
							"</div>" +
							"<form>" +
							"</div>'",
	
						success : function(layero) {
				
				
							var btn = layero.find('.layui-layer-btn');
							btn.find('.layui-layer-btn0').attr({
								href : 'http://www.layui.com/',
								target : '_blank'
							});
						}
					});
				},
				offset : function(othis) {
					var type = othis.data('type'),
						text = othis.text();
	
					layer.open({
						type : 1,
						offset : type,
						id : 'layerDemo' + type, //防止重复弹出
						content : '<div style="padding: 20px 100px;">' + text + '</div>',
						btn : '关闭全部',
						btnAlign : 'c', //按钮居中
						shade : 0, //不显示遮罩
						yes : function() {
							layer.closeAll();
						}
					});
				}
			};
	
			$('#layerDemo .layui-btn').on('click', function() {
				var othis = $(this),
					method = othis.data('method');
				active[method] ? active[method].call(this, othis) : '';
			});
	
		});
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
    ,url: 'Festival/findAll' //数据接口
    ,page: true //开启分页
    ,cols: [[ //表头
       //全选
       //edit: 'text'为开启单元格编辑，sort:true开启排序
      {field:'sfName', title: '节假名称', sort: true, edit: 'text'}
      ,{field:'sfTime',title: '开始时间',  sort: true ,templet : '<div>{{ formatTime(d.sfTime,"yyyy-MM-dd hh:mm:ss")}}</div>'}
      ,{field:'sfTimeEnd',title: '结束时间', sort: true,templet : '<div>{{ formatTime(d.sfTimeEnd,"yyyy-MM-dd hh:mm:ss")}}</div>'}
      ,{width:200, align:'center', toolbar: '#barDemo'}
    ]]
  });
  table.on('edit(demo)', function(obj){
    var value = obj.value //得到修改后的值
    ,data = obj.data //得到所在行所有键值
    ,field = obj.field; //得到字段
    layer.msg(data.sfId);
    layui.use('jquery',function(){
      var $=layui.$;
      $.ajax({  
          type: 'post',  
          url: "Festival/nihao", // ajax请求路径  
          data: {  
              id:data.sfId,
              name:data.sfName,
              time:data.sfTime,
              timeEnd:data.sfTimeEnd,
              field:field,
              value:value
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
							url : "Festival/delete",
							data : {
								'id' : data.sfId
							},
							type : "post",
							dataType : 'Json',
							success : function(data) {
								layer.msg("删除成功");
							}
						})
					});
	
	
				} else if (obj.event === 'edit') {
					layer.open({
			            type:2,
			            title:"修改节假日",
			            area: ['90%','90%'],
			            offset: ['10px', '100px'],
			            content:"http://localhost:8080/oa/Festival/queryById/"+data.sfId
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
		//格式化时间
		function formatTime(datetime, fmt) {
			if (datetime == null || datetime == 0) {
				return "";
			}
			if (parseInt(datetime) == datetime) {
				if (datetime.length == 10) {
					datetime = parseInt(datetime) * 1000;
				} else if (datetime.length == 13) {
					datetime = parseInt(datetime);
				}
			}
			datetime = new Date(datetime);
			var o = {
				"M+" : datetime.getMonth() + 1, //月份   
				"d+" : datetime.getDate(), //日   
				"h+" : datetime.getHours(), //小时   
				"m+" : datetime.getMinutes(), //分   
				"s+" : datetime.getSeconds(), //秒   
				"q+" : Math.floor((datetime.getMonth() + 3) / 3), //季度   
				"S" : datetime.getMilliseconds()
			//毫秒   
			};
			if (/(y+)/.test(fmt))
				fmt = fmt.replace(RegExp.$1, (datetime.getFullYear() + "")
						.substr(4 - RegExp.$1.length));
			for ( var k in o)
				if (new RegExp("(" + k + ")").test(fmt))
					fmt = fmt.replace(RegExp.$1,
							(RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k])
									.substr(("" + o[k]).length)));
			return fmt;
		}
	</script>
</body>
</html>

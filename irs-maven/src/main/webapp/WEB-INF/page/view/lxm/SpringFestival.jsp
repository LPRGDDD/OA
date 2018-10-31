<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'SpringFestival.jsp' starting page</title>
    
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
  </head>
  
  <body>
    <div class="layui-tab">
		<ul class="layui-tab-title">
			<li class="layui-this">修改免签节假日</li>
			
		</ul>
		<div class="layui-tab-content">
			<div class="layui-tab-item layui-show">
				<form class="layui-form" action=""  id="form1" lay-filter="example">
					<div class="layui-form-item">
						<label class="layui-form-label">节假日名称</label>
						<div class="layui-input-block">
							<input name="sfName" value="${sfs.sfName}" style="width:200px" class="layui-input" type="text"
								placeholder="请输入节假日名称" autocomplete="off" lay-verify="title">
							<input type="hidden" name="sfId" value="${sfs.sfId}" >
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">开始日期</label>
						<div class="layui-input-block">
							<input name="sfTime" value="${sfs.sfTime }" id="date1" class="layui-input" style="width:200px" type="text"
								placeholder="请输入开始日期" autocomplete="off" lay-verify="title">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">结束日期</label>
						<div class="layui-input-block">
							<input name="sfTimeEnd" value="${sfs.sfTimeEnd}" id="date" style="width:200px" class="layui-input" type="text"
								 autocomplete="off" lay-verify="title">
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-input-block">
							<button class="layui-btn" lay-filter="demo1" lay-submit=""
								id="but" onclick="update()">立即提交</button>
								<button class="layui-btn" onclick="shuaxin()">关闭</button>
						</div>
					</div>
				</form>

			</div>
			
		</div>
	</div>
<script type="text/javascript">
	function shuaxin(){
	parent.location.reload();
	}
	function update(){
		var obj=$("#form1").serialize();
      $.ajax({
                        url:"Festival/updateAll",
                        type:'post',
                        data:obj,
                        dataType:'text',
                        success:function (data) {
                            alert(1111111);
                        }
              }) 
	}
</script>
<script>
layui.use(['form', 'layedit', 'laydate'], function(){
  var form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;
  
  //日期
  laydate.render({
    elem: '#date'
  });
  laydate.render({
    elem: '#date1'
  });
  })
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

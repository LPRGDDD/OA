<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ScheduleUpdate.jsp' starting page</title>
    
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
  <style type="text/css">
  	.{
  		
  	}
  	.yy{width:206px;height:38px}
  </style>
  </head>
  
  <body>
    	<div class="layui-tab">
		<ul class="layui-tab-title">
			<li class="layui-this">班次修改</li>
		</ul>
		<div class="layui-tab-content">

			<div class="layui-tab-item layui-show">
			   <form class="layui-form " action="" id="form1">
				    <div class="layui-inline">
						      <label class="layui-form-label">班次名称</label>
						      <div class="layui-input-inline">
						        <input class="layui-input yy" id="sname" name="sname" " value="${sche.sname}" type="text" placeholder="请输入名称">
						      	<input type="hidden" name="scid" value="${sche.scid }"/>
						      </div>
			    	</div><br/>
				   <div class="layui-form-item">
				   <label class="layui-form-label">第一次签到</label>
						<div class="layui-input-block ">
							<div class="input-append date form_time" data-date=""
								data-date-format="hh:ii" data-link-field="dtp_input3"
								data-link-format="hh:ii">
								<input " size="16" type="text" name="duty_time1" value="${sche.duty_time1 }" id="dutyTime1"
									 readonly> <span class="add-on"    ><i
									class="icon-remove"></i></span> <span class="add-on " ><i
									class="icon-th"></i></span>
							</div>
							<input type="hidden" id="dtp_input3" value="" /><br />
							</div><br>
						</div>
			    	<br/>
			    	 <div class="layui-form-item">
				   <label class="layui-form-label">第二次签到</label>
						<div class="layui-input-block ">
							<div class="input-append date form_time" data-date=""
								data-date-format="hh:ii" data-link-field="dtp_input3"
								data-link-format="hh:ii">
								<input " size="16" type="text" name="duty_time2" value="${sche.duty_time2 }" id="dutyTime1"
									 readonly> <span class="add-on " ><i
									class="icon-remove"></i></span> <span class="add-on"  ><i
									class="icon-th"></i></span>
							</div>
							<input type="hidden" id="dtp_input3" value="" /><br />
							</div><br>
						</div>
			    	<br/>
			    	 <div class="layui-form-item">
				   <label class="layui-form-label">第三次签到</label>
						<div class="layui-input-block ">
							<div class="input-append date form_time" data-date=""
								data-date-format="hh:ii" data-link-field="dtp_input3"
								data-link-format="hh:ii">
								<input size="16" " type="text" name="duty_time3" value="${sche.duty_time3 }" id="dutyTime1"
									 readonly> <span class="add-on " ><i
									class="icon-remove"></i></span> <span class="add-on " ><i
									class="icon-th"></i></span>
							</div>
							<input type="hidden" id="dtp_input3" value="" /><br />
							</div><br>
						</div>
			    	<br/>
			    	 <div class="layui-form-item">
				   <label class="layui-form-label">第四次签到</label>
						<div class="layui-input-block ">
							<div class="input-append date form_time" data-date=""
								data-date-format="hh:ii" data-link-field="dtp_input3"
								data-link-format="hh:ii">
								<input size="16" " type="text" name="duty_time4" value="${sche.duty_time4 }" id="dutyTime1"
									 readonly> <span class="add-on " ><i
									class="icon-remove"></i></span> <span class="add-on" ><i
									class="icon-th"></i></span>
							</div>
							<input type="hidden" id="dtp_input3" value="" /><br />
							</div><br>
						</div>
			    	<br/>
			    	<div class="layui-inline">
						      <label class="layui-form-label">提交</label>
						      <div class="layui-input-inline">
								<button class="layui-btn layui-btn-normal" onclick="update()" >确认修改</button>
						      </div>
			    	</div>
		    	</form> 
			</div>
		</div>
	</div>
	<!-- javascript  -->
	<script src="page/resources/jquery-1.12.4.min.js"></script>
	<!-- <script src="page/resources/calendar.js"></script> -->
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
	<!--动态Tab  -->
	<script type="text/javascript">
		function update(){
			alert($("#form1").serialize());
			$.ajax({  
          type: 'post',  
          url: "schedule/update", // ajax请求路径  
          data: $("#form1").serialize()
          ,  
          success: function(data){ 
             alert(data);
             if(data>0){
					alert("修改成功");
			 }else{
					alert("修改失败");
			}
          }  
      });   
		}
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
layui.use('laydate', function(){
  var laydate = layui.laydate;
  
  
  laydate.render({
    elem: '#test14'
    ,type: 'time'
    ,format: 'H:m'
  });
  laydate.render({
    elem: '#test15'
    ,type: 'time'
    ,format: 'H:m'
  });
  laydate.render({
    elem: '#test16'
    ,type: 'time'
    ,format: 'H:m'
  });
  laydate.render({
    elem: '#test17'
    ,type: 'time'
    ,format: 'H:m'
  });
  

});
</script>
  </body>
</html>

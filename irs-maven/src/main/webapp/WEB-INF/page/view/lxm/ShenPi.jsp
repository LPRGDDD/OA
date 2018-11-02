<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ShenPi.jsp' starting page</title>
    
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
  
  <body>
    <div class="layui-tab">
		<ul class="layui-tab-title">
			<li class="layui-this">待审批</li>
			<li>外出</li>
			<li>请假</li>
			<li>加班</li>
			<li>出差</li>
		</ul>
		<div class="layui-tab-content">
			<!--待审批  -->
			
			<div class="layui-tab-item layui-show">
					<input type="hidden" id="id" value="<shiro:principal property="id"/>"/>
					<table class="layui-hide" lay-filter="demo" id="test"></table> 
					<script id="barDemo" type="text/html">
 						<a class="layui-btn layui-btn-xs" lay-event="edit">详情</a>
  						<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">通过</a>
 					    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">驳回</a>
					</script>	
			</div>
			<!-- 外出查询 -->  
			<div class="layui-tab-item">
					<table class="layui-hide" lay-filter="demo1" id="test1"></table> 
					<script id="waichu" type="text/html">
 						{{#if(d.exState==2){  }}
			  						<a class="layui-btn layui-btn-xs" lay-event="del">待回归</a>		
						{{#}  }}
						<a class="layui-btn layui-btn-xs" lay-event="edit">详情</a>
					</script>	
			</div>
			<!--请假查询  -->
			<div class="layui-tab-item">
				<table class="layui-hide" lay-filter="demo2" id="test2"></table> 
				<script id="qingjia" type="text/html">
 						{{#if(d.exState==2){  }}
			  						<a class="layui-btn layui-btn-xs" lay-event="del">待回归</a>		
						{{#}  }}
						<a class="layui-btn layui-btn-xs" lay-event="edit">详情</a>
					</script>	
			</div>
			<!--加班查询 -->
			<div class="layui-tab-item">
				<table class="layui-hide" lay-filter="demo3" id="test3"></table> 
				<script id="jiaban" type="text/html">
 						{{#if(d.exState==2){  }}
			  						<a class="layui-btn layui-btn-xs" lay-event="del">待完成</a>		
						{{#}  }}
						<a class="layui-btn layui-btn-xs" lay-event="edit">详情</a>
					</script>	
			</div>
			<!--出差查询  -->
			<div class="layui-tab-item">
					<table class="layui-hide" lay-filter="demo4" id="test4"></table> 
					<script id="chuchai" type="text/html">
 						{{#if(d.exState==2){  }}
			  						<a class="layui-btn layui-btn-xs" lay-event="del">待回归</a>		
						{{#}  }}
						<a class="layui-btn layui-btn-xs" lay-event="edit">详情</a>
					</script>	
			</div>
		</div>
	</div>
<!--表格渲染  -->
<!--  -->

<script>
var num=$("#id").val();

layui.use('table', function(){
  var table = layui.table;
  //监听表格复选框选择
  table.on('checkbox(demo)', function(obj){
    console.log(obj)
  });
  table.render({
    elem: '#test'
    ,url:'WaiChu/DaiShenPi'
    ,where:{
    	id:num
    }
     ,cols: [[
      {field:'syState', width:120, title: '类型'}
      ,{field:'username', width:120, title: '申请人'}
      ,{field:'syTime', width:120, title: '外出时间'}
      ,{field:'wcTime', width:120, title: '开始时间'}
      ,{field:'wcTimeEnd',width:120, title: '结束时间'}
      ,{field:'syReason', width:120, title: '摘要'}
      ,{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}
    ]],done:function(){
					   //分类显示中文名称	
					    $("[data-field='syState']").children().each(function(){
							if($(this).text()=='1'){		
								$(this).text("外出登记")		
							}else if($(this).text()=='2'){	
								$(this).text("请假登记")	
							}else if($(this).text()=='3'){
								$(this).text("加班登记")
							}else if($(this).text()=='4'){
								$(this).text("出差登记")
							}
							})
					 }
    ,page:true
  }); 

  
  //监听工具条
  table.on('tool(demo)', function(obj){
    var data = obj.data;
    if(obj.event === 'detail'){
      $.ajax({
				url:'WaiChu/updateState',
				data:{
					sid:data.sId
				},
				type:"post",
				dataType:"json",
				success:function(data){
					if(data>0){
					 	alert("已审批")
					 	location.reload();
					}else{
					alert("未审批");
						location.reload();
					}
				}
			})
    } else if(obj.event === 'del'){
      
         layer.open({
            type:2,
            title:"驳回原因",
            area: ['40%','90%'],
            offset: ['30px', '550px'],
            content:"http://localhost:8080/oa/WaiChu/BoHui/"+data.sId
      });
        
    } else if(obj.event === 'edit'){
      layer.open({
            type:2,
            title:"查找外出登记",
            area: ['40%','90%'],
            offset: ['30px', '550px'],
            content:"http://localhost:8080/oa/WaiChu/Xiang/"+data.sId+"/"+data.id+"/"+data.syState
      });
    }
  });
  
  var $ = layui.$, active = {
    getCheckData: function(){ //获取选中数据
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.alert(JSON.stringify(data));
    }
    ,getCheckLength: function(){ //获取选中数目
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.msg('选中了：'+ data.length + ' 个');
    }
    ,isAll: function(){ //验证是否全选
      var checkStatus = table.checkStatus('idTest');
      layer.msg(checkStatus.isAll ? '全选': '未全选')
    }
  };
  
  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
});
</script>

<!--审批后外出查询  -->
<script>
var num=$("#id").val();
var today=new Date();
 var H=today.getFullYear();
 var M=today.getMonth()+1;
 var R=today.getDate();
 var h=today.getHours();
 var mm=today.getMinutes();
 var ss=today.getSeconds();
var xitong=H+"-"+M+"-"+R+" "+h+":"+mm+":"+ss;
layui.use('table', function(){
  var table = layui.table;
  //监听表格复选框选择
  table.on('checkbox(demo1)', function(obj){
    console.log(obj)
  });
  table.render({
    elem: '#test1'
    ,url:'WaiChu/TongWai'
    ,where:{
    	id:num
    }
     ,cols: [[
      {field:'exState', width:120, title: '类型'}
      ,{field:'username', width:120, title: '申请人'}
      ,{field:'syTime', width:120, title: '外出时间'}
      ,{field:'wcTime', width:120, title: '开始时间'}
      ,{field:'wcTimeEnd',width:120, title: '结束时间'}
      ,{field:'syReason', width:120, title: '摘要'}
      ,{field:'syXiao', width:120, title: '回归时间'}
      ,{fixed: 'right', width:178, align:'center', toolbar: '#waichu'}
    ]],done:function(){
					   //分类显示中文名称	
					    $("[data-field='exState']").children().each(function(){
							if($(this).text()=='2'){		
								$(this).text("已批准")		
							}else if($(this).text()=='1'){	
								$(this).text("未批准")	
							}else if($(this).text()=='4'){
								$(this).text("待归来")
							}else if($(this).text()=='3'){
								$(this).text("已归来")
							}
							})
							
					 }
    ,page:true
  }); 

  
  //监听工具条
  table.on('tool(demo1)', function(obj){
    var data = obj.data;
    if(obj.event === 'detail'){
      layer.msg('ID：'+ data.id + ' 的查看操作');
    } else if(obj.event === 'del'){
     	$.ajax({
			url : "WaiChu/HuiGui",
			data : {
				'sid' : data.sId,
				'syXiao':xitong
			},
			type : "post",
			dataType : 'Json',
			success : function(data) {
				if(data>0){
					layer.confirm("操作成功",function(index){
					location.reload();
					});
				}else{
					layer.confirm("操作失败",function(index){
					location.reload();
					});
				}
			}
		})
     
    } else if(obj.event === 'edit'){
      layer.open({
            type:2,
            title:"查找外出登记",
            area: ['40%','90%'],
            offset: ['30px', '550px'],
            content:"http://localhost:8080/oa/WaiChu/WaiXiang/"+data.sId+"/"+data.id+"/"+data.syState
      });
    }
  });
  var $ = layui.$, active = {
    getCheckData: function(){ //获取选中数据
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.alert(JSON.stringify(data));
    }
    ,getCheckLength: function(){ //获取选中数目
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.msg('选中了：'+ data.length + ' 个');
    }
    ,isAll: function(){ //验证是否全选
      var checkStatus = table.checkStatus('idTest');
      layer.msg(checkStatus.isAll ? '全选': '未全选')
    }
  };
  
  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
});
</script>
<!--审批后请假查询  -->
<script>
var num=$("#id").val();
var today=new Date();
 var H=today.getFullYear();
 var M=today.getMonth()+1;
 var R=today.getDate();
 var h=today.getHours();
 var mm=today.getMinutes();
 var ss=today.getSeconds();
var xitong=H+"-"+M+"-"+R+" "+h+":"+mm+":"+ss;
layui.use('table', function(){
  var table = layui.table;
  //监听表格复选框选择
  table.on('checkbox(demo2)', function(obj){
    console.log(obj)
  });
  table.render({
    elem: '#test2'
    ,url:'WaiChu/TongQing'
    ,where:{
    	id:num
    }
     ,cols: [[
      {field:'exState', width:120, title: '类型'}
      ,{field:'username', width:120, title: '申请人'}
      ,{field:'wcTime', width:120, title: '开始时间'}
      ,{field:'wcTimeEnd',width:120, title: '结束时间'}
      ,{field:'syReason', width:120, title: '摘要'}
      ,{field:'syXiao', width:120, title: '回归时间'}
      ,{fixed: 'right', width:178, align:'center', toolbar: '#qingjia'}
    ]],done:function(){
					   //分类显示中文名称	
					    $("[data-field='exState']").children().each(function(){
							if($(this).text()=='2'){		
								$(this).text("已批准")		
							}else if($(this).text()=='1'){	
								$(this).text("未批准")	
							}else if($(this).text()=='4'){
								$(this).text("待归来")
							}else if($(this).text()=='3'){
								$(this).text("已归来")
							}
							})
							
					 }
    ,page:true
  }); 

  
  //监听工具条
  table.on('tool(demo2)', function(obj){
    var data = obj.data;
    if(obj.event === 'detail'){
      layer.msg('ID：'+ data.id + ' 的查看操作');
    } else if(obj.event === 'del'){
     	$.ajax({
			url : "WaiChu/HuiGui",
			data : {
				'sid' : data.sId,
				'syXiao':xitong
			},
			type : "post",
			dataType : 'Json',
			success : function(data) {
				if(data>0){
					layer.confirm("操作成功",function(index){
					location.reload();
					});
				}else{
					layer.confirm("操作失败",function(index){
					location.reload();
					});
				}
			}
		})
     
    } else if(obj.event === 'edit'){
      layer.open({
            type:2,
            title:"查找外出登记",
            area: ['40%','90%'],
            offset: ['30px', '550px'],
            content:"http://localhost:8080/oa/WaiChu/WaiXiang/"+data.sId+"/"+data.id+"/"+data.syState
      });
    }
  });
  var $ = layui.$, active = {
    getCheckData: function(){ //获取选中数据
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.alert(JSON.stringify(data));
    }
    ,getCheckLength: function(){ //获取选中数目
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.msg('选中了：'+ data.length + ' 个');
    }
    ,isAll: function(){ //验证是否全选
      var checkStatus = table.checkStatus('idTest');
      layer.msg(checkStatus.isAll ? '全选': '未全选')
    }
  };
  
  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
});
</script>
<!--审批后加班查询  -->
<script>
var num=$("#id").val();
var today=new Date();
 var H=today.getFullYear();
 var M=today.getMonth()+1;
 var R=today.getDate();
 var h=today.getHours();
 var mm=today.getMinutes();
 var ss=today.getSeconds();
var xitong=H+"-"+M+"-"+R+" "+h+":"+mm+":"+ss;
layui.use('table', function(){
  var table = layui.table;
  //监听表格复选框选择
  table.on('checkbox(demo3)', function(obj){
    console.log(obj)
  });
  table.render({
    elem: '#test3'
    ,url:'WaiChu/TongJia'
    ,where:{
    	id:num
    }
     ,cols: [[
      {field:'exState', width:120, title: '类型'}
      ,{field:'username', width:120, title: '申请人'}
      ,{field:'wcTime', width:120, title: '开始时间'}
      ,{field:'wcTimeEnd',width:120, title: '结束时间'}
      ,{field:'syReason', width:120, title: '摘要'}
      ,{field:'syXiao', width:120, title: '回归时间'}
      ,{fixed: 'right',title:'操作', width:178, align:'center', toolbar: '#jiaban  '}
    ]],done:function(){
					   //分类显示中文名称	
					    $("[data-field='exState']").children().each(function(){
							if($(this).text()=='2'){		
								$(this).text("已批准")		
							}else if($(this).text()=='1'){	
								$(this).text("未批准")	
							}else if($(this).text()=='4'){
								$(this).text("待归来")
							}else if($(this).text()=='3'){
								$(this).text("已归来")
							}
							})
							
					 }
    ,page:true
  }); 

  
  //监听工具条
  table.on('tool(demo3)', function(obj){
    var data = obj.data;
    if(obj.event === 'detail'){
      layer.msg('ID：'+ data.id + ' 的查看操作');
    } else if(obj.event === 'del'){
     	$.ajax({
			url : "WaiChu/HuiGui",
			data : {
				'sid' : data.sId,
				'syXiao':xitong
			},
			type : "post",
			dataType : 'Json',
			success : function(data) {
				if(data>0){
					layer.confirm("操作成功",function(index){
					location.reload();
					});
				}else{
					layer.confirm("操作失败",function(index){
					location.reload();
					});
				}
			}
		})
     
    } else if(obj.event === 'edit'){
      layer.open({
            type:2,
            title:"查找外出登记",
            area: ['40%','90%'],
            offset: ['30px', '550px'],
            content:"http://localhost:8080/oa/WaiChu/WaiXiang/"+data.sId+"/"+data.id+"/"+data.syState
      });
    }
  });
  var $ = layui.$, active = {
    getCheckData: function(){ //获取选中数据
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.alert(JSON.stringify(data));
    }
    ,getCheckLength: function(){ //获取选中数目
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.msg('选中了：'+ data.length + ' 个');
    }
    ,isAll: function(){ //验证是否全选
      var checkStatus = table.checkStatus('idTest');
      layer.msg(checkStatus.isAll ? '全选': '未全选')
    }
  };
  
  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
});
</script>
<!--审批后出差查询  -->
<script>
var num=$("#id").val();
var today=new Date();
 var H=today.getFullYear();
 var M=today.getMonth()+1;
 var R=today.getDate();
 var h=today.getHours();
 var mm=today.getMinutes();
 var ss=today.getSeconds();
var xitong=H+"-"+M+"-"+R+" "+h+":"+mm+":"+ss;
layui.use('table', function(){
  var table = layui.table;
  //监听表格复选框选择
  table.on('checkbox(demo4)', function(obj){
    console.log(obj)
  });
  table.render({
    elem: '#test4'
    ,url:'WaiChu/TongChuChai'
    ,where:{
    	id:num
    }
     ,cols: [[
      {field:'exState', width:120, title: '类型'}
      ,{field:'username', width:120, title: '申请人'}
      ,{field:'wcTime', width:120, title: '开始时间'}
      ,{field:'wcTimeEnd',width:120, title: '结束时间'}
      ,{field:'syReason', width:120, title: '摘要'}
      ,{field:'syXiao', width:120, title: '回归时间'}
      ,{fixed: 'right',title:'操作', width:178, align:'center', toolbar: '#chuchai  '}
    ]],done:function(){
					   //分类显示中文名称	
					    $("[data-field='exState']").children().each(function(){
							if($(this).text()=='2'){		
								$(this).text("已批准")		
							}else if($(this).text()=='1'){	
								$(this).text("未批准")	
							}else if($(this).text()=='4'){
								$(this).text("待归来")
							}else if($(this).text()=='3'){
								$(this).text("已归来")
							}
							})
							
					 }
    ,page:true
  }); 

  
  //监听工具条
  table.on('tool(demo4)', function(obj){
    var data = obj.data;
    if(obj.event === 'detail'){
      layer.msg('ID：'+ data.id + ' 的查看操作');
    } else if(obj.event === 'del'){
     	$.ajax({
			url : "WaiChu/HuiGui",
			data : {
				'sid' : data.sId,
				'syXiao':xitong
			},
			type : "post",
			dataType : 'Json',
			success : function(data) {
				if(data>0){
					layer.confirm("操作成功",function(index){
					location.reload();
					});
				}else{
					layer.confirm("操作失败",function(index){
					location.reload();
					});
				}
			}
		})
     
    } else if(obj.event === 'edit'){
      layer.open({
            type:2,
            title:"查找外出登记",
            area: ['40%','90%'],
            offset: ['30px', '550px'],
            content:"http://localhost:8080/oa/WaiChu/WaiXiang/"+data.sId+"/"+data.id+"/"+data.syState
      });
    }
  });
  var $ = layui.$, active = {
    getCheckData: function(){ //获取选中数据
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.alert(JSON.stringify(data));
    }
    ,getCheckLength: function(){ //获取选中数目
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.msg('选中了：'+ data.length + ' 个');
    }
    ,isAll: function(){ //验证是否全选
      var checkStatus = table.checkStatus('idTest');
      layer.msg(checkStatus.isAll ? '全选': '未全选')
    }
  };
  
  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
});
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

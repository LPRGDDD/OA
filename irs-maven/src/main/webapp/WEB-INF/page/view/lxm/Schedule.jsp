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
<link
	href="page/resources/bootstrap-datetimepicker/sampleinbootstrap/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<link
	href="page/resources/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" media="screen">
<script src="page/resources/jquery-1.11.3.min.js"></script>
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
				<form class="layui-form" id="form1" action="">
					<div class="layui-form-item">
						<label class="layui-form-label"><span class="yan">*</span>班次名称</label>
						<div class="layui-input-inline">
							<!--style="height:35px"  -->
							<input name="sname" class="layui-input lxm"  value="${sche.sname}" type="text"
								style="height:35px" placeholder="请输入" autocomplete="off"
								lay-verify="required" lay-verify="title">
						</div>
					</div>
					
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label"><span class="yan">*</span>第一次签到</label>
							<div class="layui-input-inline">
								<input class="layui-input lxm" readonly="readonly" name="duty_time1" value="${sche.duty_time1}"  style="height:35px" id="test4"
									type="text" placeholder="yyyy-MM-dd HH:mm:ss" lay-verify="kaishi">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label"><span class="yan">*</span>第二次签到</label>
							<div class="layui-input-inline">
								<input class="layui-input lxm" readonly="readonly"  name="duty_time2" value="${sche.duty_time2 }"  style="height:35px" id="test5"
									type="text" placeholder="yyyy-MM-dd HH:mm:ss" lay-verify="jieshi">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label"><span class="yan">*</span>第三次签到</label>
							<div class="layui-input-inline">
								<input class="layui-input lxm" readonly="readonly"  name="duty_time3" value="${sche.duty_time3 }"  style="height:35px" id="test6"
									type="text" placeholder="yyyy-MM-dd HH:mm:ss" lay-verify="jieshi1">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label"><span class="yan">*</span>第四次签到</label>
							<div class="layui-input-inline">
								<input class="layui-input lxm" readonly="readonly"  name="duty_time4" value="${sche.duty_time4 }"  style="height:35px" id="test7"
									type="text" placeholder="yyyy-MM-dd HH:mm:ss" lay-verify="jieshi2">
							<input type="hidden" name="scid" value="${sche.scid }">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-input-block">
							<button class="layui-btn" lay-filter="demo1" onclick="save()" lay-submit="">立即提交</button>
							<button class="layui-btn layui-btn-primary" onclick="shuaxin()">关闭</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- javascript  -->
	
			<script>
		layui.use('laydate', function() {
			var laydate = layui.laydate;
			//时间选择器
			laydate.render({
				elem : '#test4',
				type : 'time'
			});
			  //时间选择器
			  laydate.render({
			    elem: '#test5'
			    ,type: 'time'
			  });
			//日期时间选择器
			laydate.render({
				elem : '#test6',
				type : 'time'
			});
			//日期时间选择器
			laydate.render({
				elem : '#test7',
				type : 'time'
			});
})
	</script>
	<script src="page/resources/layui/layui.js" charset="utf-8"></script>
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
      {field:'sname', title: '班次名称', width:150, edit: 'text'}
      ,{field:'duty_time1',title: '第一次签到时间', width:150,  }
      ,{field:'duty_time2',title: '第二次签到时间', width:150,  }
      ,{field:'duty_time3',title: '第三次签到时间', width:150,  }
      ,{field:'duty_time4',title: '第四次签到时间', width:150,  }
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
            area: ['100%','100%'],
           // offset: ['10px', '100px'],
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
  
  //创建一个编辑器
  var editIndex = layedit.build('LAY_demo_editor');
 
  //自定义验证规则
  form.verify({
    title: function(value){
      if(value.length < 5){
        return '标题至少得5个字符啊';
      }
    }
    ,kaishi:function(value){
    	if(value.length<2){
    		return '开始时间必填';
    	}
    }
    ,jieshi:function(value){
    	if(value.length<2){
    		return '结束时间必填';
    	}
    }
    ,content: function(value){
      layedit.sync(editIndex);
    }
  });
  
  //监听指定开关
  form.on('switch(switchTest)', function(data){
    layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
      offset: '6px'
    });
    layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
  });
  
      //监听提交
  form.on('submit(demo1)', function(data){
    var obj=$("#form1").serialize();
			$.ajax({
				 url:"schedule/save",
                 type:'post',
                 data:obj,
                 dataType:'json',
                 success:function (data) {
                    if(data>0){
                   		layer.confirm('操作成功', function(index){
					       location.reload();
					        layer.close(index);
					     });
                    }else{
                    	layer.confirm('操作失败', function(index){
					       location.reload();
					        layer.close(index);
					     });
                    }
                }
			});
    return false;
  });
 
  //表单初始赋值
  form.val('example', {
    "username": "贤心" // "name": "value"
    ,"password": "123456"
    ,"interest": 1
    ,"like[write]": true //复选框选中状态
    ,"close": true //开关状态
    ,"sex": "女"
    ,"desc": "我爱 layui"
  })
  
  
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

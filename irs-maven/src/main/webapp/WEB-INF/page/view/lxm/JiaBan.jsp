<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
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
    
    <title>My JSP 'QingJia.jsp' starting page</title>
    
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
			<li class="layui-this">加班登记</li>
			<li>新建加班登记</li>
		</ul>
		<div class="layui-tab-content">
			<div class="layui-tab-item layui-show">
				<table class="layui-hide" id="test" lay-filter="demo"></table>
					<script id="barDemo" type="text/html">
  						{{#if(d.exState==2){  }}
			  						<a class="layui-btn layui-btn-xs" style="color:#FFFF00" lay-event="detail">回归</a>
						{{#}  }}
  						{{# if(d.exState==1){ }}
								<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
								<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
  						{{# } }}
						{{# if(d.exState==0){ }}
									<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
								<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
  						{{# } }}
						{{# if(d.exState==3){ }}
									<a class="layui-btn layui-btn-xs" style="color:#00FF00" lay-event="xiang">详情</a>
  						{{# } }}
					</script>
			</div>
			<!--新建加班登记  -->
			<div class="layui-tab-item">
				<form class="layui-form" id="form1" action="">
					<div class="layui-form-item">
						<label class="layui-form-label"><span class="yan">*</span>加班内容</label>
						<div class="layui-input-inline">
							<!--style="height:35px"  -->
							<input name="syreason" class="layui-input lxm" type="text"
								style="height:35px" placeholder="请输入" autocomplete="off"
								lay-verify="required" lay-verify="title">
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label"><span class="yan">*</span>开始日期</label>
							<div class="layui-input-inline">
								<input class="layui-input lxm" readonly="readonly" name="wctime"  style="height:35px" id="test5"
									type="text" placeholder="yyyy-MM-dd HH:mm:ss" lay-verify="kaishi">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label"><span class="yan">*</span>结束日期</label>
							<div class="layui-input-inline">
								<input class="layui-input lxm" readonly="readonly"  name="wctimeend"  style="height:35px" id="test32"
									type="text" placeholder="yyyy-MM-dd HH:mm:ss" lay-verify="jieshi">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">加班时长</label>
							<div class="layui-input-inline" style="width:100px;">
								<input  name="wctimeone" id="wctimeone" readonly="readonly"   class="layui-input" onfocus="shi()"  style="height:35px"
									type="text" placeholder="" autocomplete="off">
							</div>
							<div class="layui-form-mid">时</div>
							<div class="layui-input-inline" style="width:100px;height:35px;">
								<input name="wctimetwo" id="wctimetwo" readonly="readonly" class="layui-input"   style="height:35px"
									type="text" placeholder="" autocomplete="off">
							</div>
							<div class="layui-form-mid">分</div>
						</div>
					</div>
					
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">选择审批人</label>
							<div class="layui-input-inline" style="width:250px;height:35px;">
								<select name="shenid" id="sele1">
								</select>
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-input-block">
							<button class="layui-btn" lay-filter="demo1" onclick="save()" lay-submit="">立即提交</button>
							<button class="layui-btn layui-btn-primary" type="reset">重置</button>
						</div>
					</div>
					<input type="hidden" name="systate" value="3"/>
					<input type="hidden" name="exstate" value="0"/>
					<input type="hidden" name="syshen" id="xitong">
					<input type="hidden" name="id" id="id" value="<shiro:principal property="id"/>">
				</form>
			</div>
		</div>
	</div>
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
  table.on('checkbox(demo)', function(obj){
    console.log(obj)
  });
  table.render({
    elem: '#test'
    ,url:'WaiChu/JiBanSel'
    ,where:{
    	id:num
    }
    ,cols:[[
      {field:'sId', width:80, title: 'ID', sort: true}
      ,{field:'username', width:120, title: '加班人员'}
      ,{field:'syShen', width:120, title: '申请时间',sort: true}
      ,{field:'shenname', width:120,title: '审批人员'}
      ,{field:'syReason', width:120, title: '加班内容'}
      ,{field:'wcTime', width:160, title: '开始时间', }
      ,{field:'wcTimeEnd', width:160, title: '结束时间'}
      ,{field:'exState', width:120, title: '状态'}
      ,{fixed: 'right', width:190, align:'center', toolbar:'#barDemo'}
    ]],done:function(){
					   //分类显示中文名称	
					    $("[data-field='exState']").children().each(function(){
							if($(this).text()=='0'){		
								$(this).text("待审批")		
							}else if($(this).text()=='1'){	
								$(this).text("未批准")	
							}else if($(this).text()=='2'){
								$(this).text("已批准")
							}else if($(this).text()=='3'){
								$(this).text("已归来")
							}else if($(this).text()=='4'){
								$(this).text("")
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
    } else if(obj.event === 'del'){
      layer.confirm('真的删除行么', function(index){
        obj.del();
        layer.close(index);
        $.ajax({
			url : "WaiChu/deleteWai",
			data : {
				'id' : data.sId
			},
			type : "post",
			dataType : 'Json',
			success : function(data) {
				if(data>0){
					layer.msg("删除成功");
					location.reload();
				}else{
					layer.msg("删除失败");
					location.reload();
				}
			}
		})
      });
    } else if(obj.event === 'edit'){
     layer.open({
            type:2,
            title:"查找加班登记",
            area: ['40%','90%'],
            offset: ['30px', '550px'],
            content:"http://localhost:8080/oa/WaiChu/JiaBanSel/"+data.sId+"/"+data.id
        });
    }else if(obj.event=='xiang'){
    	  layer.open({
            type:2,
            title:"查找加班登记",
            area: ['40%','90%'],
            offset: ['30px', '550px'],
            content:"http://localhost:8080/oa/WaiChu/HuiXiang/"+data.sId+"/"+data.id+"/"+data.syState
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
<script type="text/javascript">
	/*计算时间  */
		function shi(){
			var kai=$("#test5").val();
			var jie=$("#test32").val();
    		
		    var s_time =  kai;
			var e_time =  jie;
		
		    if(s_time=='' || e_time==''){
		        $("#wctimeone").val(0);
		        $("#wctimetwo").val(0);
		    }else{
		        var s_ms = Date.parse(new Date(s_time.replace(/-/g, "/")));
		        var e_ms = Date.parse(new Date(e_time.replace(/-/g, "/")));
		
		        if(e_ms > s_ms){
		            var diff_ms = parseInt((e_ms - s_ms)/1000);
		            var diff_h = parseInt(diff_ms/3600);
		            var tian=parseInt(diff_h/24);
		            var HH=(diff_h%24)
		            var diff_m = parseInt((diff_ms % 3600)/60);
		            $("#wctimeone").val(diff_h);
		            $("#wctimetwo").val(diff_m);
		        }else{
		            $("#wctimeone").val(0);
		            $("#wctimetwo").val(0);
		        }
		    }
		}
	$(function(){
				var today=new Date();
			    var H=today.getFullYear();
			    var M=today.getMonth()+1;
			    var R=today.getDate();
			    var h=today.getHours();
			    var mm=today.getMinutes();
			    var ss=today.getSeconds();
			  	var xitong=H+"-"+M+"-"+R+" "+h+":"+mm+":"+ss;
			  	$("#xitong").val(xitong);
	})
</script>

<script>
layui.use(['form', 'layedit', 'laydate'], function(){
  var form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;
  layui.use('form', function(data){
        var form = layui.form; 
    });
    /*下拉框 选择审批人  */
  layui.use('form', function(){
        var form = layui.form; 
        form.render();
        $.ajax({
				url:"GeRen/One",
				type:"post",
				data:{
					'deptId':1
				},
				dataType:"json",
				success:function(data){
				$("#sele1").html("");
	        		for(var i=0;i<data.length;i++){
	        		var obj=data[i];
					 var tr="<option value='"+obj.id+"'>"+obj.username+"</option>";
				  	$("#sele1").append(tr);  
				  	 form.render('select');  			
	        		}
				}
			})
   });
    
   form.render(); //更新全部
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
			alert(obj);
			$.ajax({
				 url:"WaiChu/QingJiaSave",
                 type:'post',
                 data:obj,
                 dataType:'json',
                 success:function (data) {
                    if(data>0){
                   		layer.confirm('添加成功', function(index){
					       location.reload();
					        layer.close(index);
					     });
                    }else{
                    	layer.confirm('添加失败', function(index){
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
    "syreason": "外出商谈" // "name": "value"
    ,"password": "123456"
    ,"interest":1
    ,"like[write]": true //复选框选中状态
    ,"close": true //开关状态
    ,"sex": "女"
    ,"desc": "我爱 layui"
  })
});
</script>
<!--时间  -->
	<script>
		layui.use('laydate', function() {
			var laydate = layui.laydate;
	
			//常规用法
			laydate.render({
				elem : '#test1'
			});
	
			
			
			
			//国际版
			laydate.render({
				elem : '#test1-1',
				lang : 'en'
			});
	
			//年选择器
			laydate.render({
				elem : '#test2',
				type : 'year'
			});
	
			//年月选择器
			laydate.render({
				elem : '#test3',
				type : 'month'
			});
	
			//时间选择器
			laydate.render({
				elem : '#test4',
				type : 'time'
			});
			//时间选择器
			laydate.render({
				elem : '#test30',
				type : 'time'
			});
			//日期时间选择器
			laydate.render({
				elem : '#test5',
				type : 'datetime'
			});
	//日期时间选择器
			laydate.render({
				elem : '#test32',
				type : 'datetime'
			});
			//日期范围
			laydate.render({
				elem : '#test6',
				range : true
			});
	
			//年范围
			laydate.render({
				elem : '#test7',
				type : 'year',
				range : true
			});
	
			//年月范围
			laydate.render({
				elem : '#test8',
				type : 'month',
				range : true
			});
	
			//时间范围
			laydate.render({
				elem : '#test9',
				type : 'time',
				range : true
			});
	
			//日期时间范围
			laydate.render({
				elem : '#test10',
				type : 'datetime',
				range : true
			});
	
			//自定义格式
			laydate.render({
				elem : '#test11',
				format : 'yyyy年MM月dd日'
			});
			laydate.render({
				elem : '#test12',
				format : 'dd/MM/yyyy'
			});
			laydate.render({
				elem : '#test13',
				format : 'yyyyMMdd'
			});
			laydate.render({
				elem : '#test14',
				type : 'time',
				format : 'H点m分'
			});
			laydate.render({
				elem : '#test15',
				type : 'month',
				range : '~',
				format : 'yyyy-MM'
			});
			laydate.render({
				elem : '#test16',
				type : 'datetime',
				range : '到',
				format : 'yyyy年M月d日H时m分s秒'
			});
	
			//开启公历节日
			laydate.render({
				elem : '#test17',
				calendar : true
			});
	
			//自定义重要日
			laydate.render({
				elem : '#test18',
				mark : {
					'0-10-14' : '生日',
					'0-12-31' : '跨年', //每年的日期
					'0-0-10' : '工资', //每月某天
					'0-0-15' : '月中',
					'2017-8-15' : '', //如果为空字符，则默认显示数字+徽章
					'2099-10-14' : '呵呵'
				},
				done : function(value, date) {
					if (date.year === 2017 && date.month === 8 && date.date === 15) { //点击2017年8月15日，弹出提示语
						layer.msg('这一天是：中国人民抗日战争胜利72周年');
					}
				}
			});
	
			//限定可选日期
			var ins22 = laydate.render({
				elem : '#test-limit1',
				min : '2016-10-14',
				max : '2080-10-14',
				ready : function() {
					ins22.hint('日期可选值设定在 <br> 2016-10-14 到 2080-10-14');
				}
			});
	
			//前后若干天可选，这里以7天为例
			laydate.render({
				elem : '#test-limit2',
				min : -7,
				max : 7
			});
	
			//限定可选时间
			laydate.render({
				elem : '#test-limit3',
				type : 'time',
				min : '09:30:00',
				max : '17:30:00',
				btns : [ 'clear', 'confirm' ]
			});
	
			//同时绑定多个
			lay('.test-item').each(function() {
				laydate.render({
					elem : this,
					trigger : 'click'
				});
			});
	
			//初始赋值
			laydate.render({
				elem : '#test19',
				value : '1989-10-14',
				isInitValue : true
			});
	
			//选中后的回调
			laydate.render({
				elem : '#test20',
				done : function(value, date) {
					layer.alert('你选择的日期是：' + value + '<br>获得的对象是' + JSON.stringify(date));
				}
			});
	
			//日期切换的回调
			laydate.render({
				elem : '#test21',
				change : function(value, date) {
					layer.msg('你选择的日期是：' + value + '<br><br>获得的对象是' + JSON.stringify(date));
				}
			});
			//不出现底部栏
			laydate.render({
				elem : '#test22',
				showBottom : false
			});
	
			//只出现确定按钮
			laydate.render({
				elem : '#test23',
				btns : [ 'confirm' ]
			});
	
			//自定义事件
			laydate.render({
				elem : '#test24',
				trigger : 'mousedown'
			});
	
			//点我触发
			laydate.render({
				elem : '#test25',
				eventElem : '#test25-1',
				trigger : 'click'
			});
	
			//双击我触发
			lay('#test26-1').on('dblclick', function() {
				laydate.render({
					elem : '#test26',
					show : true,
					closeStop : '#test26-1'
				});
			});
	
			//日期只读
			laydate.render({
				elem : '#test27',
				trigger : 'click'
			});
	
			//非input元素
			laydate.render({
				elem : '#test28'
			});
	
			//墨绿主题
			laydate.render({
				elem : '#test29',
				theme : 'molv'
			});
	
			//自定义颜色
			laydate.render({
				elem : '#test30',
				theme : '#393D49'
			});
	
			//格子主题
			laydate.render({
				elem : '#test31',
				theme : 'grid'
			});
	
	
			//直接嵌套显示
			laydate.render({
				elem : '#test-n1',
				position : 'static'
			});
			laydate.render({
				elem : '#test-n2',
				position : 'static',
				lang : 'en'
			});
			laydate.render({
				elem : '#test-n3',
				type : 'month',
				position : 'static'
			});
			laydate.render({
				elem : '#test-n4',
				type : 'time',
				position : 'static'
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
   
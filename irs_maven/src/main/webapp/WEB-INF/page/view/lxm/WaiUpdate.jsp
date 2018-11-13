<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'WaiUpdate.jsp' starting page</title>
    
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
   <div>
   		<form class="layui-form" id="form1" action="">
					<div class="layui-form-item">
						<label class="layui-form-label"><span class="yan">*</span>外出原因</label>
						<div class="layui-input-inline">
							<!--style="height:35px"  -->
							<input name="syreason" class="layui-input lxm" type="text"
								style="height:35px" placeholder="请输入" value="${list.syReason }" autocomplete="off"
								lay-verify="required" lay-verify="title">
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label"><span class="yan">*</span>外出时间</label>
							<div class="layui-input-inline">
								<input class="layui-input lxm" readonly="readonly" value="${list.syTime }" id="test1" name="sytime"
									type="text" style="height:35px" placeholder="yyyy-MM-dd" lay-verify="date">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label"><span class="yan">*</span>开始日期</label>
							<div class="layui-input-inline">
								<input class="layui-input lxm" readonly="readonly" value="${list.wcTime}" name="wctime"  style="height:35px" id="test4"
									type="text" placeholder="HH:mm:ss" lay-verify="kaishi">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label"><span class="yan">*</span>结束日期</label>
							<div class="layui-input-inline">
								<input class="layui-input lxm" readonly="readonly" value="${list.wcTimeEnd }"  name="wctimeend"  style="height:35px" id="test30"
									type="text" placeholder="HH:mm:ss" lay-verify="jieshi">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">外出时长</label>
							<div class="layui-input-inline" style="width:100px;">
								<input  name="wctimeone" id="wctimeone" value="#{list.wcTimeOne}"   class="layui-input" onfocus="shi()"  style="height:35px"
									type="text" placeholder="" autocomplete="off">
							</div>
							<div class="layui-form-mid">时</div>
							<div class="layui-input-inline" style="width:100px;height:35px;">
								<input name="wctimetwo" id="wctimetwo" value="${list.wcTimeTwo}" class="layui-input"   style="height:35px"
									type="text" placeholder="" autocomplete="off">
							</div>
							<div class="layui-form-mid">分</div>
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">是否用车</label>
						<div class="layui-input-block">
							<input name="car" title="否" type="radio" checked="checked" value="0">
							<input name="car" title="是" type="radio" value="1">
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
							<button class="layui-btn" lay-filter="demo1" lay-submit="">立即提交</button>
							<button class="layui-btn layui-btn-primary" onclick="shuaxin()">关闭</button>
						</div>
					</div>
					<input type="hidden" name="systate" value="1"/>
					<input type="hidden" name="exstate" value="0"/>
					<input type="hidden" name="syshen" id="xitong"/>
					<input type="hidden" name="sid" value="${list.sId }">
				</form>
   </div>
  </body>
  <script >
	function shuaxin(){
		parent.location.reload();
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
var id=${list.shenId}
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
					 $("#sele1 option[value='"+id+"']").attr("selected", true);
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
  
  //监听提交 WaiChu/updateWai
  form.on('submit(demo1)', function(data){
    var obj1=$("#form1").serialize();
			  alert(obj1);
			$.ajax({
				 url:"WaiChu/updateWai",
                 type:'post',
                 data:obj1,
                 dataType:'json',
                 success:function (data) {
                	layer.config("更改成功", function(index) {
                		location.reload();
                	})
                }
			});
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
<script type="text/javascript">
		
		
		/*计算时间  */
		function shi(){
			var kai=$("#test4").val();
			var jie=$("#test30").val();
    		var ri=$("#test1").val();
		    var s_time = ri + " " + kai;
			var e_time = ri + " " + jie;
		
		    if(s_time=='' || e_time==''){
		        $("#wctimeone").val(0);
		        $("#wctimetwo").val(0);
		    }else{
		        var s_ms = Date.parse(new Date(s_time.replace(/-/g, "/")));
		        var e_ms = Date.parse(new Date(e_time.replace(/-/g, "/")));
		
		        if(e_ms > s_ms){
		            var diff_ms = parseInt((e_ms - s_ms)/1000);
		            var diff_h = parseInt(diff_ms/3600);
		            var diff_m = parseInt((diff_ms % 3600)/60);
		            $("#wctimeone").val(diff_h);
		            $("#wctimetwo").val(diff_m);
		        }else{
		            $("#wctimeone").val(0);
		            $("#wctimetwo").val(0);
		        }
		    }
		}
	</script>
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
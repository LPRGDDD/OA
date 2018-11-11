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
    
    <title>My JSP 'QingJiaUpdate.jsp' starting page</title>
    
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
    <form class="layui-form" id="form1" action="">
					<div class="layui-form-item">
						<label class="layui-form-label"><span class="yan">*</span>出差地点</label>
						<div class="layui-input-inline">
							<!--style="height:35px"  -->
							<input name="timeaddress" class="layui-input lxm"  value="${list.timeAddress}" type="text"
								style="height:35px" placeholder="请输入" autocomplete="off"
								lay-verify="required" lay-verify="title">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label"><span class="yan">*</span>出差事由</label>
						<div class="layui-input-inline">
							<!--style="height:35px"  -->
							<input name="syreason" class="layui-input lxm"  value="${list.syReason}" type="text"
								style="height:35px" placeholder="请输入" autocomplete="off"
								lay-verify="required" lay-verify="title">
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label"><span class="yan">*</span>开始日期</label>
							<div class="layui-input-inline">
								<input class="layui-input lxm" readonly="readonly" name="wctime" value="${list.wcTime}"  style="height:35px" id="test5"
									type="text" placeholder="yyyy-MM-dd HH:mm:ss" lay-verify="kaishi">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label"><span class="yan">*</span>结束日期</label>
							<div class="layui-input-inline">
								<input class="layui-input lxm" readonly="readonly"  name="wctimeend" value="${list.wcTimeEnd }"  style="height:35px" id="test32"
									type="text" placeholder="yyyy-MM-dd HH:mm:ss" lay-verify="jieshi">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">出差时长</label>
							<div class="layui-input-inline" style="width:100px;">
								<input  name="wctimeone" id="wctimeone" value="${list.wcTimeOne}" readonly="readonly"   class="layui-input" onfocus="shi()"  style="height:35px"
									type="text" placeholder="" autocomplete="off">
							</div>
							<div class="layui-form-mid">天</div>
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
							<button class="layui-btn layui-btn-primary" onclick="shuaxin()">关闭</button>
						</div>
					</div>
					<input type="hidden" name="systate" value="4"/>
					<input type="hidden" name="exstate" value="0"/>
					<input type="hidden" name="syshen" id="xitong">
					<input type="hidden" name="sid" value="${list.sId}">
					<input type="hidden" name="id" id="id" value="<shiro:principal property="id"/>">
				</form>
    
    <script type="text/javascript">
    function shuaxin(){
    	parent.location.reload();
    }
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
		            $("#wctimeone").val(tian);
		            $("#wctimetwo").val(HH);
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
  
  //监听提交
  form.on('submit(demo1)', function(data){
    var obj=$("#form1").serialize();
			$.ajax({
				 url:"WaiChu/CuhChaiXiu",
                 type:'post',
                 data:obj,
                 dataType:'json',
                 success:function (data) {
                    if(data>0){
                   		layer.confirm('操作成功', function(index){
					       parent.location.reload();
					        layer.close(index);
					     });
                    }else{
                    	layer.confirm('操作失败', function(index){
					       parent.location.reload();
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
			//时间选择器
			laydate.render({
				elem : '#test4',
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
})
	</script>
  </body>
</html>

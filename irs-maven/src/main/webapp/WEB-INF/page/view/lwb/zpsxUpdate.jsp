<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zpsxUpdate.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="page/resources/layui/css/layui.css">
    <script type="text/javascript" src="page/resources/jquery.form.js"></script>
    <script type="text/javascript" src="page/resources/jquery-1.11.3.min.js"></script>
    <script src="page/resources/layui/layui.js" charset="utf-8"></script>
    <script src="page/resources/layui/layui.all.js" charset="utf-8"></script>
  </head>
  
  <body>
   <form class="layui-form">

	
	  <div class="layui-form-item">
	          <div class="layui-inline">
					<label class="layui-form-label"><span>*</span>计划名称</label>
				<div class="layui-input-inline">
					<input value="${zpsx.hr_plan_name}" readonly="readonly" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	       
	       <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>应聘人姓名</label>
				<div class="layui-input-inline">
                <input value="${zpsx.hr_talents_name}" readonly="readonly" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">		
                </div>
			</div> 
			
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>应聘岗位</label>
			    <div class="layui-input-inline">
			       	<input value="${zpsx.hr_talents_toemploy}" readonly="readonly" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	</div>
	
	<div class="layui-form-item">	   
	       <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>联系方式</label>
				<div class="layui-input-inline">				
					<input class="layui-input ym" readonly="readonly" value="${zpsx.hr_talents_relation}" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div> 

	        <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>筛选时间</label>
			    <div class="layui-input-inline">
					<input value="${zpsx.hr_screen_currenttime}" readonly="readonly" class="layui-input ym" type="date">
				</div>
			</div>
        	
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>创建人</label>
				<div class="layui-input-inline">
					<input value="${zpsx.hr_screen_username}" readonly="readonly" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
 </div>	
					
         	
 </form>
 
   <br/>
   <br/>
   
   <form class="layui-form" id="upScreen" action="">

	  <div class="layui-form-item">
	       <div class="layui-inline">
					<label class="layui-form-label"><span>*</span>面试方式</label>
				<div class="layui-input-inline">
					<select name="hrScreenWay">
				          <option>笔试</option>
					      <option>面试</option>
					      <option>面试+笔试</option>
					  </select>
				</div>
			</div>
	       
	       <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>面试时间</label>
				<div class="layui-input-inline">
			      <input type="hidden" name="hrTalentsId" value="${zpsx.hr_talents_id}"/>	
				  <input type="hidden" name="hrScreenId" value="${zpsx.hr_screen_id}"/>
                  <input name="hrScreenInterview" class="layui-input ym" type="date" placeholder="请输入" autocomplete="off">	
		     	</div> 
		   </div>
	</div>
	
	
	<div class="layui-form-item layui-form-text">
          <label class="layui-form-label">面试内容</label>
            <div class="layui-input-block">
               <textarea name="hrScreenContent" placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
     </div>
     
     <div class="layui-form-item layui-form-text">
          <label class="layui-form-label">意见</label>
            <div class="layui-input-block">
               <textarea name="hrScreenOpinion" placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
     </div>			
     
     
		  <div class="layui-form-item">
		    <div class="layui-input-block">
		      <button class="layui-btn"  lay-filter="demo1" lay-submit="">通过</button>
		      <button class="layui-btn"  lay-filter="demo2" lay-submit="">不通过</button>
		    </div>
		  </div>	
   </form>

	
	<!--form  -->
	
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use(['form', 'layedit', 'laydate'], function(){
  var form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;
   layui.use('form', function(){
        var form = layui.form; 
        $.ajax({
				url:"talent/planAll",
				type:"post",
				dataType:"json",
				success:function(data){
				$("#sele1").html("");
	        		for(var i=0;i<data.length;i++){
	        		var obj=data[i];
					  var tr="<option value='"+obj.hr_plan_id+"'>"+obj.hr_plan_name+"</option>";
				  	$("#sele1").append(tr);  
				  	 form.render('select');  			
	        		}
				}
			})
			
   });
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
    ,pass: [/(.+){6,12}$/, '密码必须6到12位']
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
 var obj=$("#upScreen").serialize();//将表单数据转换成json对象
			 alert(obj)
			$.ajax({
	        	url:"screen/updateScreen2",
	        	type:"post",
	        	async:true,
	        	
	        	data :obj,
	       	 	dataType:'text',
	        	success:function(data) {
	        	alert(obj)
	        		parent.location.reload();
	        	}
 		      });
    return false;
  });
 

 //监听提交
  form.on('submit(demo2)', function(data){
 var obj=$("#upScreen").serialize();//将表单数据转换成json对象
			 alert(obj)
			$.ajax({
	        	url:"screen/updateScreen3",
	        	type:"post",
	        	async:true,
	        	
	        	data :obj,
	       	 	dataType:'text',
	        	success:function(data) {
	        	alert(obj)
	        		parent.location.reload();
	        	}
 		      });
    return false;
  });
 
});
</script>
  </body>
</html>
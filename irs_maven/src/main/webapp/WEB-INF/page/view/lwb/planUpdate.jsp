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
    
    <title>My JSP 'planUpdate.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" type="text/css" href="page/resources/layui/css/layui.css">
    <script type="text/javascript" src="page/resources/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="page/resources/jquery.form.js"></script>
    <script src="page/resources/layui/layui.js" charset="utf-8"></script>
    <script src="page/resources/layui/layui.all.js" charset="utf-8"></script>

  </head>
  
  <body>
       <form class="layui-form" id="uzi" action="">
				
		<div class="layui-form-item">
		    <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>计划编号</label>
			    <div class="layui-input-inline">
					 <input type="hidden" name="hrPlanId" value="${p.hr_plan_id}"/>
					<input name="hrPlanNumber" value="${p.hr_plan_number}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>计划名称</label>
			    <div class="layui-input-inline">
					<input name="hrPlanName" value="${p.hr_plan_name}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	
	
	<div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>招聘渠道</label>
				<div class="layui-input-inline">
				    <input name="hrPlanDitch" value="${p.hr_plan_ditch}" readonly="readonly" class="layui-input ym" type="text"  placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>招聘人数</label>
				<div class="layui-input-inline">
					<input name="hrPlanCount" value="${p.hr_plan_count}" class="layui-input ym" type="text"  placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>开始时间</label>
				<div class="layui-input-inline">
					<input name="hrPlanStartdate" value="${p.hr_plan_startdate}" class="layui-input ym" type="date"  autocomplete="off">
				</div>
			</div>
	        <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>结束时间</label>
			    <div class="layui-input-inline">
					<input name="hrPlanDateclosed" value="${p.hr_plan_dateclosed}" class="layui-input ym" type="date" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	       <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>预算费用</label>
			    <div class="layui-input-inline">
					<input name="hrPlanBudget" value="${p.hr_plan_budget}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>招聘部门</label>
				<div class="layui-input-inline">
				    <input name="hrPlanDepartment" value="${p.hr_plan_department}" readonly="readonly" class="layui-input" type="text"  placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>招聘岗位</label>
			    <div class="layui-input-inline">
			        <input name="hrPlanPost" value="${p.hr_plan_post}" readonly="readonly" class="layui-input" type="text"  placeholder="请输入" autocomplete="off">
				</div>
			</div>
	        <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>用工日期</label>
			    <div class="layui-input-inline">
					<input name="hrPlanSkilldate"  value="${p.hr_plan_skilldate}" class="layui-input ym" type="date" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>审批人</label>
				<div class="layui-input-inline">
				     <input type="text" class="layui-input" value="${p.username}" readonly="readonly"/>
					 <input type="hidden" name="admin.id" value="${p.Id}"/>
				</div>
			</div>
	    </div>
	<div class="layui-form-item layui-form-text">
          <label class="layui-form-label">招聘说明</label>
            <div class="layui-input-block">
               <textarea name="hrPlanExplain"  class="layui-textarea">${p.hr_plan_explain}</textarea>
            </div>
     </div>
     
     <div class="layui-form-item layui-form-text">
          <label class="layui-form-label">招聘备注</label>
            <div class="layui-input-block">
               <textarea name="hrPlanRemark"  placeholder="请输入内容" class="layui-textarea">${p.hr_plan_remark}</textarea>
            </div>
     </div>
	
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>创建者用户名</label>
				<div class="layui-input-inline">
					<input name="hrPlanUsername"  value="${p.hr_plan_username}" class="layui-input ym" type="text" readonly="readonly" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline" style="display:none">
				<label class="layui-form-label"><span class="yan">*</span>计划状态</label>
			    <div class="layui-input-inline">
					<input name="hrPlanState"  value="${p.hr_plan_state}" class="layui-input ym" type="hidden" readonly="readonly">
				</div>
			</div>
		</div>			
					
     
     
   <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn"  lay-filter="demo1" lay-submit="">立即提交</button>
    </div>
  </div>	
   </form>

	
	
	
	<!--form  -->
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
       var obj=$("#uzi").serialize();/* 将表单数据转换成json对象 */
			 alert(obj)
			$.ajax({
	        	url:"plan/updatePlan",
	        	type:"post",
	        	async:true,
	        	/* contentType:"application/json; charset=utf-8",//需要制定 */
	        	/* data:JSON.stringify(obj),//将json对象转换成json格式的字符串 */
	        	data:obj,
	       	 	//dataType : 'text',//返回的数据类型
	       	 	dataType:'text',
	        	success:function(data) {
	        	alert("11111")
	        		parent.location.reload();
	        	}
 		      });
  
    return false;
  });
 
 
  
  
});
</script>
  </body>
</html>
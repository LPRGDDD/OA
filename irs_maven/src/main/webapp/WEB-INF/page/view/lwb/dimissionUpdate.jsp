<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dimissionUpdate.jsp' starting page</title>
    
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
  <hr>
        <form class="layui-form" id="fo">
		<div class="layui-form-item">
		 	<div class="layui-inline">
				<label class="layui-form-label">人员:</label>
			    <div class="layui-input-inline">
				     <select name="hrRecordId">
					    <c:forEach items="${reco}" var="re">
						<c:if test="${di.hr_record_id==re.hr_record_id}">
							<option value="${re.hr_record_id }" selected>${re.hr_record_name }</option>
						</c:if>
						<c:if test="${di.hr_record_id!=re.hr_record_id}">
							<option value="${re.hr_record_id}">${re.hr_record_name }</option>
						</c:if>
					</c:forEach>
					</select>
				</div>
			</div>
			<input name="hrDimissionId" readonly="readonly" value="${di.hr_dimission_id}" class="layui-input ym" type="hidden" placeholder="请输入" autocomplete="off">
			<div class="layui-inline">
				<label class="layui-form-label">离职类型:</label>
			    <div class="layui-input-inline">
			       <input name="hrDimissionLeavetype" readonly="readonly" value="${di.hr_dimission_leavetype}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	
	
	<div class="layui-form-item">
	        
			<div class="layui-inline">
					<label class="layui-form-label">申请日期:</label>
				<div class="layui-input-inline">
					<input name="hrDimissionApplicationdate" value="${di.hr_dimission_applicationdate}" class="layui-input ym" type="date"  placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label">离职日期:</label>
				<div class="layui-input-inline">
					<input name="hrDimissionDeparturedate" value="${di.hr_dimission_departuredate}" class="layui-input ym" type="date"  autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">	        
	        <div class="layui-inline">
				<label class="layui-form-label">工资截至日期:</label>
			    <div class="layui-input-inline">
                     <input name="hrDimissionCutoffdate" value="${di.hr_dimission_cutoffdate}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">离职人员所在部门:</label>
			    <div class="layui-input-inline">
					<select name="deptId">
					    <c:forEach items="${dept}" var="d">
						<c:if test="${di.dept_id==d.dept_id}">
							<option value="${d.dept_id }" selected>${d.dept_name }</option>
						</c:if>
						<c:if test="${di.dept_id!=d.dept_id}">
							<option value="${d.dept_id}">${d.dept_name }</option>
						</c:if>
					</c:forEach>
					</select>
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">	       
	        <div class="layui-inline">
					<label class="layui-form-label">担任职务:</label>
				<div class="layui-input-inline">
					<input name="hrDimissionDuty" value="${di.hr_dimission_cutoffdate}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	  
	<div class="layui-form-item layui-form-text">
          <label class="layui-form-label">离职原因：</label>
            <div class="layui-input-block">
               <textarea name="hrDimissionWhy" placeholder="请输入内容" class="layui-textarea">${di.hr_dimission_why}</textarea>
            </div>
     </div>
     
     <div class="layui-form-item layui-form-text">
          <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
               <textarea name="hrDimissionRemark" value="" placeholder="请输入内容" class="layui-textarea">${di.hr_dimission_remark}</textarea>
            </div>
     </div>
	
	   
	        
			
			

	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>创建者用户名</label>
				<div class="layui-input-inline">
					<input value="${di.hr_dimission_username}" class="layui-input ym" type="text" readonly="readonly"  autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
			     <label class="layui-form-label"><span class="yan">*</span>创建时间</label>
			    <div class="layui-input-inline">
					<input value="${di.hr_dimission_currenttime}"  readonly="readonly"  class="layui-input ym" type="date">
				</div>
			</div>
		</div>			
					
     
     
   <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn"  lay-filter="demo1" lay-submit="">立即提交</button>
      <button class="layui-btn layui-btn-primary" type="reset">重置</button>
    </div>
  </div>	
   </form>   
   
<script>
layui.use(['form', 'layedit', 'laydate'], function(){
  var form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;
   form.render();
  
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
       var obj=$("#fo").serialize();/* 将表单数据转换成json对象 */
			$.ajax({
	        	url:"dimission/updateDimission",
	        	type:"post",
	        	async:true,
	        	data:obj,
	       	 	dataType:'text',
	        	success:function(data) {
	        		parent.location.reload();
	        	}
 		      });
  
    return false;
  });
 
 
  
  
});
</script>
  </body>
</html>

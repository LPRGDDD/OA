<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'rsddUpdate.jsp' starting page</title>
    
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
        <form class="layui-form layui-form-pane" id="fo">
		<div class="layui-form-item">
		 	<div class="layui-inline">
				<label class="layui-form-label">人员:</label>
			    <div class="layui-input-inline">
				     <select name="hrRecordId">
					    <c:forEach items="${reco}" var="re">
						<c:if test="${list.hr_record_id==re.hr_record_id}">
							<option value="${re.hr_record_id }" selected>${re.hr_record_name }</option>
						</c:if>
						<c:if test="${list.hr_record_id!=re.hr_record_id}">
							<option value="${re.hr_record_id}">${re.hr_record_name }</option>
						</c:if>
					</c:forEach>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">调动类型:</label>
			    <div class="layui-input-inline">
			       <input name="hrTransferTransfertype" readonly="readonly" value="${list.hr_transfer_transfertype}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	
	
	<div class="layui-form-item">
	        
			<div class="layui-inline">
					<label class="layui-form-label">调动日期:</label>
				<div class="layui-input-inline">
					<input name="hrTransferDate" value="${list.hr_transfer_date}" class="layui-input ym" type="date"  placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label">生效日期:</label>
				<div class="layui-input-inline">
					<input name="hrTransferEffectivedate" value="${list.hr_transfer_effectivedate}" class="layui-input ym" type="date"  autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">	        
	        <div class="layui-inline">
				<label class="layui-form-label">调动前单位:</label>
			    <div class="layui-input-inline">
			        <input name="hrTransferId" readonly="readonly" value="${list.hr_transfer_id}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
					<input name="hrTransferBeforetheunit" value="${list.hr_transfer_aftertheunit}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">调动后单位:</label>
			    <div class="layui-input-inline">
					<input name="hrTransferAftertheunit" value="${list.hr_transfer_aftertheunit}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">	       
	        <div class="layui-inline">
					<label class="layui-form-label">调动前职务:</label>
				<div class="layui-input-inline">
					<input name="hrTransferFormerposition" value="${list.hr_transfer_formerposition}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">调动后职务:</label>
			    <div class="layui-input-inline">
					<input name="hrTransferAfterthejob" value="${list.hr_transfer_afterthejob}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">	        
	        <div class="layui-inline">
				<label class="layui-form-label">调动前部门:</label>
			    <div class="layui-input-inline">
					<input name="hrTransferBefore" value="${list.hr_transfer_before}" id="dept_name" class="layui-input" type="text" placeholder="请输入" autocomplete="off"/>
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label">调动后部门:</label>
				<div class="layui-input-inline">
			    <select name="deptId">
					    <c:forEach items="${dept}" var="d">
						<c:if test="${list.dept_id==d.dept_id}">
							<option value="${d.dept_id }" selected>${d.dept_name }</option>
						</c:if>
						<c:if test="${list.dept_id!=d.dept_id}">
							<option value="${d.dept_id}">${d.dept_name }</option>
						</c:if>
					</c:forEach>
					</select>
		        </div>
			</div>
	   </div>
	   <div class="layui-form-item">	        
			<div class="layui-inline">
				<label class="layui-form-label">调动后角色:</label>
			    <div class="layui-input-inline">
			    <select name="roleId">
					    <c:forEach items="${role}" var="r">
						<c:if test="${list.role_id==r.role_id}">
							<option value="${r.role_id}" selected>${r.role_name }</option>
						</c:if>
						<c:if test="${list.role_id!=r.role_id}">
							<option value="${r.role_id}">${r.role_name }</option>
						</c:if>
					</c:forEach>
					</select>
		        </div>
			</div>
			<div class="layui-inline">
			     <div class="layui-input-inline">
					<input name="hrTransferModification" id="xx"  readonly="readonly"  class="layui-input ym" type="text">
				</div>
			</div>						
	    </div>
	<div class="layui-form-item layui-form-text">
          <label class="layui-form-label">调动原因：</label>
            <div class="layui-input-block">
               <textarea name="hrTransferCause" value="" placeholder="请输入内容" class="layui-textarea">${list.hr_transfer_cause}</textarea>
            </div>
     </div>
     
     <div class="layui-form-item layui-form-text">
          <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
               <textarea name="hrTransferRemark" value="" placeholder="请输入内容" class="layui-textarea">${list.hr_transfer_remark}</textarea>
            </div>
     </div>
	
	   
	        
			
			

	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>创建者用户名</label>
				<div class="layui-input-inline">
					<input value="${list.hr_transfer_username}" class="layui-input ym" type="text" readonly="readonly"  autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
			     <label class="layui-form-label"><span class="yan">*</span>创建时间</label>
			    <div class="layui-input-inline">
					<input value="${list.hr_transfer_currenttime}"  readonly="readonly"  class="layui-input ym" type="text">
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
	        	url:"transfer/updateTransfer",
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
<script type="text/javascript">
$(function(){
var today=new Date();
    var H=today.getFullYear();
    var M=today.getMonth()+1;
    var R=today.getDate();
    var h=today.getHours();
    var mm=today.getMinutes();
    var ss=today.getSeconds();
  	var xitong=H+"-"+M+"-"+R+" "+h+":"+mm+":"+ss;
  	$("#xx").val(xitong);
  	})
</script>
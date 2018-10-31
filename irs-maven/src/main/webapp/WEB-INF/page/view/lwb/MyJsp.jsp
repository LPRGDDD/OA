<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
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
    <script src="page/resources/layui/layui.js" charset="utf-8"></script>
    <script src="page/resources/layui/layui.all.js" charset="utf-8"></script>
    <link rel="stylesheet" href="page/resources/bootstrap/css/bootstrap.min.css">
	<script src="page/resources/bootstrap/js/bootstrap.min.js"></script>
	
	
	<style type="text/css">

.yan {
	color: red;

}
</style>
  </head>
  
  <body>
        <br/>
        <br/>
       <form class="layui-form" id="selejihua" action="">
				
		<div class="layui-form-item">
		    <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>计划编号</label>
			    <div class="layui-input-inline">
					<input name="hrPlanNumber" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>计划名称</label>
			    <div class="layui-input-inline">
					<input name="hrPlanName" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	
	
	<div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>招聘渠道</label>
				<div class="layui-input-inline">
					<select name="hrPlanDitch">
					    <option>招聘会</option>
					    <option>猎头公司</option>
					    <option>网络招聘</option>
				     </select>
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>招聘人数</label>
				<div class="layui-input-inline">
					<input name="hrPlanCount" class="layui-input ym" type="text"  placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>开始时间</label>
				<div class="layui-input-inline">
					<input name="hrPlanStartdate" class="layui-input ym" type="date"  autocomplete="off">
				</div>
			</div>
	        <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>结束时间</label>
			    <div class="layui-input-inline">
					<input name="hrPlanDateclosed" class="layui-input ym" type="date" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	       <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>预算费用</label>
			    <div class="layui-input-inline">
					<input name="hrPlanBudget" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>招聘部门</label>
				<div class="layui-input-inline">
					<select name="hrPlanDepartment">
					    <option>销售部</option>
					    <option>市场部</option>
					    <option>品牌部</option>
					    <option>财务部</option>
					    <option>行政部</option>
					    <option>研发部</option>
				     </select>
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>招聘岗位</label>
			    <div class="layui-input-inline">
					<select name="hrPlanPost">
					    <option>会计</option>
					    <option>行政办事员</option>
					    <option>应用工程师</option>
					    <option>安全人员</option>
					    <option>系统操作员</option>
				     </select>
				</div>
			</div>
	        <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>用工日期</label>
			    <div class="layui-input-inline">
					<input name="hrPlanSkilldate" class="layui-input ym" type="date" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>审批人</label>
				<div class="layui-input-inline">
					<select name="admin.id" id="sele1">
				     </select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>审批日期</label>
			    <div class="layui-input-inline">
					<input name="hrPlanAuditingdate"  class="layui-input ym" type="date"  autocomplete="off">
				</div>
			</div>
	    </div>
	<div class="layui-form-item layui-form-text">
          <label class="layui-form-label">招聘说明</label>
            <div class="layui-input-block">
               <textarea name="hrPlanExplain" placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
     </div>
     
     <div class="layui-form-item layui-form-text">
          <label class="layui-form-label">招聘备注</label>
            <div class="layui-input-block">
               <textarea name="hrPlanRemark" placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
     </div>
	
	   
	        
			
			

	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>创建者用户名</label>
				<div class="layui-input-inline">
					<input name="hrPlanUsername" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline" style="display:none">
				<label class="layui-form-label"><span class="yan">*</span>计划状态</label>
			    <div class="layui-input-inline">
					<input name="hrPlanState" value="0" class="layui-input ym" type="text">
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
				url:"plan/userAll",
				type:"post",
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
  var obj=$("#selejihua").serialize();
				$.ajax({
		        	     url : "plan/savePlan",
		        	     type : "post",
		        	     async : true,
		        	     data :$("#selejihua").serialize(),
		       	         dataType : 'text',//返回的数据类型
		        	     success : function(data) {
		        		       alert(data);
		        		      parent.location.reload();
		        	}
		 		});
  
    return false;
  });
 
 
  
  
});
</script>
  </body>
</html>

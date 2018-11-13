<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hr_recordSave.jsp' starting page</title>
    
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
            <form class="layui-form" id="selerck" action="">
				
		<div class="layui-form-item">
		    <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>用户名:</label>
			    <div class="layui-input-inline">
			    	<input name="hrRecordName" value="${talent.hr_talents_name}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>OA用户名:</label>
			    <div class="layui-input-inline">
					<input name="hrRecordOaname"  class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>角色:</label>
				<div class="layui-input-inline">				
					<select name="roleId" id="sele2" class="layui-form"></select>
				</div>
			</div>
	   </div>
	
	
	
	<div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>编号:</label>
				<div class="layui-input-inline">				
						<input name="hrRecordSerial" class="layui-input" type="text"  autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>工号:</label>
				<div class="layui-input-inline">
				    <input name="hrRecordJobnumber" class="layui-input" type="text" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>应聘日期:</label>
				<div class="layui-input-inline">
					<input name="hrRecordCreatetime" value="${talent.hr_talents_register}" class="layui-input ym" type="text"  autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>部门:</label>
				<div class="layui-input-inline">
					<select name="deptId" id="sele1" class="layui-form"></select>
				</div>
			</div>
	        <div class="layui-inline">
				<label class="layui-form-label">英文名:</label>
			    <div class="layui-input-inline">
					<input name="hrRecordEnglishname" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>身份证号:</label>
			    <div class="layui-input-inline">
					<input name="hrRecordIdentity" value="${talent.hr_talents_identity}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	       <div class="layui-inline">
				<label class="layui-form-label">出生日期:</label>
			    <div class="layui-input-inline">			    
					<input name="hrRecordDateOfBirth" value="${talent.hr_talents_birth}" class="layui-input ym" type="date" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	        <div class="layui-inline">
					<label class="layui-form-label">性别:</label>
				<div class="layui-input-inline">				
					<input name="hrRecordSex" value="${talent.hr_talents_sex}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">年龄:</label>
			    <div class="layui-input-inline">
		             <input name="hrRecordAge"  value="${talent.hr_talents_age}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
				<label class="layui-form-label">民族:</label>
			    <div class="layui-input-inline">
                      <input name="hrRecordNation"  value="${talent.hr_talents_nation}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">联系方式:</label>
			    <div class="layui-input-inline">			    
                      <input name="hrRecordRelation"  value="${talent.hr_talents_relation}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	        <div class="layui-inline">
				<label class="layui-form-label">电子邮箱:</label>
			    <div class="layui-input-inline">
                      <input name="hrRecordEmail"  value="${talent.hr_talents_mall}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label">婚姻状况:</label>
				<div class="layui-input-inline">
					 <input type="text" name="hrRecordMarriage" value="${talent.hr_talents_state}" class="layui-input"/>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">政治面貌:</label>
			    <div class="layui-input-inline">
					<input name="hrRecordFace"  value="${talent.hr_talents_face}" class="layui-input ym" type="text"  autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">籍贯:</label>
			    <div class="layui-input-inline">
					<input name="hrRecordNativeplace"  value="${talent.hr_talents_native}" class="layui-input ym" type="text"  autocomplete="off">
				</div>
			</div>
	    </div>
	    
	    
	    
	    
	<div class="layui-form-item">
	   <div class="layui-inline">
          <label class="layui-form-label">健康状况:</label>
            <div class="layui-input-inline">			           
					<input name="hrRecordHealth"  value="${talent.hr_talents_health}" class="layui-input ym" type="text"  autocomplete="off">
            </div>
       </div>
     
       <div class="layui-inline">
          <label class="layui-form-label">户口所在地:</label>
            <div class="layui-input-inline">            
					<input name="hrRecordFamily"  value="${talent.hr_talents_place}" class="layui-input ym" type="text"  autocomplete="off">
            </div>
       </div>
       <div class="layui-inline">
          <label class="layui-form-label">现住址:</label>
            <div class="layui-input-inline">
					<input name="hrRecordAddress"  value="${talent.hr_talents_dwell}" class="layui-input ym" type="text"  autocomplete="off">
            </div>
        </div>
  </div>
	   
	   
	   
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label">员工类型:</label>
				<div class="layui-input-inline">
				    <select name="hrRecordEmployeetype" id="sele1" class="layui-form">
				           <option>合同工</option>
				           <option>正式录用</option>
				   </select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">岗位:</label>
			    <div class="layui-input-inline">
					<input name="hrRecordPost"  value="${talent.hr_talents_toemploy}" class="layui-input ym" type="text"/>
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label">入职时间:</label>
				<div class="layui-input-inline">
					<input name="hrRecordEntrytime" class="layui-input ym" type="date" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	 </div>	
	 
	  <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label">起薪时间:</label>
				<div class="layui-input-inline">
					<input name="hrRecordStartingtime"  class="layui-input ym" type="date" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">毕业院校:</label>
			    <div class="layui-input-inline">
					<input name="hrRecordSchool"  value="${talent.hr_talents_school}" class="layui-input ym" type="text" />
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label">毕业时间:</label>
				<div class="layui-input-inline">
					<input name="hrRecordGraduate"  value="${talent.hr_talents_graduate}" class="layui-input ym" type="date" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	 </div>
	 
	  <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label">学历:</label>
				<div class="layui-input-inline">
					<input name="hrRecordDegree"  value="${talent.hr_talents_background}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">特长:</label>
			    <div class="layui-input-inline">
					<input name="hrRecordUnusual"  value="${talent.hr_talents_strong}" class="layui-input ym" type="text">
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label">专业:</label>
				<div class="layui-input-inline">
					<input name="hrRecordMajor"  value="${talent.hr_talents_major}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<div class="layui-input-inline">
					<input name="hrRecordState"  value="0" class="layui-input" type="hidden" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<div class="layui-input-inline">				
						<input name="hrTalentsId" value="${talent.hr_talents_id}" class="layui-input" type="text"  autocomplete="off">
				</div>
			</div>
	 </div>		
	
	     <div class="layui-form-item layui-form-text">
          <label class="layui-form-label">备注:</label>
            <div class="layui-input-block">
               <textarea name="hrRecordRemark"  placeholder="请输入内容" class="layui-textarea">${rck.hr_talents_remark}</textarea>
            </div>
        </div>

        
	 <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label">创建者用户名:</label>
				<div class="layui-input-inline">
					<input name="hrRecordUsername" value="<shiro:principal property="fullname"/>" class="layui-input ym" type="text" readonly="readonly" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">创建时间:</label>
			    <div class="layui-input-inline">
					<input name="hrRecordCurrenttime" id="xx"  class="layui-input ym" type="text" readonly="readonly">
				</div>
			</div>
	 </div>	
					
     
     
   <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn"  lay-filter="demo1" lay-submit="">确定建立档案</button>
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
				url:"recoed/seleDept",
				type:"post",
				dataType:"json",
				success:function(data){
				$("#sele1").html("");
	        		for(var i=0;i<data.length;i++){
	        		var obj=data[i];
					  var tr="<option value='"+obj.dept_id+"'>"+obj.dept_name+"</option>";
				  	$("#sele1").append(tr);  
				  	 form.render('select');  			
	        		}
				}
			})
			
			
			$.ajax({
				url:"recoed/seleroles",
				type:"post",
				dataType:"json",
				success:function(data){
				$("#sele2").html("");
	        		for(var i=0;i<data.length;i++){
	        		var obj=data[i];
					  var tr="<option value='"+obj.role_id+"'>"+obj.role_name+"</option>";
				  	$("#sele2").append(tr);  
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
  var obj=$("#selerck").serialize();
    alert(obj)
				$.ajax({
		        	     url : "recoed/saveRecord",
		        	     type : "post",
		        	     async : true,
		        	     data :$("#selerck").serialize(),
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
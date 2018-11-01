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
    
    <title>My JSP 'rckUpdate.jsp' starting page</title>
    
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
				<label class="layui-form-label"><span class="yan">*</span>计划</label>
			    <div class="layui-input-inline">
			    	<input value="${rck.hr_plan_name}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
					<input type="hidden" name="hrPlanId" value="${rck.hr_plan_id}"/>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>应聘人姓名</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsName" value="${rck.hr_talents_name}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
					<input name="hrTalentsId" value="${rck.hr_talents_id}" class="layui-input ym" type="hidden">
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>出生日期</label>
				<div class="layui-input-inline">				
					<input name="hrTalentsBirth" value="${rck.hr_talents_birth}" class="layui-input ym" type="date"  autocomplete="off">
				</div>
			</div>
	   </div>
	
	
	
	<div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>性别</label>
				<div class="layui-input-inline">				
						<input name="hrTalentsSex" value="${rck.hr_talents_sex}" class="layui-input ym" type="text"  autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>年龄</label>
				<div class="layui-input-inline">
				    <input name="hrTalentsAge" value="${rck.hr_talents_age}" class="layui-input ym" type="text"  placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>籍贯</label>
				<div class="layui-input-inline">
					<input name="hrTalentsNative" value="${rck.hr_talents_native}" class="layui-input ym" type="text"  autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>户口所在地</label>
				<div class="layui-input-inline">
					<input name="hrTalentsPlace" value="${rck.hr_talents_place}" class="layui-input ym" type="text"  autocomplete="off">
				</div>
			</div>
	        <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>民族</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsNation" value="${rck.hr_talents_nation}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>婚姻状况</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsState" value="${rck.hr_talents_state}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	       <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>政治面貌</label>
			    <div class="layui-input-inline">			    
					<input name="hrTalentsFace" value="${rck.hr_talents_face}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>联系方式</label>
				<div class="layui-input-inline">				
					<input name="hrTalentsRelation" value="${rck.hr_talents_relation}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>e-mall</label>
			    <div class="layui-input-inline">
		             <input name="hrTalentsMall"  value="${rck.hr_talents_mall}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>参加工作时间</label>
			    <div class="layui-input-inline">
                      <input name="hrTalentsWorkdate"  value="${rck.hr_talents_workdate}" class="layui-input ym" type="date" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>学历</label>
			    <div class="layui-input-inline">			    
                      <input name="hrTalentsBackground"  value="${rck.hr_talents_background}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	        <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>健康状况</label>
			    <div class="layui-input-inline">
                      <input name="hrTalentsHealth"  value="${rck.hr_talents_health}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>学位</label>
				<div class="layui-input-inline">
					 <input type="text" name="hrTalentsDegree" value="${rck.hr_talents_degree}" class="layui-input"/>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>毕业时间</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsGraduate"  value="${rck.hr_talents_graduate}" class="layui-input ym" type="date"  autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>毕业学校</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsSchool"  value="${rck.hr_talents_school}" class="layui-input ym" type="text"  autocomplete="off">
				</div>
			</div>
	    </div>
	    
	    
	    
	    
	<div class="layui-form-item">
	   <div class="layui-inline">
          <label class="layui-form-label">专业</label>
            <div class="layui-input-inline">			           
					<input name="hrTalentsMajor"  value="${rck.hr_talents_major}" class="layui-input ym" type="text"  autocomplete="off">
            </div>
       </div>
     
       <div class="layui-inline">
          <label class="layui-form-label">计算机水平</label>
            <div class="layui-input-inline">            
					<input name="hrTalentsComputer"  value="${rck.hr_talents_computer}" class="layui-input ym" type="text"  autocomplete="off">
            </div>
       </div>
       <div class="layui-inline">
          <label class="layui-form-label">外语语种</label>
            <div class="layui-input-inline">
					<input name="hrTalentsForeign"  value="${rck.hr_talents_foreign}" class="layui-input ym" type="text"  autocomplete="off">
            </div>
        </div>
  </div>
	   
	   
	   
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>外语水平</label>
				<div class="layui-input-inline">
					<input name="hrTalentsLevel"  value="${rck.hr_talents_level}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>特长</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsStrong"  value="${rck.hr_talents_strong}" class="layui-input ym" type="text"/>
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>期望从事职业</label>
				<div class="layui-input-inline">
					<input name="hrTalentsExpect"  value="${rck.hr_talents_expect}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	 </div>	
	 
	  <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>职业技能</label>
				<div class="layui-input-inline">
					<input name="hrTalentsSkill"  value="${rck.hr_talents_skill}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>工作经验</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsWorkexperience"  value="${rck.hr_talents_workExperience}" class="layui-input ym" type="text" />
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>项目经验</label>
				<div class="layui-input-inline">
					<input name="hrTalentsProjectexperience"  value="${rck.hr_talents_projectExperience}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	 </div>
	 
	  <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>现居住城市</label>
				<div class="layui-input-inline">
					<input name="hrTalentsDwell"  value="${rck.hr_talents_dwell}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>期望工作性质</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsNature"  value="${rck.hr_talents_nature}" class="layui-input ym" type="text">
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>期望从事行业</label>
				<div class="layui-input-inline">
					<input name="hrTalentsIndustry"  value="${rck.hr_talents_industry}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	 </div>		
	 
	 <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>期望薪水</label>
				<div class="layui-input-inline">
					<input name="hrTalentsPay"  value="${rck.hr_talents_pay}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>应聘岗位</label>
				<div class="layui-input-inline">
					<input name="hrTalentsToemploy"  value="${rck.hr_talents_toemploy}" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>到岗时间</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsPositiondate"  value="${rck.hr_talents_positiondate}" class="layui-input ym" type="text"/>
				</div>
			</div>
	 </div>	
	
	     <div class="layui-form-item layui-form-text">
          <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
               <textarea name="hrTalentsRemark"  placeholder="请输入内容" class="layui-textarea">${rck.hr_talents_remark}</textarea>
            </div>
        </div>

        
	 <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>创建人</label>
				<div class="layui-input-inline">
					<input name="hrTalentsUsername"  value="${rck.hr_talents_username}" class="layui-input ym" type="text" readonly="readonly" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>登记时间</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsRegister"  value="${rck.hr_talents_register}" class="layui-input ym" type="date" readonly="readonly">
				</div>
			</div>
	 </div>	
					
     
     
   <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn"  lay-filter="demo1" lay-submit="">立即修改</button>
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
        var obj=$("#selerck").serialize();//将表单数据转换成json对象
			 alert(obj)
			$.ajax({
	        	url:"talent/updaterck",
	        	type:"post",
	        	async:true,
	        	/* contentType:"application/json; charset=utf-8",//需要制定 */
	        	/* data:JSON.stringify(obj),//将json对象转换成json格式的字符串 */
	        	data:obj,
	       	 	//dataType : 'text',//返回的数据类型
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
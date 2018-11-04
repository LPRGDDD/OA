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
<link rel="stylesheet" type="text/css" href="page/resources/layui/esayui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="page/resources/layui/esayui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="page/resources/layui/esayui/demo/demo.css">
<script type="text/javascript" src="page/resources/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="page/resources/layui/esayui/jquery.easyui.min.js"></script>

<link rel="stylesheet" type="text/css" href="page/resources/layui/css/layui.css">
<script type="text/javascript" src="page/resources/jquery-1.11.3.min.js"></script>
<script src="page/resources/layui/layui.js" charset="utf-8"></script>
<script src="page/resources/layui/layui.all.js" charset="utf-8"></script>
<style type="text/css">
#form3 {
	border-bottom: 1px solid #000;
	width: 300px;
	height: 300px;
	position: relative;
	left: 300px;
	top: -300px;
}
</style>
  </head>
  
  <body>
         <div class="easyui-panel" style="padding:5px;width: 200px;height:500px;">
		     <ul id="tt" class="easyui-tree"></ul>
	     </div>
	<!-- -----------------表单----------------------- -->
	
	<form class="layui-form" id="selerck" action="">
				
		<div class="layui-form-item">
		      <div class="layui-inline">
					<label class="layui-form-label"><span>*</span>计划</label>
				<div class="layui-input-inline">
					<select name="plan.hrPlanId" id="sele1">
				     </select>
				</div>
			</div>

			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>应聘人姓名</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsName" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>出生日期</label>
				<div class="layui-input-inline">				
					<input name="hrTalentsBirth" class="layui-input ym" type="date"  autocomplete="off">
				</div>
			</div>
	   </div>
	
	
	
	<div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>性别</label>
				<div class="layui-input-inline">	
					<input name="hrTalentsSex" class="layui-input ym" type="text"  placeholder="请输入" autocomplete="off">			
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>年龄</label>
				<div class="layui-input-inline">
				    <input name="hrTalentsAge" class="layui-input ym" type="text"  placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>籍贯</label>
				<div class="layui-input-inline">
					<input name="hrTalentsNative" class="layui-input ym" type="text"  autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>户口所在地</label>
				<div class="layui-input-inline">
					<input name="hrTalentsPlace" class="layui-input ym" type="text"  autocomplete="off">
				</div>
			</div>
	        <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>民族</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsNation" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>婚姻状况</label>
			    <div class="layui-input-inline">
			        <select name="hrTalentsState">
			             <option>未婚</option>
			             <option>已婚</option>
			        </select>
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	       <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>政治面貌</label>
			    <div class="layui-input-inline">
                     <select name="hrTalentsFace">
			             <option>中共党员</option>
			             <option>中共预备党员</option>
			             <option>无党派人士</option>
			             <option>群众</option>
			        </select>		    
				</div>
			</div>
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>联系方式</label>
				<div class="layui-input-inline">				
					<input name="hrTalentsRelation" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>e-mall</label>
			    <div class="layui-input-inline">
		             <input name="hrTalentsMall"  class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>参加工作时间</label>
			    <div class="layui-input-inline">
                      <input name="hrTalentsWorkdate" class="layui-input ym" type="date" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>学历</label>
			    <div class="layui-input-inline">	
			          <select name="hrTalentsBackground">
			             <option>小学</option>
			             <option>初中</option>
			             <option>高中</option>
			             <option>大专</option>
			             <option>本科</option>
			             <option>硕士</option>
			             <option>博士</option>
			        </select>		    
				</div>
			</div>
	        <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>健康状况</label>
			    <div class="layui-input-inline">
                      <input name="hrTalentsHealth" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>学位</label>
				<div class="layui-input-inline">
				     <select name="hrTalentsDegree">
			             <option>无</option>
			             <option>学士学位</option>
			             <option>硕士学位</option>
			             <option>博士学位</option>
			        </select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>毕业时间</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsGraduate" class="layui-input ym" type="date"  autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>毕业学校</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsSchool" class="layui-input ym" type="text"  autocomplete="off">
				</div>
			</div>
	    </div>
	    
	    
	    
	    
	<div class="layui-form-item">
	   <div class="layui-inline">
          <label class="layui-form-label">专业</label>
            <div class="layui-input-inline">	
                    <select name="hrTalentsMajor">
			             <option>哲学</option>
			             <option>经济学</option>
			             <option>法学</option>
			             <option>政治学</option>
			             <option>中国语言文学</option>
			             <option>教育学</option>
			             <option>历史学</option>
			             <option>数学</option>
			             <option>力学</option>
			             <option>管理科学与工程</option>
			        </select>		           
            </div>
       </div>
     
       <div class="layui-inline">
          <label class="layui-form-label">计算机水平</label>
            <div class="layui-input-inline">  
                       <select name="hrTalentsComputer">
			             <option>无</option>
			             <option>二级</option>
			             <option>四级</option>
			             <option>六级</option>
			             <option>八级</option>
			        </select>	
            </div>
       </div>
       <div class="layui-inline">
          <label class="layui-form-label">外语语种</label>
            <div class="layui-input-inline">
					<input name="hrTalentsForeign" class="layui-input ym" type="text"  autocomplete="off">
            </div>
        </div>
  </div>
	   
	   
	   
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>外语水平</label>
				<div class="layui-input-inline">
					<input name="hrTalentsLevel" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>特长</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsStrong" class="layui-input ym" type="text"/>
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>期望从事职业</label>
				<div class="layui-input-inline">
					<input name="hrTalentsExpect" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	 </div>	
	 
	  <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>职业技能</label>
				<div class="layui-input-inline">
					<input name="hrTalentsSkill" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>工作经验</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsWorkexperience" class="layui-input ym" type="text" />
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>项目经验</label>
				<div class="layui-input-inline">
					<input name="hrTalentsProjectexperience" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	 </div>
	 
	  <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>现居住城市</label>
				<div class="layui-input-inline">
					<input name="hrTalentsDwell" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>期望工作性质</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsNature" class="layui-input ym" type="text">
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>期望从事行业</label>
				<div class="layui-input-inline">
					<input name="hrTalentsIndustry" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	 </div>		
	 
	 <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>期望薪水</label>
				<div class="layui-input-inline">
					<input name="hrTalentsPay" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">应聘岗位</label>
			    <div class="layui-input-inline">
			       <select name="hrTalentsToemploy">
			             <option>项目经理</option>
			             <option>开发人员</option>
			             <option>销售经理</option>
			             <option>销售人员</option>
			         </select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>到岗时间</label>
			    <div class="layui-input-inline">
			        <select name="hrTalentsPositiondate">
			             <option value="0">三天内</option>
			             <option value="1">一周内</option>
			             <option value="2">两周内</option>
			         </select>
				</div>
			</div>
	 </div>	
	
	     <div class="layui-form-item layui-form-text">
          <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
               <textarea name="hrTalentsRemark"  placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
        </div>

        
	 <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>创建人</label>
				<div class="layui-input-inline">
					<input name="hrTalentsUsername" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>登记时间</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsRegister" class="layui-input ym" type="date">
					<input name="hrTalentsFilestatus" value="0"  type="hidden">
				</div>
			</div>
	 </div>	
					
     
     
   <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn"  lay-filter="demo1" lay-submit="">立即添加</button>
      <button class="layui-btn layui-btn-primary" type="reset">重置</button>
    </div>
  </div>	
   </form>
		
 </body>
</html>
<script type="text/javascript">
 
  $("#tt").tree({
    url:'dept/queryDept',
 }); 

</script>
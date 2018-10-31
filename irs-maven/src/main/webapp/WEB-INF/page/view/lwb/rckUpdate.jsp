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
  <script type="text/javascript" src="page/resources/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="page/resources/jquery.form.js"></script>
  
  </head>
  
  <body>
        <form action="" method="post" id="selerck">
			<table border="1">
			<tr>
					<td><input type="hidden" name="hrTalentsId" value="${hr_talents_id}"/></td>
				</tr>
				<tr>
					<td>计划</td>
					<td><input type="text" name="plan.hrPlanName" value="${rck.hr_plan_name}"/></td>
					<td><input type="hidden" name="hrPlanId" value="${rck.hr_plan_id}"/></td>
				</tr>
				<tr>
					<td>应聘人姓名</td>
					<td><input type="text" name="hrTalentsName"  value="${rck.hr_talents_name}"/></td>					
				</tr>
				
				<tr>
					<td>出生日期</td>
					<td><input type="date" name="hrTalentsBirth" value="${rck.hr_talents_birth}"/></td>					
				</tr>
				<tr>
					<td>性别</td>
					<td><input type="text" name="hrTalentsSex" value="${rck.hr_talents_sex}"/></td>					
				</tr>
				<tr>
					<td>年龄</td>
					<td><input type="text" name="hrTalentsAge" value="${rck.hr_talents_age}"/></td>					
				</tr>
				<tr>
					<td>籍贯</td>
					<td><input type="text" name="hrTalentsNative" value="${rck.hr_talents_native}"/></td>					
				</tr>
				<tr>
					<td>户口所在地</td>
					<td><input type="text" name="hrTalentsPlace" value="${rck.hr_talents_place}"/></td>					
				</tr>
				<tr>
					<td>民族</td>
					<td><input type="text" name="hrTalentsNation" value="${rck.hr_talents_nation}"/></td>					
				</tr>
				
				<tr>
					<td>婚姻状况</td>
					<td><input type="text" name="hrTalentsState" value="${rck.hr_talents_state}"/></td>
				</tr>
				<tr>
					<td>政治面貌</td>
					<td><input type="text" name="hrTalentsFace" value="${rck.hr_talents_face}"/></td>			
				</tr>

				<tr>
					<td>联系方式</td>
					<td><input type="text" name="hrTalentsRelation" value="${rck.hr_talents_relation}"/></td>					
				</tr>
				
				<tr>
					<td>e-mall</td>
					<td><input type="text" name="hrTalentsMall" value="${rck.hr_talents_mall}"/></td>					
				</tr>
				
				<tr>
					<td>参加工作时间</td>
					<td><input type="date" name="hrTalentsWorkdate" value="${rck.hr_talents_workdate}"/></td>					
				</tr>
				<tr>
					<td>健康状况</td>
					<td><input type="text" name="hrTalentsHealth" value="${rck.hr_talents_health}"/></td>					
				</tr>
				
				<tr>
					<td>学历</td>
					<td><input type="text" name="hrTalentsBackground" value="${rck.hr_talents_background}"/></td>					
				</tr>
				
				<tr>
					<td>学位</td>
					<td><input type="text" name="hrTalentsDegree" value="${rck.hr_talents_degree}"/></td>					
				</tr>
				<tr>
					<td>毕业时间</td>
					<td><input type="date" name="hrTalentsGraduate" value="${rck.hr_talents_graduate}"/></td>					
				</tr>
				<tr>
					<td>毕业学校</td>
					<td><input type="text" name="hrTalentsSchool" value="${rck.hr_talents_school}"/></td>					
				</tr>
				
				<tr>
					<td>专业</td>
					<td><input type="text" name="hrTalentsMajor" value="${rck.hr_talents_major}"/></td>					
				</tr>
				<tr>
					<td>计算机水平</td>
					<td><input type="text" name="hrTalentsComputer" value="${rck.hr_talents_computer}"/></td>					
				</tr>
				<tr>
					<td>外语语种</td>
					<td><input type="text" name="hrTalentsForeign" value="${rck.hr_talents_foreign}"/></td>					
				</tr>
				
				<tr>
					<td>外语水平</td>
					<td><input type="text" name="hrTalentsLevel" value="${rck.hr_talents_level}"/></td>					
				</tr>
				<tr>
					<td>特长</td>
					<td><input type="text" name="hrTalentsStrong" value="${rck.hr_talents_strong}"/></td>					
				</tr>
				
				<tr>
					<td>期望从事职业</td>
					<td><input type="text" name="hrTalentsExpect" value="${rck.hr_talents_expect}"/></td>					
				</tr>
				
				<tr>
					<td>职业技能</td>
					<td><input type="text" name="hrTalentsSkill" value="${rck.hr_talents_skill}"/></td>					
				</tr>
				<tr>
					<td>工作经验</td>
					<td><input type="text" name="hrTalentsWorkexperience" value="${rck.hr_talents_workExperience}"/></td>					
				</tr>
				<tr>
					<td>项目经验</td>
					<td><input type="text" name="hrTalentsProjectexperience" value="${rck.hr_talents_projectExperience}"/></td>					
				</tr>
				
				<tr>
					<td>现居住城市</td>
					<td><input type="text" name="hrTalentsDwell" value="${rck.hr_talents_dwell}"/></td>					
				</tr>
				<tr>
					<td>期望工作性质</td>
					<td><input type="text" name="hrTalentsNature" value="${rck.hr_talents_nature}"/></td>					
				</tr>
				<tr>
					<td>期望从事行业</td>
					<td><input type="text" name="hrTalentsIndustry" value="${rck.hr_talents_industry}"/></td>					
				</tr>
				
				<tr>
					<td>期望薪水</td>
					<td><input type="text" name="hrTalentsPay" value="${rck.hr_talents_pay}"/></td>					
				</tr>
				<tr>
					<td>到岗时间</td>
					<td><input type="text" name="hrTalentsPositiondate"  value="${rck.hr_talents_positiondate}"/></td>					
				</tr>
				<tr>
					<td>照片</td>
					<td><input type="text" name="hrTalentsPicture" value="${rck.hr_talents_picture}"/></td>					
				</tr>
				
				<tr>
					<td>备注</td>
					<td><input type="text" name="hrTalentsRemark" value="${rck.hr_talents_remark}"/></td>					
				</tr>
				<tr>
					<td>附件</td>
					<td><input type="text" name="hrTalentsAccessory" value="${rck.hr_talents_accessory}"/></td>					
				</tr>
				<tr>
					<td>状态</td>
					<td><input type="text" name="hrTalentsFilestatus" value="${rck.hr_talents_filestatus}"/></td>					
				</tr>
				<tr>
					<td>创建人</td>
					<td><input type="text" name="hrTalentsUsername" value="${rck.hr_talents_username}"/></td>					
				</tr>
				<tr>
					<td>登记时间</td>
					<td><input type="date" name="hrTalentsRegister" value="${rck.hr_talents_register}"/></td>					
				</tr>
				
				
				<tr>
					<td>确认修改</td>
					<td><input type="button" value="修改人事档案" onclick="updaterck()"/></td>
				</tr>
			</table>
		</form>
  </body>
</html>
<script type="text/javascript">
      function updaterck(){
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
			}
</script>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<style type="text/css">
#formto {
	position: relative;
	left: 250px;
	top: -520px;
}
</style>
  </head>
  
  <body>
         <div class="easyui-panel" style="padding:5px;width: 200px;height:500px;">
		     <ul id="tt" class="easyui-tree"></ul>
	     </div>
	<!-- -----------------表单----------------------- -->
<div id="formto">
<div style="margin:20px 0;"></div>
<div class="easyui-panel" title="New Topic" style="width:800px">
	<div style="padding:10px 60px 20px 60px">
    <form id="ff" method="post">
    <table cellpadding="5">
    		<tr>
    			<td>用户名:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordName" id="hr_record_name" ></input></td>
    			<td>OA用户名:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordOaname" id="hr_record_oaname"></input></td>
    		</tr>
    		<tr>
    			<td>角色:</td>
    			<td><select class="easyui-combobox" name="roleId" id="role_id"></select></input></td>
    			<td>编号:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordSerial" id="hr_record_serial"></input></td>
    		</tr>
    		<tr>
    			<td>工号:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordJobNumber" id="hr_record_jobNumber" data-options="required:true"></input></td>
    			<td>入职日期:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordCreatetime" id="hr_record_createtime"></input></td>
    		</tr>
    		<tr>
    			<td>部门:</td>
    			<td><select class="easyui-combobox" name="hrRecordId" id="hr_record_id"></select></td>
    			<td>英文名:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordEnglishName" id="hr_record_englishName"></input></td>
    		</tr>
    		<tr>
    			<td>身份证号:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordIdentity" id="hr_record_identity" data-options="required:true"></input></td>
    			<td>出生日期:</td>
    			<td><input class="easyui-textbox" type="date" name="hrRecordDateOfBirth" id="hr_record_dateOfBirth"></input></td>
    		</tr>
    		<tr>
    			<td>性别:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordSex" id="hr_record_sex" data-options="required:true"></input></td>
    			<td>年龄:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordAge" id="hr_record_age"></input></td>
    		</tr>
    		<tr>
    			<td>民族:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordNation" id="hr_record_nation" data-options="required:true"></input></td>
    			<td>联系方式:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordRelation" id="hr_record_relation"></input></td>
    		</tr>
    		<tr>
    			<td>电子邮箱:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordEmail" id="hr_record_email"  data-options="required:true,validType:'email'"></input></td>
    			<td>婚姻状况:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordMarriage" id="hr_record_marriage"></input></td>
    		</tr>
    		<tr>
    			<td>政治面貌:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordFace" id="hr_record_face" data-options="required:true"></input></td>
    			<td>籍贯:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordNativePlace" id="hr_record_nativePlace"></input></td>
    		</tr>
    		<tr>
    			<td>健康状况:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordHealth" id="hr_record_health" data-options="required:true"></input></td>
    			<td>户口所在地:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordFamily" id="hr_record_family"></input></td>
    		</tr>
    		<tr>
    			<td>现住址:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordAddress" id="hr_record_address" data-options="required:true"></input></td>
    			<td>员工类型:</td>
    			<td><select class="easyui-combobox" name="hrRecordEmployeetype" id="hr_record_employeetype"></select></td>
    		</tr>
    		<tr>
    			<td>岗位:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordPost" id="hr_record_post" data-options="required:true"></input></td>
    			<td>入职时间:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordEntrytime" id="hr_record_entrytime"></input></td>
    		</tr>
    		<tr>
    			<td>起薪时间:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordStartingtime" id="hr_record_startingtime" data-options="required:true"></input></td>
    			<td>毕业院校:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordSchool" id="hr_record_school"></input></td>
    		</tr>
    		<tr>
    			<td>毕业时间:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordGraduate" id="hr_record_graduate" data-options="required:true"></input></td>
    			<td>学历:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordDegree" id="hr_record_degree"></input></td>
    		</tr>
    		<tr>
    			<td>专业:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordMajor" id="hr_record_major" data-options="required:true"></input></td>
    			<td>特长:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordMajor" id="hr_record_major"></input></td>
    		</tr>
    		
    		<tr>
    			<td>备注:</td>
    			<td><input class="easyui-textbox" name="hrRecordRemark" id="hr_record_remark" data-options="multiline:true" style="height:60px;width: 500px;"></input></td>
    		</tr>
    		<tr>
    			<td>创建者用户名:</td>
    			<td><input class="easyui-textbox" type="text" id="hr_record_username" name="hrRecordUsername" data-options="required:true"></input></td>
    			<td>创建时间:</td>
    			<td><input class="easyui-textbox" type="date" id="hrRecordCurrenttime" name="hrRecordCurrenttime"></input></td>
    		</tr>
    		<tr>
    			<td><input class="easyui-textbox" type="hidden" value="0" name="hr_record_state" data-options="required:true"></input></td>
    		</tr>
    	</table>
    </form>
    <div style="text-align:center;padding:5px">
    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">Submit</a>
    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">Clear</a>
    </div>
    </div>
</div>
</div>

		
 </body>
</html>
<script type="text/javascript">
 
  $("#tt").tree({
    url:'dept/queryDept',
    onDblClick: function(node){
       //点击用户的时候显示页面并赋值
       alert(node.id)
       $.ajax({
				url : "recoed/queryRecordById",
				type : "post",
				data : {
					"id" : node.id,
				},
				dataType : "json",
				success : function(data) {
				alert(data)
					$("#hr_record_name").html("");
					 $("#hr_record_oaname").html("");
					$("#role_id").html("");
					$("#hr_record_serial").html("");
					$("#hr_record_jobNumber").html("");
					$("#hr_record_createtime").html("");
					$("#hr_record_id").html("");
					$("#hr_record_englishName").html("");
					$("#hr_record_identity").html("");
					$("#hr_record_dateOfBirth").html("");
					$("#hr_record_sex").html("");
					$("#hr_record_age").html("");
					$("#hr_record_nation").html("");
					$("#hr_record_relation").html("");
					$("#hr_record_email").html("");
					$("#hr_record_marriage").html("");
					$("#hr_record_face").html("");
					$("#hr_record_nativePlace").html("");
					$("#hr_record_health").html("");
					$("#hr_record_family").html("");
					$("#hr_record_address").html("");
					$("#hr_record_employeetype").html("");
					$("#hr_record_post").html("");
					$("#hr_record_entrytime").html("");
					$("#hr_record_startingtime").html("");
					$("#hr_record_school").html("");
					$("#hr_record_graduate").html("");
					$("#hr_record_degree").html("");
					$("#hr_record_major").html("");
					$("#hr_record_unusual").html("");
					$("#hr_record_remark").html(""); 
					
					$("#hr_record_name").textbox('setValue',data.hr_record_name);
					 $("#hr_record_oaname").textbox('setValue',data.hr_record_oaname);
					$("#role_id").textbox('setValue',data.role_id);
					$("#hr_record_serial").textbox('setValue',data.hr_record_serial);
					$("#hr_record_jobNumber").textbox('setValue',data.hr_record_jobNumber);
					$("#hr_record_createtime").textbox('setValue',data.hr_record_createtime);
					$("#hr_record_id").textbox('setValue',data.hr_record_id);
					$("#hr_record_englishName").textbox('setValue',data.hr_record_englishName);
					$("#hr_record_identity").textbox('setValue',data.hr_record_identity);
					$("#hr_record_dateOfBirth").textbox('setValue',data.hr_record_dateOfBirth);
					$("#hr_record_sex").textbox('setValue',data.hr_record_sex);
					$("#hr_record_age").textbox('setValue',data.hr_record_age);
					$("#hr_record_nation").textbox('setValue',data.hr_record_nation);
					$("#hr_record_relation").textbox('setValue',data.hr_record_relation);
					$("#hr_record_email").textbox('setValue',data.hr_record_email);
					$("#hr_record_marriage").textbox('setValue',data.hr_record_marriage);
					$("#hr_record_face").textbox('setValue',data.hr_record_face);
					$("#hr_record_nativePlace").textbox('setValue',data.hr_record_nativePlace);
					$("#hr_record_health").textbox('setValue',data.hr_record_health);
					$("#hr_record_family").textbox('setValue',data.hr_record_family);
					$("#hr_record_address").textbox('setValue',data.hr_record_address);
					$("#hr_record_employeetype").textbox('setValue',data.hr_record_employeetype);
					$("#hr_record_post").textbox('setValue',data.hr_record_post);
					$("#hr_record_entrytime").textbox('setValue',data.hr_record_entrytime);
					$("#hr_record_startingtime").textbox('setValue',data.hr_record_startingtime);
					$("#hr_record_school").textbox('setValue',data.hr_record_school);
					$("#hr_record_graduate").textbox('setValue',data.hr_record_graduate);
					$("#hr_record_degree").textbox('setValue',data.hr_record_degree);
					$("#hr_record_major").textbox('setValue',data.hr_record_major);
					$("#hr_record_unusual").textbox('setValue',data.hr_record_unusual);
					$("#hr_record_remark").textbox('setValue',data.hr_record_remark); 
				}
			}); 
    }
 }); 


/* $(function(){
  var today=new Date();
    var H=today.getFullYear();
    var M=today.getMonth()+1;
    var R=today.getDate();
    var h=today.getHours();
    var mm=today.getMinutes();
    var ss=today.getSeconds();
  	var xitong=H+"-"+M+"-"+R+" "+h+":"+mm+":"+ss;
  	alert(xitong); 
  	$("#hrRecordCurrenttime").val(today);
}) */

</script>
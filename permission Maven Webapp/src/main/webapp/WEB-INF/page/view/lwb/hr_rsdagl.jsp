<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hr_rsdagl.jsp' starting page</title>
    
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
    	<link rel="stylesheet" type="text/css" href="page/resources/esayui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="page/resources/esayui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="page/resources/esayui/demo/demo.css">
<script type="text/javascript" src="page/resources/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="page/resources/esayui/jquery.easyui.min.js"></script>

<style type="text/css">
#formto {
	position: relative;
	left: 250px;
	top: -520px;
}</style>
  </head>
  
  <body>
           <div class="layui-tab">
  <ul class="layui-tab-title">
    <li class="layui-this">人事档案(在职)</li>
    <li>人事档案(离职)</li>
    <li>未建人事档案人员查询</li>
  </ul>
  <div class="layui-tab-content">
  <!-- ------------------------------第一块----------------------------------------- -->
    <div class="layui-tab-item layui-show">
         <div class="easyui-panel" style="padding:5px;width: 200px;height:500px;">
		     <ul id="tt1" class="easyui-tree"></ul>
	     </div>
	<!-----------------表单----------------------->
<div id="formto">
<div style="margin:20px 0;"></div>
<div class="easyui-panel" title="New Topic" style="width:800px">
	<div style="padding:10px 60px 20px 60px">
    <form id="uprecord1" method="post">
    <table cellpadding="5">
    <input class="easyui-textbox" type="hidden" name="hrRecordId" readonly="readonly" id="hr_record_id" ></input>
    		<tr>
    			<td>用户名:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordName" readonly="readonly" id="hr_record_name" ></input></td>
    			<td>OA用户名:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordOaname" readonly="readonly" id="hr_record_oaname"></input></td>
    		</tr>
    		<tr>
    			<td>角色:</td>
    			<td><select class="easyui-combobox" name="roleId"  style="width: 185px;"  id="sele2"></select></td>    			
    			<td>编号:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordSerial" id="hr_record_serial"></input></td>
    		</tr>
    		<tr>
    			<td>工号:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordJobnumber" id="hr_record_jobNumber" data-options="required:true"></input></td>
    			<td>应聘日期:</td>
    			<td><input class="easyui-textbox" type="date" name="hrRecordCreatetime" id="hr_record_createtime"></input></td>
    		</tr>
    		<tr>
    			<td>部门:</td>
    			<td><select class="easyui-combobox" name="deptId" style="width: 185px;" id="sele1"></select></td>
    			<td>英文名:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordEnglishname" id="hr_record_englishName"></input></td>
    		</tr>
    		<tr>
    			<td>身份证号:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordIdentity" id="hr_record_identity" data-options="required:true"></input></td>
    			<td>出生日期:</td>
    			<td><input class="easyui-textbox" type="date" name="hrRecordDateofbirth" id="hr_record_dateOfBirth"></input></td>
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
    			<td><input class="easyui-textbox" type="text" name="hrRecordNativeplace" id="hr_record_nativePlace"></input></td>
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
    			<td><input class="easyui-textbox" type="text" name="hrRecordEmployeetype" id="hr_record_employeetype" data-options="required:true"></input></td>
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
    			<td>特长:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordUnusual" id="hr_record_unusual" data-options="required:true"></input></td>
    			<td>专业:</td>
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
    			<td><input class="easyui-textbox" type="date" id="hr_record_currenttime" name="hrRecordCurrenttime"></input></td>
    		</tr>
    	</table>
    </form>
    <div style="text-align:center;padding:5px">
    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="uprecord1()">保存</a>
    </div>
    </div>
</div>
</div>
<script type="text/javascript">
 
  $("#tt1").tree({
    url:'dept1/queryDept0',
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
				    $("#hr_record_id").html("");
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
					
					$("#hr_record_id").textbox('setValue',data.hr_record_id);
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
					$("#hr_record_username").textbox('setValue',data.hr_record_username); 
					$("#hr_record_currenttime").textbox('setValue',data.hr_record_currenttime); 
				}
			}); 
    }
 }); 
 
 $("#sele2").combobox({
url:"recoed/seleroles",
   valueField: 'role_id',
    textField: 'role_name',
 })
 $("#sele1").combobox({
 url:"recoed/seleDept",
   valueField: 'dept_id',
    textField: 'dept_name',
 })
 function uprecord1(){
      var obj=$("#uprecord1").serialize();
      alert(obj)
      $.ajax({
            url:"recoed/updateRecord",
            type:"post",
            async:true,
            data:obj,
            dataType:"text",
           success:function(data){
              parent.location.reload();
           } 
      })
 }
</script>
    </div>
    <!-- --------------------第二块--------------------------------- -->
    <div class="layui-tab-item">
          <div class="easyui-panel" style="padding:5px;width: 200px;height:500px;">
		     <ul id="tt2" class="easyui-tree"></ul>
	     </div>
	<!-----------------表单----------------------->
<div id="formto">
<div style="margin:20px 0;"></div>
<div class="easyui-panel" title="New Topic" style="width:800px">
	<div style="padding:10px 60px 20px 60px">
    <form id="uprecord2" method="post">
    <table cellpadding="5">
    <input class="easyui-textbox" type="hidden" name="hrRecordId" readonly="readonly" id="hr_record_id2" ></input>
    		<tr>
    			<td>用户名:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordName" id="hr_record_name2" ></input></td>
    			<td>OA用户名:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordOaname" id="hr_record_oaname2"></input></td>
    		</tr>
    		<tr>
    			<td>角色:</td>
    			<td><select class="easyui-combobox" name="roleId"  style="width: 162px;"  id="sele4"></select></select></input></td>
    			<td>编号:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordSerial" id="hr_record_serial2"></input></td>
    		</tr>
    		<tr>
    			<td>工号:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordJobnumber" id="hr_record_jobNumber2" data-options="required:true"></input></td>
    			<td>应聘日期:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordCreatetime" id="hr_record_createtime2"></input></td>
    		</tr>
    		<tr>
    			<td>部门:</td>
    			<td><select class="easyui-combobox" name="deptId" style="width: 162px;" id="sele3"></select></td>
    			<td>英文名:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordEnglishname" id="hr_record_englishName2"></input></td>
    		</tr>
    		<tr>
    			<td>身份证号:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordIdentity" id="hr_record_identity2" data-options="required:true"></input></td>
    			<td>出生日期:</td>
    			<td><input class="easyui-textbox" type="date" name="hrRecordDateofbirth" id="hr_record_dateOfBirth2"></input></td>
    		</tr>
    		<tr>
    			<td>性别:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordSex" id="hr_record_sex2" data-options="required:true"></input></td>
    			<td>年龄:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordAge" id="hr_record_age2"></input></td>
    		</tr>
    		<tr>
    			<td>民族:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordNation" id="hr_record_nation2" data-options="required:true"></input></td>
    			<td>联系方式:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordRelation" id="hr_record_relation2"></input></td>
    		</tr>
    		<tr>
    			<td>电子邮箱:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordEmail" id="hr_record_email2"  data-options="required:true,validType:'email'"></input></td>
    			<td>婚姻状况:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordMarriage" id="hr_record_marriage2"></input></td>
    		</tr>
    		<tr>
    			<td>政治面貌:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordFace" id="hr_record_face2" data-options="required:true"></input></td>
    			<td>籍贯:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordNativeplace" id="hr_record_nativePlace2"></input></td>
    		</tr>
    		<tr>
    			<td>健康状况:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordHealth" id="hr_record_health2" data-options="required:true"></input></td>
    			<td>户口所在地:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordFamily" id="hr_record_family2"></input></td>
    		</tr>
    		<tr>
    			<td>现住址:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordAddress" id="hr_record_address2" data-options="required:true"></input></td>
    			<td>员工类型:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordEmployeetype" id="hr_record_employeetype2" data-options="required:true"></input></td>
    		</tr>
    		<tr>
    			<td>岗位:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordPost" id="hr_record_post2" data-options="required:true"></input></td>
    			<td>入职时间:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordEntrytime" id="hr_record_entrytime2"></input></td>
    		</tr>
    		<tr>
    			<td>起薪时间:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordStartingtime" id="hr_record_startingtime2" data-options="required:true"></input></td>
    			<td>毕业院校:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordSchool" id="hr_record_school2"></input></td>
    		</tr>
    		<tr>
    			<td>毕业时间:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordGraduate" id="hr_record_graduate2" data-options="required:true"></input></td>
    			<td>学历:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordDegree" id="hr_record_degree2"></input></td>
    		</tr>
    		<tr>
    			<td>特长:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordUnusual" id="hr_record_unusual2" data-options="required:true"></input></td>
    			<td>专业:</td>
    			<td><input class="easyui-textbox" type="text" name="hrRecordMajor" id="hr_record_major2"></input></td>
    		</tr>
    		
    		<tr>
    			<td>备注:</td>
    			<td><input class="easyui-textbox" name="hrRecordRemark" id="hr_record_remark2" data-options="multiline:true" style="height:60px;width: 500px;"></input></td>
    		</tr>
    		<tr>
    			<td>创建者用户名:</td>
    			<td><input class="easyui-textbox" type="text" id="hr_record_username2" name="hrRecordUsername" data-options="required:true"></input></td>
    			<td>创建时间:</td>
    			<td><input class="easyui-textbox" type="date" id="hr_record_currenttime2" name="hrRecordCurrenttime"></input></td>
    		</tr>
    	</table>
    </form>
    <div style="text-align:center;padding:5px">
    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="uprecord2()">保存</a>
     </div>
    </div>
</div>
</div>
<script type="text/javascript">
 
  $("#tt2").tree({
    url:'dept1/queryDept4',
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
				    $("#hr_record_id2").html("");
					$("#hr_record_name2").html("");
					 $("#hr_record_oaname2").html("");
					$("#role_id2").html("");
					$("#hr_record_serial2").html("");
					$("#hr_record_jobNumber2").html("");
					$("#hr_record_createtime2").html("");
					$("#hr_record_id2").html("");
					$("#hr_record_englishName2").html("");
					$("#hr_record_identity2").html("");
					$("#hr_record_dateOfBirth2").html("");
					$("#hr_record_sex2").html("");
					$("#hr_record_age2").html("");
					$("#hr_record_nation2").html("");
					$("#hr_record_relation2").html("");
					$("#hr_record_email2").html("");
					$("#hr_record_marriage2").html("");
					$("#hr_record_face2").html("");
					$("#hr_record_nativePlace2").html("");
					$("#hr_record_health2").html("");
					$("#hr_record_family2").html("");
					$("#hr_record_address2").html("");
					$("#hr_record_employeetype2").html("");
					$("#hr_record_post2").html("");
					$("#hr_record_entrytime2").html("");
					$("#hr_record_startingtime2").html("");
					$("#hr_record_school2").html("");
					$("#hr_record_graduate2").html("");
					$("#hr_record_degree2").html("");
					$("#hr_record_major2").html("");
					$("#hr_record_unusual2").html("");
					$("#hr_record_remark2").html(""); 
					
					$("#hr_record_id2").textbox('setValue',data.hr_record_id);
					$("#hr_record_name2").textbox('setValue',data.hr_record_name);
					 $("#hr_record_oaname2").textbox('setValue',data.hr_record_oaname);
					$("#role_id2").textbox('setValue',data.role_id);
					$("#hr_record_serial2").textbox('setValue',data.hr_record_serial);
					$("#hr_record_jobNumber2").textbox('setValue',data.hr_record_jobNumber);
					$("#hr_record_createtime2").textbox('setValue',data.hr_record_createtime);
					$("#hr_record_id2").textbox('setValue',data.hr_record_id);
					$("#hr_record_englishName2").textbox('setValue',data.hr_record_englishName);
					$("#hr_record_identity2").textbox('setValue',data.hr_record_identity);
					$("#hr_record_dateOfBirth2").textbox('setValue',data.hr_record_dateOfBirth);
					$("#hr_record_sex2").textbox('setValue',data.hr_record_sex);
					$("#hr_record_age2").textbox('setValue',data.hr_record_age);
					$("#hr_record_nation2").textbox('setValue',data.hr_record_nation);
					$("#hr_record_relation2").textbox('setValue',data.hr_record_relation);
					$("#hr_record_email2").textbox('setValue',data.hr_record_email);
					$("#hr_record_marriage2").textbox('setValue',data.hr_record_marriage);
					$("#hr_record_face2").textbox('setValue',data.hr_record_face);
					$("#hr_record_nativePlace2").textbox('setValue',data.hr_record_nativePlace);
					$("#hr_record_health2").textbox('setValue',data.hr_record_health);
					$("#hr_record_family2").textbox('setValue',data.hr_record_family);
					$("#hr_record_address2").textbox('setValue',data.hr_record_address);
					$("#hr_record_employeetype2").textbox('setValue',data.hr_record_employeetype);
					$("#hr_record_post2").textbox('setValue',data.hr_record_post);
					$("#hr_record_entrytime2").textbox('setValue',data.hr_record_entrytime);
					$("#hr_record_startingtime2").textbox('setValue',data.hr_record_startingtime);
					$("#hr_record_school2").textbox('setValue',data.hr_record_school);
					$("#hr_record_graduate2").textbox('setValue',data.hr_record_graduate);
					$("#hr_record_degree2").textbox('setValue',data.hr_record_degree);
					$("#hr_record_major2").textbox('setValue',data.hr_record_major);
					$("#hr_record_unusual2").textbox('setValue',data.hr_record_unusual);
					$("#hr_record_remark2").textbox('setValue',data.hr_record_remark); 
					$("#hr_record_username2").textbox('setValue',data.hr_record_username); 
					$("#hr_record_currenttime2").textbox('setValue',data.hr_record_currenttime);
				}
			}); 
    }
 }); 
  $("#sele4").combobox({
url:"recoed/seleroles",
   valueField: 'role_id',
    textField: 'role_name',
 })
 $("#sele3").combobox({
 url:"recoed/seleDept",
   valueField: 'dept_id',
    textField: 'dept_name',
 })
 function uprecord2(){
      var obj=$("#uprecord2").serialize();
      alert(obj)
      $.ajax({
            url:"recoed/updateRecord",
            type:"post",
            async:true,
            data:obj,
            dataType:"text",
           success:function(data){
           alert(data)
              parent.location.reload();
           } 
      })
 }
</script>

    </div>
    <!-- ------------------------第三块--------------------------------------- -->
    <div class="layui-tab-item">
    
    
    <table class="layui-hide" id="myTab" lay-filter="demo"></table>
	<div id="fenye"></div>
	
<script id="barDemo" type="text/html">
  <a class="layui-btn layui-btn-xs" lay-event="edit">建立档案</a>
</script>
<script>
		layui.use('table', function() {
			var table = layui.table;
			//监听表格复选框选择
			table.on('checkbox(demo)', function(obj) {
				console.log(obj)
			});
			layui.use('table', function(){
				  var table = layui.table;
				  //监听单元格编辑
				   table.render({
				    elem: '#myTab'
				    ,height:500
				    ,url: 'recoed/RecordqueryAllrck' //数据接口
				    ,page: true //开启分页
				    ,cols: [[ //表头
				       //全选
				       //edit: 'text'为开启单元格编辑，sort:true开启排序
               {field:'hr_talents_name', width:130, title: '应聘人姓名'}
		      ,{field:'hr_talents_toemploy', width:130, title: '应聘岗位'}
		      ,{field:'hr_talents_sex', title: '性别', width: 130} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
		      ,{field:'hr_talents_age', width:130, title: '年龄'}
		      ,{field:'hr_talents_relation',width: 130, title: '联系方式'}
		      ,{field:'hr_talents_mall',width: 130, title: '邮箱'}
		      ,{field:'hr_hire_username', width:130, title: '录用负责人'}
		      ,{field:'hr_hire_date', width:130, title: '录用时间'}
		      ,{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}
				    ]],
				  });               
				});
			//监听工具条
			table.on('tool(demo)', function(obj) {
				var data = obj.data;
				if (obj.event === 'edit') {
					layer.msg(data.hr_talents_id);
	//打开一个窗口
		layer.open({
            type:2,
            title:"建立档案",
            area: ['80%','90%'],
            offset: ['20px', '50px'],
            content:"http://localhost:8080/oa/recoed/recordById/"+data.hr_talents_id
        });
				}
			});
	
		});
	</script>
    
    
    </div>

  </div>
</div>  
  </body>
</html>

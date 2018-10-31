<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


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
    <script type="text/javascript" src="page/resources/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="page/resources/jquery.form.js"></script>

  </head>
  
  <body>
               <div>
		<form method="post" id="uzi">
			<table border="1">
				<tr>
					<td>计划编号</td>
					 <td><input type="text" name="hrPlanNumber" value="${p.hr_plan_number}"/></td>
					 <td><input type="hidden" name="hrPlanId" value="${p.hr_plan_id}"/></td>
				</tr>
				<tr>
					<td>计划名称</td>
					<td><input type="text" name="hrPlanName" value="${p.hr_plan_name}"/></td>					
				</tr>
				<tr>
					<td>招聘渠道</td>
					<td><input type="text" name="hrPlanDitch" value="${p.hr_plan_ditch}"/></td>					
				</tr>
				<tr>
					<td>预算费用</td>
					<td><input type="text" name="hrPlanBudget" value="${p.hr_plan_budget}"/></td>					
				</tr>
				<tr>
					<td>开始时间</td>
					<td><input type="date" name="hrPlanStartdate" value="${p.hr_plan_startdate}"/></td>					
				</tr>
				<tr>
					<td>结束时间</td>
					<td><input type="date" name="hrPlanDateclosed" value="${p.hr_plan_dateclosed}"/></td>					
				</tr>
				<tr>
					<td>招聘部门</td>
					<td><input type="text" name="hrPlanDepartment" value="${p.hr_plan_department}"/></td>					
				</tr>
				
				<tr>
					<td>招聘岗位</td>
					<td><input type="text" name="hrPlanPost" value="${p.hr_plan_post}"/></td>
				</tr>
				<tr>
					<td>招聘人数</td>
					<td><input type="text" name="hrPlanCount" value="${p.hr_plan_count}"/></td>					
				</tr>

				<tr>
					<td>用工日期</td>
					<td><input type="date" name="hrPlanSkilldate" value="${p.hr_plan_skilldate}"/></td>					
				</tr>
				
				<tr>
					<td>审批人</td>
					<td>
					    <input type="text" name="admin.username" value="${p.username}"/>
					    <input type="hidden" name="id" value="${p.Id}"/>
					 </td>								
				</tr>
				
				<tr>
					<td>计划状态</td>
					<td><input type="text" name="hrPlanState" value="${p.hr_plan_state}"/></td>					
				</tr>
				
				<tr>
					<td>招聘说明</td>
					<td><input type="text" name="hrPlanExplain" value="${p.hr_plan_explain}"/></td>					
				</tr>
				<tr>
					<td>招聘备注</td>
					<td><input type="text" name="hrPlanRemark" value="${p.hr_plan_remark}"/></td>					
				</tr>
				
				<tr>
					<td>附件</td>
					<td><input type="text" name="hrPlanAdjunct" value="${p.hr_plan_adjunct}"/></td>					
				</tr>
				
				<tr>
					<td>创建者用户名</td>
					<td><input type="text" name="hrPlanUsername" value="${p.hr_plan_username}"/></td>					
				</tr>
				<tr>
					<td>审批日期</td>
					<td><input type="date" name="hrPlanAuditingdate" value="${p.hr_plan_auditingDate}"/></td>					
				</tr>
				
				<tr>
					<td>添加</td>
					<td><input type="button" value="修改计划" onclick="updete()"/></td>
				</tr>
			</table>
		</form>
	</div>
  </body>
</html>
<script type="text/javascript">
      function updete(){
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
			}
</script>
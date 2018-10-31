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
    
    <title>My JSP 'zpsxUpdate.jsp' starting page</title>
    
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

    <form method="post" id="upScreen">
			<table border="1">	
				<tr>
					<td>计划名称</td>
					<%-- <td><input type="text" name="hrPlanId" value="${zpsx.hr_plan_id}"/></td> --%>
					<td>
					 <select id="p"></select>
						</td>
		        </tr>
		        
		        <tr>

					<td><input type="hidden" name="hrTalentsId" value="${zpsx.hr_talents_id}"/></td>					
				</tr>
		         <tr>
					<td>应聘人姓名</td>
					<td><input type="text"  value="${zpsx.hr_talents_name}"/></td>					
				</tr>
		        <tr>
					<td>应聘岗位</td>
					 <td><input type="text" name="hrTalentsToemploy" value="${zpsx.hr_talents_toemploy}"/></td>					
				</tr>
				<tr>
					<td>所选专业</td>
					<td><input type="text" value="${zpsx.hr_talents_major}"/></td>					
				</tr>
				<tr>
					<td>联系电话</td>
					<td><input type="text"  value="${zpsx.hr_talents_relation}"/></td>					
				</tr>
			
				<tr>
					<td>发起人</td>
					<td><input type="text"  value="${zpsx.hr_screen_username}"/></td>					
				</tr>
				<tr>
					<td>筛选办理人</td>
					<td>
					    <select name="id" id="us"></select>
					 </td>					
				</tr>
				
				<tr>
					<td>筛选时间</td>
					<td><input type="date"  value="${zpsx.hr_screen_currenttime}"/></td>
				</tr>
				
				
			</table>






	      <table border="1">	
               <tr>
					<td><input type="hidden" name="hrScreenId" value="${zpsx.hr_screen_id}"/></td>					
				</tr>
				<tr>
					<td>面试方式</td>
					<td>
					 <select name="hrScreenWay">
				          <option>笔试</option>
					      <option>面试</option>
					      <option>面试+笔试</option>
					  </select>
						</td>
		        </tr>
		   
		    
		         <tr>
					<td>面试时间</td>
					<td><input type="date" name="hrScreenInterview"/></td>					
				</tr>
				
				
				<tr>
					<td>面试内容</td>
					<td><input type="text" name="hrScreenContent"/></td>					
				</tr>
				<tr>
					<td>意见</td>
					<td><input type="text" name="hrScreenOpinion"/></td>					
				</tr>
			

			 	<!-- <tr>
					<td>是否通过</td>
					<td>
					 <select name="hrTalentsFilestatus">
				          <option value="2">通过</option>
					      <option value="3">不通过</option>
			           </select>
						</td>
		        </tr>  -->
				
				
				<tr>
					<td><input type="button" value="通过"   onclick="updateScreen1()"/></td>
					<td><input type="button" value="不通过"   onclick="updateScreen2()"/></td>
				</tr>
			</table>
		</form>
  </body>
</html>
<script>
                         //查询计划
  	function pScreen(){
  	
  		$.ajax({
  			url:"screen/ptAll",
  			type:"post",
  			asunc:true,
  			dataType:'json',
  			success:function(data){
  				$("#p").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
					 var tr="<option value='"+obj.hr_plan_id+"'>"+obj.hr_plan_name+"</option>";
					  $("#p").append(tr);    			
        		}
  			}
  		})
  	}
  	/* 查询审批人 */
  	function uScreen(){
  		$.ajax({
  			url:"screen/userScreen",
  			type:"post",
  			asunc:true,
  			dataType:'json',
  			success:function(data){
  				$("#us").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
					 var tr="<option value='"+obj.id+"'>"+obj.username+"</option>";
					  $("#us").append(tr);    			
        		}
  			}
  		})
  	}
  	$(function(){
  	    pScreen();
  	    uScreen();
  	})
        function updateScreen1(){
			 var obj=$("#upScreen").serialize();//将表单数据转换成json对象
			 alert(obj)
			$.ajax({
	        	url:"screen/updateScreen2",
	        	type:"post",
	        	async:true,
	        	
	        	data :obj,
	       	 	dataType:'text',
	        	success:function(data) {
	        	alert(obj)
	        		parent.location.reload();
	        	}
 		      });
			} 
			function updateScreen2(){
			 var obj=$("#upScreen").serialize();//将表单数据转换成json对象
			 alert(obj)
			$.ajax({
	        	url:"screen/updateScreen3",
	        	type:"post",
	        	async:true,
	        	
	        	data :obj,
	       	 	dataType:'text',
	        	success:function(data) {
	        	alert(obj)
	        		parent.location.reload();
	        	}
 		      });
			} 
			

			
/* 			function getTime(){   
			    var date = new Date(); //创建时间对象
            var year = date.getFullYear(); //获取年
            var month = date.getMonth()+1; //获取月
            var day = date.getDate(); //获取当日
            var time = year+"-"+month+"-"+day; //组合时间   alert("当前日期："+time);
                    } */
                    
</script>
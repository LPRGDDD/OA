<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>单位信息表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="resources/layui/css/layui.css" media="all">
	<script type="text/javascript" src="resources/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="resources/layui/layui.js"></script>
	<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
  </head>
  
<body>
  <div class="layui-tab-content" style="height:100px;">
          <div class="layui-tab-item layui-show">
             <!-- 查询页面 -->
             <h3 align="left">单位信息表</h3>
                 <div class="panel-body">
			           <table class="table table-hover">
					    <thead>
						  <tr>
							<th>单位名称</th>
							<th>电话</th>
							<th>传真</th>
							<th>邮编</th>
							<th>地址</th>
							<th>网站</th>
							<th>电子信箱</th>
							<th>开户行</th>
							<th>账号</th>
							<th>单位简介</th>
							<th>附件文档</th>
						</tr>
					    </thead>
					        <tbody id="df"></tbody>
			           </table>
                 </div>
          </div>
  </div>
</body>
</html>
<script type="text/javascript">
  /* 单位信息查询*/
        function dwinformationFind(){
             $.ajax({
                url:"dwinformation/findAll",
                type:'post',
                dataType:'json',
                success:function(data){
                  $("#df").html("");//清空内容数据
                  var ary=data;
                  for(var i=0;i<ary.length;i++){
                     var obj=ary[i];//获取当前对象
                     var tr="<tr>";
                     tr+="<td>"+obj.dwinformationName+"</td>";
                     tr+="<td>"+obj.dwinformationPhone+"</td>";
                     tr+="<td>"+obj.dwinformationFax+"</td>";
                     tr+="<td>"+obj.dwinformationPostalCode+"</td>";
                     tr+="<td>"+obj.dwinformationAddress+"</td>";
                     tr+="<td>"+obj.dwinformationWebsite+"</td>";
                     tr+="<td>"+obj.dwinformationEmail+"</td>";
                     tr+="<td>"+obj.dwinformationBankname+"</td>";
                     tr+="<td>"+obj.dwinformationAccountNumber+"</td>";
                     tr+="<td>"+obj.dwinformationIntroduce+"</td>";
                     tr+="<td>"+obj.dwinformationBanknumber+"</td>";
                     tr+="</tr>";
                     $("#df").append(tr);//追加行
                  }
                }
             })
        }
 /* 页面刷新调用查询方法 */
   $(function(){
     dwinformationFind();//单位信息表的查询
   })
   /* 页面刷新 */
   function refresh(){
       window.location.reload();//刷新当前页面
       //或者下方刷新方法
       //parent.location.reload()刷新父亲对象（用于框架）---需在iframe框架内使用
       //opener.location.reload()刷新父窗口对象（用于单开窗口）
       //top.location.reload()刷新最顶端对象（用于多开窗口）
   }
</script>
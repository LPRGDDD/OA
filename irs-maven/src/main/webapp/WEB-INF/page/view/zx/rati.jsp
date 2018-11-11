<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'rati.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/page/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/page/resources/bootstrap-table.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/page/resources/jquery-1.11.3.min.js"></script>
<script
	src="${pageContext.request.contextPath}/page/resources/bootstrap-table.min.js"></script>
<script
	src="${pageContext.request.contextPath}/page/resources/bootstrap-table-zh-CN.min.js"></script>
<script
	src="${pageContext.request.contextPath}/page/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(function () {  
    $("#table1").bootstrapTable({ // 对应table标签的id
    method:"get",
      url: "apply/findByState4", // 获取表格数据的url
      queryParams: function (params) { // 请求服务器数据时发送的参数，可以在这里添加额外的查询参数，返回false则终止请求
          return {
              id: $("#id").val() // 额外添加的参数
          }
      },
      sortName: 'id', // 要排序的字段
      sortOrder: 'desc', // 排序规则
      columns: [
          {
              checkbox: true, // 显示一个勾选框
              align: 'center' // 居中显示
          },
           {
              field: 'sName', // 返回json数据中的name
              title: '名称', // 表格表头显示文字
              align: 'center', // 左右居中
              valign: 'middle' // 上下居中
          },
           {
              field: 'sType',
              title: '类型',
              align: 'center',
              valign: 'middle'
          },
           {
              field: 'ApNum',
              title: '数量',
              align: 'center',
              valign: 'middle',
          },
           {
              field: 'ApDate',
              title: '日期',
              align: 'center',
              valign: 'middle',
          },
          {
              field: 'username',
              title: '申请人',
              align: 'center',
              valign: 'middle',
          },
          {
              field: 'ApBei',
              title: '备注',
              align: 'center',
              valign: 'middle',
          },
          {
              field: 'ApState',
              title: '状态',
              align: 'center',
              valign: 'middle',
               formatter: function (value, row, index){ // 单元格格式化函数
                  var text = '-';
                  if (value == 3) {
                      text = "审批通过";
                  } if (value == 2) {
                      text = "等待仓库审批";
                  } if (value == 4) {
                      text = "等待归还审批";
                  } 
                  if (value == 1) {
                      text = "申请已驳回";
                  } if (value == 5) {
                      text = "申请通过";
                  } 
                  return text;
              }

          },
          {   field: 'ApState',
              title: "操作",
              align: 'center',
              valign: 'middle',
              width: 160, // 定义列的宽度，单位为像素px
              formatter: function (value, row, index) {
              if(value==3){
                  return '<a class="btnn btn-primary btn-sm" id="'+row.ApId+'" data-toggle="modal" data-target="#myModal">详情</a><a class="update btn-primary btn-sm" id="'+row.ApId+'">归还</a>';
              } if(value==1){
                  return '<a class="btnn btn-primary btn-sm" id="'+row.ApId+'" data-toggle="modal" data-target="#myModal">详情</a><a class="delete btn-primary btn-sm" id="'+row.ApId+'">删除</a>';
              }if(value==2){
                  return '<a class="btnn btn-primary btn-sm" id="'+row.ApId+'" data-toggle="modal" data-target="#myModal">详情</a>';
              }
              if(value==4){
                  return '<a class="btnn btn-primary btn-sm" id="'+row.ApId+'" data-toggle="modal" data-target="#myModal">详情</a>';
              }if(value==5){
                  return '<a class="btnn btn-primary btn-sm" id="'+row.ApId+'" data-toggle="modal" data-target="#myModal">详情</a><span>已归还</span>';
              }
              }
          }
      ],
      onLoadSuccess: function(){  //加载成功时执行
            console.info("加载成功");
      },
      onLoadError: function(){  //加载失败时执行
            console.info("加载数据失败");
      }
  
})
  }); 
 $("#table1").on("click", ".delete", function() {
	        var id=this.id;
	        alert(id);
	        $.ajax({
	          url:'apply/deleteapp',
	          data:{
		      "ApId":id
		   },
			dataType : "json",
			type : "post",
			ansy : false,
			success : function(data) {
			   location.reload();
			}
	        })
	    })
    $(function() {
		$("#table1").on("click", ".btnn", function() {
			 var id=this.id;
	        alert(id);
	        $.ajax({
	          url:'apply/findById3',
	          data:{
		      "ApId":id
		   },
		   dataType : "json",
			type : "post",
			ansy : false,
			success : function(data) {
			  $("#tbod5").html(""); //清空内容数据
				var ary = data;
				for (var i = 0; i < ary.length; i++) {
					var obj = ary[i]; //获取当前对象
					var tr = "<tr>";
					tr += "<td>"+'办公用品名称：'+"</td><td>" + obj.sName + "</td></tr><tr>";
					tr += "<td>"+'申请类型：'+"</td><td>" + obj.ApFlag + "</td></tr><tr>"; 
					tr += "<td>"+'时间：'+"</td><td>" + obj.ApDate + "</td></tr><tr>";
					tr += "<td>"+'申请人：'+"</td><td>" + obj.username + "</td></tr><tr>";
					tr += "<td>"+'警戒线：'+"</td><td>" + obj.sLowAlert + "到"+obj.sUpAlert+"</td></tr><tr>";
					tr += "<td>"+'状态：'+"</td><td>" + get1(obj.ApState) + "</td></tr><tr>";
					tr += "<td>"+'数量：'+"</td><td>" + obj.ApNum + "</td></tr><tr>";
					tr += "</tr>";
					$("#tbod5").append(tr); //追加行	
				}
			}
	        }) 
			})
			 function get1(status){
	       if(status==0)
	       return '未审批';
	       if(status==1)
	       return '已驳回';
	       if(status>=2)
	       return '已过审';
	    }
	      $("#table1").on("click", ".update", function() {
	          var id=this.id;
	        alert(id);
	        $.ajax({
	          url:'apply/updateState4',
	          data:{
		      "ApId":id
		   },
		   dataType : "json",
			type : "post",
			ansy : false,
			success : function(data) {
			location.reload();
			}
	    })
	    })
 })
</script>
<style type="text/css">
  #table2 td{
      border: 1px solid #ccc;
   }
</style>
</head>

<body>
	<div>
		<form action="">
			<table id="table1" >
				<thead></thead>
				<tbody></tbody>

			</table>
			<input type="hidden" name="id" id="id"
				value="<shiro:principal property="id"/>">
		</form>
	</div>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">详情</h4>
            </div>
            <div class="modal-body">
                <table class="table table-hover" id="table2">
                   <tbody id="tbod5"></tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">提交更改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</body>
</html>

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
    
    <title>My JSP 'hr_zpsxgl.jsp' starting page</title>
    
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
    <script src="page/resources/layui/layui.js" charset="utf-8"></script>
    <script src="page/resources/layui/layui.all.js" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css"href="page/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"href="page/resources/bootstrap/css/bootstrap-theme.min.css">
<script	src="page/resources/bootstrap/jquery-1.11.3.min.js"></script>
<script src="page/resources/bootstrap/js/bootstrap.min.js"></script>
 
 <style type="text/css">
  #mtk{
     position:absolute;left:800px;top:80px;
  }
</style>
  </head>
  
  <body>
 
 
<div class="layui-tab">
  <ul class="layui-tab-title">
    <li class="layui-this">人员筛选管理</li>
    <li>新增筛选</li>
  </ul>
  <div class="layui-tab-content">
  <!-- 第一块 -->
    <div class="layui-tab-item layui-show">
           
            <table class="layui-hide" id="myTab" lay-filter="demo"></table>
	<div id="fenye"></div>
	
<script id="barDemo" type="text/html">
{{#  if(d.hr_talents_filestatus < 2){ }}
    <a class="layui-btn layui-btn-xs" lay-event="check">开始面试</a>
  {{#  } }}
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
				    ,url: 'screen/queryScreen?uid='+<shiro:principal property="id"/>+'' //数据接口
				    ,page: true //开启分页
				    ,cols: [[ //表头
				       //全选
				       //edit: 'text'为开启单元格编辑，sort:true开启排序
		       {field:'hr_talents_name', width:220, title: '应聘者姓名', align:'center'}
		      ,{field:'hr_talents_major', width:220, title: '所学专业', align:'center'}
		      ,{field:'hr_talents_relation', width:220, title: '联系电话', align:'center'}
		      ,{field:'hr_screen_username', width:220, title: '发起人', align:'center'}
		      ,{field:'hr_talents_filestatus', title: '应聘人状态', width: 220, align:'center'} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
		      ,{fixed: 'right', width:220, align:'center', toolbar: '#barDemo'}
				    ]],
		done:function(res,page,count){
		  $("[data-field='hr_talents_filestatus']").children().each(function(){
           if($(this).text()=='1'){
             $(this).text("待筛选")
           }else if($(this).text()=='2'){
             $(this).text("已通过")
           }else if($(this).text()=='3'){
             $(this).text("未通过")
                 }
              })
              }
				  });
               
				});
			//监听工具条
			table.on('tool(demo)', function(obj) {
				var data = obj.data;
				if (obj.event === 'detail') {
					layer.msg('ID：' + data.hr_screen_id + ' 的查看操作');
				} else if (obj.event === 'check') {
					layer.msg(data.hr_screen_id);
	//打开一个面试窗口
		layer.open({
            type:2,
            title:"查找用户角色",
            area: ['80%','90%'],
            offset: ['20px', '50px'],
            content:"http://localhost:8080/oa/screen/ScreenById/"+data.hr_screen_id
        });
				}
			});
	
		});
	</script>
            
    </div>
    
    
    
<!-- 第二块 -->
    <div class="layui-tab-item">
		<div>
<form method="post"  id="formt">
<table class="Table" width="60%" align="center">

   <tr>
      <td nowrap class="col-md-1 control-label" style="width: 10%">计划名称:</td>
      <td class="TableData" style="width: 20%">
         <select name="hrPlanId" onchange="queryScreen1()" id="sele" class="form-control"></select>
      </td>
      <td nowrap class="col-md-4 control-label" style="width: 20%">应聘人姓名:</td>
      <td class="TableData" style="width: 20%">
        <input type="text" name="hrTalentsName" id="hr_talents_name" class="form-control">
        <input type="hidden" name="hrTalentsId" id="hr_talents_id"/>
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label" style="width: 20%">应聘岗位:</td>
      <td class="TableData">
         <input type="text" name="hrTalentsToemploy" id="hr_talents_toemploy" class="form-control"   >
      </td>
      <td nowrap class="col-md-2 control-label">所选专业:</td>
      <td class="TableData">
        <input type="text" name="hrTalentsMajor" id="hr_talents_major" class="form-control" >
      </td>
   </tr>
   <tr>
      <td nowrap class="col-md-2 control-label">联系方式:</td>
      <td class="TableData">
         <input type="text" name="hrTalentsRelation" id="hr_talents_relation" class="form-control" >
      </td>
      <td nowrap class="col-md-2 control-label">发起人:</td>
      <td class="TableData">
        <input type="text" name="hrScreenUsername" value="<shiro:principal property="fullname"/>" readonly="readonly" class="form-control"  >
      </td>
   </tr>

   <tr>
      <td nowrap class="col-md-2 control-label">筛选办理人:</td>
      <td class="TableData">
      <select name="id" id="seleUse" class="form-control"></select>
      </td>
      <td nowrap class="col-md-2 control-label">筛选时间:</td>
      <td class="TableData">
        <input type="date" name="hrScreenCurrenttime" class="form-control" >
      </td>
   </tr>
   
    <tr align="center" class="TableControl">
      <td colspan=4 nowrap>
        <input type="button" class="btn btn-default" value="添加"  onclick="save()">
      </td>
    </tr>
  </table>
</form>
</div>

<!-- 按钮触发模态框 -->
<button  data-toggle="modal" data-target="#myModal" onclick="queryScreen1()" id="mtk">
	+++
</button>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					应聘人姓名
				</h4>
			</div>
			<div class="modal-body">
						<table>
						    <tbody id="tbody"></tbody>
						 </table>
			 
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
		

    </div>
  </div>
</div>
  </body>
</html>
<script>
                             //查询计划
  	function queryScreen(){
  	
  		$.ajax({
  			url:"screen/ptAll",
  			type:"post",
  			asunc:true,
  			dataType:'json',
  			success:function(data){
  				$("#sele").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
					 var tr="<option value='"+obj.hr_plan_id+"'>"+obj.hr_plan_name+"</option>";
					  $("#sele").append(tr);    			
        		}
  			}
  		})
  	}
 
                        //根据计划查询计划内人员
   function queryScreen1(){
          var id= $("#sele").val();
           alert(id)
	          $.ajax({
	             
	              url : "screen/ptAllId",
				  type : "post",
				  data : {
					"id" : id,
				},
	              dataType : 'json',
	              success : function(data){
	                 $("#tbody").html("");
	                 for(var i=0;i<data.length;i++){
	                    var obj=data[i];//获取当前对象
	                    var tr="<tr>";
	                    tr+="<td><input type='button' id='"+obj.hr_talents_id+"' value='"+obj.hr_talents_name+"' class='zpsx'/></td>";
	                    tr+="</td>";
	                    $("#tbody").append(tr);
	                           			        			
	                 }
	              }
	          })
	      }
	  
  $(function(){
  	    queryScreen();
  	    queryScreen2();
  	})
  	                   
	                 //根据人员查询出数据，并显示在页面上
  	$(function(){
        $("#tbody").on("click", ".zpsx", function() {
			 var id = this.id;
			alert(id);
			$.ajax({
				url : "screen/talentId",
				type : "post",
				data : {
					"id" : id,
				},
				dataType : 'json',
				success : function(data) {
				    $("#hr_talents_id").html("");
					$("#hr_talents_name").html("");
					$("#hr_talents_toemploy").html("");
					$("#hr_talents_major").html("");
					$("#hr_talents_relation").html("");
					var ary = data[0];
			        $("#hr_talents_id").val(ary.hr_talents_id);
					$("#hr_talents_name").val(ary.hr_talents_name);
					$("#hr_talents_toemploy").val(ary.hr_talents_toemploy);
					$("#hr_talents_major").val(ary.hr_talents_major);
					$("#hr_talents_relation").val(ary.hr_talents_relation);
				}
			}); 
		})
		})
                                //用户下拉框	
function queryScreen2(){
  		$.ajax({
  			url:"screen/userScreen",
  			type:"post",
  			asunc:true,
  			dataType:'json',
  			success:function(data){
  				$("#seleUse").html("");
        		for(var i=0;i<data.length;i++){
        			var obj=data[i];
					 var tr="<option value='"+obj.id+"'>"+obj.fullname+"</option>";
					  $("#seleUse").append(tr);    			
        		}
  			}
  		})
  	}
  	                                     /*添加*/
		function save(){
	  		var obj=$("#formt").serialize();
				alert(obj);
				$.ajax({
		        	     url : "screen/ScreenSave",
		        	     type : "post",
		        	     async : true,
		        	     data :$("#formt").serialize(),
		       	         dataType : 'text',//返回的数据类型
		        	     success : function(data) {
		        	         
		        		       alert(data);
		        	}
		 		});
	  	}
	
</script>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="page/resources/bootstrap/css/bootstrap.min.css">
	<script src="page/resources/bootstrap/js/bootstrap.min.js"></script>
  </head>
  
  <body>
              <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
	  <legend>计划审批</legend>
	</fieldset>
 
<div class="layui-tab">
  <ul class="layui-tab-title">
    <li class="layui-this">计划管理</li>
    <li>新增计划</li>
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
				    ,url: 'screen/queryScreen' //数据接口
				    ,page: true //开启分页
				    ,cols: [[ //表头
				       //全选
				       //edit: 'text'为开启单元格编辑，sort:true开启排序

		       {field:'hr_talents_name', width:80, title: '应聘者姓名', width: '20%', align: 'center'}
		      ,{field:'hr_talents_major', width:80, title: '所学专业', width: '20%', align: 'center'}
		      ,{field:'hr_talents_relation', width:80, title: '联系电话', width: '20%', align: 'center'}
		      ,{field:'hr_screen_username', title: '发起人', width: '10%'} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
		      ,{field:'hr_talents_filestatus', width:80, title: '应聘人状态', width: '15%', align: 'center'}
		      ,{fixed: 'right', width:178, align:'center', toolbar: '#barDemo',width: '15%', align: 'center'}
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
            area: ['50%','80%'],
            offset: ['100px', '400px'],
            content:"http://localhost:8080/oa/screen/ScreenById/"+data.hr_screen_id
        });
				}
			});
	
		});
	</script>
            
    </div>
    
    
    
<!-- 第二块 -->
    <div class="layui-tab-item">
		<form method="post" id="formt">
			<table border="1">
				<tr>
					<td>计划名称</td>
					<td><select name="hrPlanId" onchange="queryScreen1()" id="sele"></select>
						</td>
		        </tr>
		        <tr>
					<td><input type="hidden" name="hrTalentsId" id="hr_talents_id"/></td>
					</tr>
		         <tr>
					<td>应聘人姓名</td>
					<td><input type="text" name="Talents.hrTalentsName" id="hr_talents_name"/></td>					
				</tr>
		        <tr>
					<td>应聘岗位</td>
				    <td><input type="text"  id="hr_talents_toemploy"/></td>				
				</tr>
				<tr>
					<td>所选专业</td>
					<td><input type="text" name="hrTalentsMajor" id="hr_talents_major"/></td>					
				</tr>
				<tr>
					<td>联系电话</td>
					<td><input type="text" name="hrTalentsRelation" id="hr_talents_relation"/></td>					
				</tr>
			
				<tr>
					<td>发起人</td>
					<td><input type="text" name="hrScreenUsername"/></td>					
				</tr>
				<tr>
					<td>下一次筛选办理人</td>
					<td>
					     <select name="id" id="seleUse"></select>
					</td>					
				</tr>
				
				<tr>
					<td>下一次筛选时间</td>
					<td><input type="date" name="hrScreenCurrenttime"/></td>
				</tr>
				
				
				<tr>
					<td>添加</td>
					<td><input type="button" value="确认添加"   onclick="save()"/></td>
				</tr>
			</table>
		</form>
		
<!-- 按钮触发模态框 -->
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="queryScreen1()">
	开始演示模态框
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
					$("#hr_talents_major").html("");
					$("#hr_talents_relation").html("");
					var ary = data[0];
			        $("#hr_talents_id").val(ary.hr_talents_id);
					$("#hr_talents_name").val(ary.hr_talents_name);
					$("#hr_talents_major").val(ary.hr_talents_toemploy);
					$("#hr_talents_relation").val(ary.hr_talents_relation);
					$("#hr_talents_toemploy").val(ary.hr_talents_toemploy);
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
					 var tr="<option value='"+obj.id+"'>"+obj.username+"</option>";
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
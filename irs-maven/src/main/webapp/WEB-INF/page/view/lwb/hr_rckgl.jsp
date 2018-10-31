<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hr_rckgl1.jsp' starting page</title>
    
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
  </head>
  
  <body>
 
<div class="layui-tab">
  <ul class="layui-tab-title">
    <li class="layui-this">人才库管理</li>
    <li>新增人才档案</li>
  </ul>
  <div class="layui-tab-content">
  <!-- 第一块 -->
    <div class="layui-tab-item layui-show">
           
         <table class="layui-hide" id="myTab" lay-filter="demo"></table>
	<div id="fenye"></div>
	
<script id="barDemo" type="text/html">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit">修改</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
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
				    ,url: 'talent/queryAllrck' //数据接口
				    ,page: true //开启分页
				    ,cols: [[ //表头
				       //全选
				       //edit: 'text'为开启单元格编辑，sort:true开启排序
			   {field:'hr_talents_id', width:80, title: 'ID'}
			  ,{field:'hr_plan_name', width:80, title: '计划名称'}
			  ,{field:'hr_talents_name', width:80, title: '应聘人姓名'}
		      ,{field:'hr_talents_sex', width:80, title: '性别'}
		      ,{field:'hr_talents_age', width:80, title: '年龄'}
		      ,{field:'hr_talents_birth', title: '出生日期', width: '10%'} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
		      ,{field:'hr_talents_nation', title: '民族'}
		      ,{field:'hr_talents_native', title: '籍贯'}
		      ,{field:'hr_talents_place', width:137, title: '现居住地'}
		      ,{field:'hr_talents_health', width:137, title: '身体状况'}
		      ,{field:'hr_talents_relation', title: '联系方式'}
		      ,{field:'hr_talents_mall', width:137, title: 'hr_talents_mall'}
		      ,{field:'hr_talents_expect', width:137, title: '期望从事职业'}
		      
		      ,{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}
				    ]],
				  });
               
				});
			//监听工具条
			table.on('tool(demo)', function(obj) {
				var data = obj.data;
				if (obj.event === 'detail') {
					layer.msg('ID：' + data.hr_talents_id + ' 的查看操作');
				} else if (obj.event === 'del') {
					layer.confirm('真的删除行么',function(index) {
						obj.del();
						layer.close(index);
						$.ajax({
							url : "talent/deleterck",
							data : {
								'id' : data.hr_talents_id
							},
							type : "post",
							dataType : 'json',
							success : function(data) {
								if(data>0){
									layer.msg("删除成功");
								}else{
									layer.msg("删除失败");
								}
							}
						})
					});//判断
				} else if (obj.event === 'edit') {
					layer.msg(data.hr_talents_id);
	//打开一个窗口
		layer.open({
            type:2,
            title:"查找用户角色",
            area: ['50%','70%'],
            offset: ['100px', '500px'],
            content:"http://localhost:8080/oa/talent/queryByIdrck/"+data.hr_talents_id
        });
				}
			});
	
		});
	</script>
            
    </div>
    
    
    
<!-- 第二块 -->
    <div class="layui-tab-item">
					
					<form action="" method="post" id="selerck">
			<table border="1">
				<tr>
					<td>计划</td>
					<td><select name="plan.hrPlanId" id="sele"> </select></td>
				</tr>
				<tr>
					<td>应聘人姓名</td>
					<td><input type="text" name="hrTalentsName"/></td>					
				</tr>
				
				<tr>
					<td>出生日期</td>
					<td><input type="date" name="hrTalentsBirth"/></td>					
				</tr>
				<tr>
					<td>性别</td>
					<td><input type="text" name="hrTalentsSex"/></td>					
				</tr>
				<tr>
					<td>年龄</td>
					<td><input type="text" name="hrTalentsAge"/></td>					
				</tr>
				<tr>
					<td>籍贯</td>
					<td><input type="text" name="hrTalentsNative"/></td>					
				</tr>
				<tr>
					<td>户口所在地</td>
					<td><input type="text" name="hrTalentsPlace"/></td>					
				</tr>
				<tr>
					<td>民族</td>
					<td><input type="text" name="hrTalentsNation"/></td>					
				</tr>
				
				<tr>
					<td>婚姻状况</td>
					<td><input type="text" name="hrTalentsState"/></td>
					<!-- <td><select name="hrTalentsState">
					
					     <option>未婚</option>
					     <option>已婚</option>
					</select></td> -->
				</tr>
				<tr>
					<td>政治面貌</td>
					<td><input type="text" name="hrTalentsFace"/></td>
					<!-- <td><select name="hrTalentsFace">
					     <option>党员</option>
					     <option>共青团员</option>
					     <option>普通</option>
					</select></td>	 -->			
				</tr>

				<tr>
					<td>联系方式</td>
					<td><input type="text" name="hrTalentsRelation"/></td>					
				</tr>
				
				<tr>
					<td>e-mall</td>
					<td><input type="text" name="hrTalentsMall"/></td>					
				</tr>
				
				<tr>
					<td>参加工作时间</td>
					<td><input type="date" name="hrTalentsWorkdate"/></td>					
				</tr>
				<tr>
					<td>健康状况</td>
					<td><input type="text" name="hrTalentsHealth"/></td>					
				</tr>
				
				<tr>
					<td>学历</td>
					<td><input type="text" name="hrTalentsBackground"/></td>					
				</tr>
				
				<tr>
					<td>学位</td>
					<td><input type="text" name="hrTalentsDegree"/></td>					
				</tr>
				<tr>
					<td>毕业时间</td>
					<td><input type="date" name="hrTalentsGraduate"/></td>					
				</tr>
				<tr>
					<td>毕业学校</td>
					<td><input type="text" name="hrTalentsSchool"/></td>					
				</tr>
				
				<tr>
					<td>专业</td>
					<td><input type="text" name="hrTalentsMajor"/></td>					
				</tr>
				<tr>
					<td>计算机水平</td>
					<td><input type="text" name="hrTalentsComputer"/></td>					
				</tr>
				<tr>
					<td>外语语种</td>
					<td><input type="text" name="hrTalentsForeign"/></td>					
				</tr>
				
				<tr>
					<td>外语水平</td>
					<td><input type="text" name="hrTalentsLevel"/></td>					
				</tr>
				<tr>
					<td>特长</td>
					<td><input type="text" name="hrTalentsStrong"/></td>					
				</tr>
				
				<tr>
					<td>期望从事职业</td>
					<td><input type="text" name="hrTalentsExpect"/></td>					
				</tr>
				
				<tr>
					<td>职业技能</td>
					<td><input type="text" name="hrTalentsSkill"/></td>					
				</tr>
				<tr>
					<td>工作经验</td>
					<td><input type="text" name="hrTalentsWorkexperience"/></td>					
				</tr>
				<tr>
					<td>项目经验</td>
					<td><input type="text" name="hrTalentsProjectexperience"/></td>					
				</tr>
				
				<tr>
					<td>现居住城市</td>
					<td><input type="text" name="hrTalentsDwell"/></td>					
				</tr>
				<tr>
					<td>期望工作性质</td>
					<td><input type="text" name="hrTalentsNature"/></td>					
				</tr>
				<tr>
					<td>期望从事行业</td>
					<td><input type="text" name="hrTalentsIndustry"/></td>					
				</tr>
				
				<tr>
					<td>期望薪水</td>
					<td><input type="text" name="hrTalentsPay"/></td>					
				</tr>
				<tr>
					<td>到岗时间</td>
					<td><input type="text" name="hrTalentsPositiondate" value="1"/></td>					
				</tr>
				<tr>
					<td>照片</td>
					<td><input type="text" name="hrTalentsPicture"/></td>					
				</tr>
				
				<tr>
					<td>备注</td>
					<td><input type="text" name="hrTalentsRemark"/></td>					
				</tr>
				<tr>
					<td>附件</td>
					<td><input type="text" name="hrTalentsAccessory"/></td>					
				</tr>
				<tr>
					<td>状态</td>
					<td><input type="text" name="hrTalentsFilestatus"/></td>					
				</tr>
				<tr>
					<td>创建人</td>
					<td><input type="text" name="hrTalentsUsername"/></td>					
				</tr>
				<tr>
					<td>登记时间</td>
					<td><input type="date" name="hrTalentsRegister"/></td>					
				</tr>
				
				
				<tr>
					<td>添加</td>
					<td><input type="button" value="新建计划" onclick="save()"/></td>
				</tr>
			</table>
		</form>
					
					
    </div>
  </div>
</div>
  </body>
</html>
<script>
 /* 查询计划 */
  	function queryPlan(){
  		$.ajax({
  			url:"talent/planAll",
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
  	$(function(){
  	    queryPlan();
  	})
	/*添加*/
		function save(){
	  		var obj=$("#selerck").serialize();
	  		alert("1111111111")
				alert(obj);
				$.ajax({
		        	     url : "talent/saverck",
		        	     type : "post",
		        	     async : true,
		        	     data :$("#selerck").serialize(),
		       	         dataType : 'text',//返回的数据类型
		        	     success : function(data) {
		        		       alert(data);
		        	}
		 		});
	  	}
  </script>
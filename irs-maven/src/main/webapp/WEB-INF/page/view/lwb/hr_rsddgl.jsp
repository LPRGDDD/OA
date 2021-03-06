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
    
    <title>My JSP 'hr_ryddgl.jsp' starting page</title>
    
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
    <style type="text/css">
  .mtk{
     position:absolute;left:580px;top:80px;
  }
</style>
  </head>
  
  <body>
         <div class="layui-tab">
  <ul class="layui-tab-title">
    <li class="layui-this">调动管理</li>
    <li>新增调动</li>
  </ul>
  <div class="layui-tab-content">
    <div class="layui-tab-item layui-show">
           <table class="layui-hide" id="myTab" lay-filter="demo"></table>
	<div id="fenye"></div>
	
<script id="barDemo" type="text/html">
  <a class="layui-btn layui-btn-xs" lay-event="edit"> 修改  </a>
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
				    ,url: 'transfer/queryTransfer' //数据接口
				    ,page: true //开启分页
				    ,cols: [[ //表头
				       //全选
				       //edit: 'text'为开启单元格编辑，sort:true开启排序
               {field:'hr_record_name', width:220, title: '调动人员',align: 'center'}
		      ,{field:'hr_transfer_transfertype', width:220, title: '调动类型',align: 'center'}
		      ,{field:'hr_transfer_date', title: '调动日期', width: '220',align: 'center'} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
		      ,{field:'hr_transfer_effectivedate', width:220, title: '调动日期',align: 'center'}
		      ,{field:'hr_transfer_username', width:220, title: '创建人',align: 'center'}
		      ,{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}
				    ]],
				  });
               
				});
			//监听工具条
			table.on('tool(demo)', function(obj) {
				var data = obj.data;
				/* if (obj.event === 'del') {
					layer.confirm('真的删除行么',function(index) {
						obj.del();
						layer.close(index);
						$.ajax({
							url : "plan/deletePlan",
							data : {
								'id' : data.hr_transfer_id
							},
							type : "post",
							dataType : 'json',
							success : function(data) {
								if(data>0){
									layer.msg("删除成功");
									location.reload();
								}else{
									layer.msg("删除失败");
									location.reload();
								}
							}
						})
					});//判断
				} else  */if (obj.event === 'edit') {
					layer.msg(data.hr_transfer_id);
	//打开一个窗口
		layer.open({
            type:2,
            title:"查找用户角色",
            area: ['80%','90%'],
            offset: ['20px', '50px'],
            content:"http://localhost:8080/oa/transfer/transferById/"+data.hr_transfer_id
        });
				}
			});
	
		});
	</script>
    </div>
    
    
    <!-- --------------------------------------------------------------------------- -->
    
    
    
    <div class="layui-tab-item">
           <form class="layui-form" id="seletransfer">
		<div class="layui-form-item">
		    <div class="layui-inline">
				<label class="layui-form-label">部门:</label>
			    <div class="layui-input-inline">
			    <select onchange="queryRecord()" id="sele1"></select>
		        </div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">人员:</label>
			    <div class="layui-input-inline">
					<input type="hidden" name="hrRecordId" id="hr_record_id"/>
					<input id="hr_record_name" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	
	
	<div class="layui-form-item">
	        <div class="layui-inline">
				<label class="layui-form-label">调动类型:</label>
			    <div class="layui-input-inline">
					<select name="hrTransferTransfertype">
					     <option>晋升</option>
					     <option>平调</option>
					     <option>降级</option>
		       	    </select>
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label">调动日期:</label>
				<div class="layui-input-inline">
					<input name="hrTransferDate" class="layui-input ym" type="date"  placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label">生效日期:</label>
				<div class="layui-input-inline">
					<input name="hrTransferEffectivedate" class="layui-input ym" type="date"  autocomplete="off">
				</div>
			</div>
	        <div class="layui-inline">
				<label class="layui-form-label">调动前单位:</label>
			    <div class="layui-input-inline">
					<input name="hrTransferBeforetheunit" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	       <div class="layui-inline">
				<label class="layui-form-label">调动后单位:</label>
			    <div class="layui-input-inline">
					<input name="hrTransferAftertheunit" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	        <div class="layui-inline">
					<label class="layui-form-label">调动前职务:</label>
				<div class="layui-input-inline">
					<input name="hrTransferFormerposition" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
				<label class="layui-form-label">调动后职务:</label>
			    <div class="layui-input-inline">
					<input name="hrTransferAfterthejob" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	        <div class="layui-inline">
				<label class="layui-form-label">调动前部门:</label>
			    <div class="layui-input-inline">
					<input name="hrTransferBefore" id="dept_name" class="layui-input" type="text" placeholder="请输入" autocomplete="off"/>
				</div>
			</div>
	   </div>
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label">调动后部门:</label>
				<div class="layui-input-inline">
					<select name="deptId" id="sele2"></select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">调动后角色:</label>
			    <div class="layui-input-inline">
					<select name="roleId" id="sele3"></select>
				</div>
			</div>
	    </div>
	<div class="layui-form-item layui-form-text">
          <label class="layui-form-label">调动原因：</label>
            <div class="layui-input-block">
               <textarea name="hrTransferCause" placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
     </div>
     
     <div class="layui-form-item layui-form-text">
          <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
               <textarea name="hrTransferRemark" placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
     </div>
	
	   
	        
			
			

	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>创建者用户名</label>
				<div class="layui-input-inline">
					<input value="<shiro:principal property='fullname'/>" name="hrTransferUsername" class="layui-input ym" type="text" readonly="readonly"  autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
			     <label class="layui-form-label"><span class="yan">*</span>创建时间</label>
			    <div class="layui-input-inline">
					<input name="hrTransferCurrenttime" id="xx" readonly="readonly"  class="layui-input ym" type="text">
				</div>
			</div>
		</div>			
					
     
     
   <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn"  lay-filter="demo1" lay-submit="">立即提交</button>
      <button class="layui-btn layui-btn-primary" type="reset">重置</button>
    </div>
  </div>	
   </form>
   
   <!-- 按钮触发模态框 -->
<button  data-toggle="modal" data-target="#myModal" class="mtk" id="btn">
	选择人员
</button>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content" style="width: 200px;">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					人员姓名
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
    <script>
layui.use(['form', 'layedit', 'laydate'], function(){
  var form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;
   layui.use('form', function(){
        var form = layui.form; 
        $.ajax({
				url:"recoed/seleDept",
				type:"post",
				dataType:"json",
				success:function(data){
				$("#sele1").html("");
	        		for(var i=0;i<data.length;i++){
	        		var obj=data[i];
					 var tr="<option value='"+obj.dept_id+"'>"+obj.dept_name+"</option>";
				  	$("#sele1").append(tr);  
				  	 form.render('select');  			
	        		}
				}
			})
			 $.ajax({
				url:"recoed/seleDept",
				type:"post",
				dataType:"json",
				success:function(data){
				$("#sele2").html("");
	        		for(var i=0;i<data.length;i++){
	        		var obj=data[i];
					 var tr="<option value='"+obj.dept_id+"'>"+obj.dept_name+"</option>";
				  	$("#sele2").append(tr);  
				  	 form.render('select');  			
	        		}
				}
			})
	$.ajax({
				url:"recoed/seleroles",
				type:"post",
				dataType:"json",
				success:function(data){
				$("#sele3").html("");
	        		for(var i=0;i<data.length;i++){
	        		var obj=data[i];
					 var tr="<option value='"+obj.role_id+"'>"+obj.role_name+"</option>";
				  	$("#sele3").append(tr);  
				  	 form.render('select');  			
	        		}
				}
			})
				
   });
   
  //日期
  laydate.render({
    elem: '#date'
  });
  laydate.render({
    elem: '#date1'
  });
  
  //创建一个编辑器
  var editIndex = layedit.build('LAY_demo_editor');
 
  //自定义验证规则
  form.verify({
    title: function(value){
      if(value.length < 5){
        return '标题至少得5个字符啊';
      }
    }
    ,pass: [/(.+){6,12}$/, '密码必须6到12位']
    ,content: function(value){
      layedit.sync(editIndex);
    }
  });
  
  //监听指定开关
  form.on('switch(switchTest)', function(data){
    layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
      offset: '6px'
    });
    layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
  });
  
  //监听提交
  form.on('submit(demo1)', function(data){
  var obj=$("#seletransfer").serialize();
				$.ajax({
		        	     url : "transfer/transferSave",
		        	     type : "post",
		        	     async : true,
		        	     data :$("#seletransfer").serialize(),
		       	         dataType : 'text',//返回的数据类型
		        	     success : function(data) {
		        		       alert(data);
		        		      parent.location.reload();
		        	}
		 		});
  
    return false;
  });
 
});
  layui.use(['form', 'layedit', 'laydate','element','jquery'], function() {
		var form = layui.form,
		layer = layui.layer,
		element=layui.element,
		$=layui.jquery;
		$(document).on('click','#btn',function(){
		var id= $("#sele1").val();
           alert(id)
           alert(111111)
	          $.ajax({
	              url : "transfer/recoById",
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
	                    tr+="<td><input type='button' id='"+obj.hr_record_id+"' value='"+obj.hr_record_name+"' class='zpsx layui-btn' /></td>";
	                    tr+="</td>";
	                    $("#tbody").append(tr);
	                           			        			
	                 }
	              }
	          })
	});
});

layui.use(['form', 'layedit', 'laydate','element','jquery'], function() {
			var form = layui.form,
			layer = layui.layer,
			element=layui.element,
			$=layui.jquery;
			$("#tbody").on('click','.zpsx',function(){
			var id = this.id;
			alert(id);
			$.ajax({
				url : "transfer/recordFZ",
				type : "post",
				data : {
					"id" : id,
				},
				dataType : 'json',
				success : function(data) {
				    $("#hr_record_id").html("");
					$("#hr_record_name").html("");
					$("#dept_id").html("");
					$("#dept_name").html("");
					var ary = data[0];
			        $("#hr_record_id").val(ary.hr_record_id);
					$("#hr_record_name").val(ary.hr_record_name);
					$("#dept_id").val(ary.dept_id);
					$("#dept_name").val(ary.dept_name);
				}
			}); 
		})
	});
</script>
    </div>
    
    
    
  </div>
</div>
         
  </body>
</html>
<script type="text/javascript">
$(function(){
var today=new Date();
    var H=today.getFullYear();
    var M=today.getMonth()+1;
    var R=today.getDate();
    var h=today.getHours();
    var mm=today.getMinutes();
    var ss=today.getSeconds();
  	var xitong=H+"-"+M+"-"+R+" "+h+":"+mm+":"+ss;
  	$("#xx").val(xitong);
  	})
</script>
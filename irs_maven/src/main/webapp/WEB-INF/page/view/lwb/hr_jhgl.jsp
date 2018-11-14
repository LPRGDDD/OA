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
    
    <title>My JSP 'hr_jhgl.jsp' starting page</title>
    
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
 <style>
 .yan {
	color: red;

}
</style>
  </head>
  
  <body>
 
<div class="layui-tab">
  <ul class="layui-tab-title">
    <li class="layui-this">计划管理</li>
    <li>新增计划</li>
  </ul>
  <div class="layui-tab-content">
  <!-- 第一块 -->
    <div class="layui-tab-item layui-show">
           <div class="demoTable">
		                根据计划查询：
		       <div class="layui-inline">
		         <input name="keyWord" class="layui-input" id="demoReload" autocomplete="off">
		       </div>
		          <button class="layui-btn" data-type="reload">搜索</button>
		    </div>
          <table class="layui-hide" id="myTab" lay-filter="demo"></table>
	<div id="fenye"></div>
	
<script id="barDemo" type="text/html">
  <a class="layui-btn layui-btn-xs" lay-event="edit">修改</a>
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
				    ,url: 'plan/queryPlan' //数据接口
				    ,page: true //开启分页
				    ,method:"post"
				    ,cols: [[ //表头
				       //全选
				       //edit: 'text'为开启单元格编辑，sort:true开启排序
               {field:'hr_plan_name', width:80, title: '计划名称'}
		      ,{field:'hr_plan_ditch', width:80, title: '招聘渠道'}
		      ,{field:'hr_plan_budget', title: '预算费用', width: '10%'} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
		      ,{field:'hr_plan_department', width:137, title: '招聘部门'}
		      ,{field:'hr_plan_count', title: '招聘人数'}
		      ,{field:'hr_plan_skilldate', width:137, title: '用工日期'}
		      ,{field:'hr_plan_startdate', title: '开始日期'}
		      ,{field:'hr_plan_dateclosed', title: '结束日期'}
		      ,{field:'username', width:137, title: '审批人'}
		      ,{field:'hr_plan_username', width:137, title: '创建者用户名'}
		      ,{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}
				    ]],
				    id: 'testReload'
				    ,page: true
				    ,height: 315,
		done:function(res,page,count){
		  $("[data-field='hr_plan_state']").children().each(function(){
           if($(this).text()=='0'){
             $(this).text("待批准")
           }else if($(this).text()=='1'){
             $(this).text("批准")
           }else if($(this).text()=='2'){
             $(this).text("不批准")
                 }
              })
              }
				  });
               
		 
	 var $ = layui.$, active = {
    	reload: function(){
      var demoReload = $('#demoReload');
      
      //执行重载
      table.reload('testReload', {
        page: {
          curr: 1 //重新从第 1 页开始
        }
        ,where: {
         
            keyWord: demoReload.val(),
              }
      });
    }
  };
  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  }); 
				});
  
			//监听工具条
			table.on('tool(demo)', function(obj) {
				var data = obj.data;
				if (obj.event === 'edit') {
					layer.msg(data.hr_plan_id);
	//打开一个窗口
		layer.open({
            type:2,
            title:"查找用户角色",
            area: ['80%','90%'],
            offset: ['20px', '50px'],
            content:"http://localhost:8080/oa/plan/planById/"+data.hr_plan_id
        });
				}
			});
	
		});
	</script>
            
    </div>
    
    
    
<!-- 第二块 -->
    <div class="layui-tab-item">
					
              <form class="layui-form" id="selejihua" action="">
				
		<div class="layui-form-item">
		    <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>计划编号</label>
			    <div class="layui-input-inline">
					<input name="hrPlanNumber" onblur="blur1()" id="q1" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off" lay-verify="jhbh">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>计划名称</label>
			    <div class="layui-input-inline">
					<input name="hrPlanName" onblur="blur2()" id="jihuaName" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off" lay-verify="jhmc">
				</div>
			</div>
	   </div>
	
	
	<div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>招聘渠道</label>
				<div class="layui-input-inline">
					<select name="hrPlanDitch">
					    <option>招聘会</option>
					    <option>猎头公司</option>
					    <option>网络招聘</option>
				     </select>
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>招聘人数</label>
				<div class="layui-input-inline">
					<input name="hrPlanCount" class="layui-input ym" type="text"  placeholder="请输入" autocomplete="off" lay-verify="zprs">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>开始时间</label>
				<div class="layui-input-inline">
					<input name="hrPlanStartdate" class="layui-input ym" type="date"  autocomplete="off" lay-verify="kssj">
				</div>
			</div>
	        <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>结束时间</label>
			    <div class="layui-input-inline">
					<input name="hrPlanDateclosed" class="layui-input ym" type="date" placeholder="请输入" autocomplete="off" lay-verify="jssj">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	       <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>预算费用</label>
			    <div class="layui-input-inline">
					<input name="hrPlanBudget" class="layui-input ym" type="number" placeholder="请输入" autocomplete="off" lay-verify="ysfy">
				</div>
			</div>
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>招聘部门</label>
				<div class="layui-input-inline">
					<select name="hrPlanDepartment">
					    <option>销售部</option>
					    <option>市场部</option>
					    <option>品牌部</option>
					    <option>财务部</option>
					    <option>行政部</option>
					    <option>研发部</option>
				     </select>
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>招聘岗位</label>
			    <div class="layui-input-inline">
					<select name="hrPlanPost">
					    <option>会计</option>
					    <option>行政办事员</option>
					    <option>应用工程师</option>
					    <option>安全人员</option>
					    <option>系统操作员</option>
				     </select>
				</div>
			</div>
	        <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>用工日期</label>
			    <div class="layui-input-inline">
					<input name="hrPlanSkilldate" class="layui-input ym" type="date" placeholder="请输入" autocomplete="off"  lay-verify="ygrq">
				</div>
			</div>
	   </div>
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>审批人</label>
				<div class="layui-input-inline">
					<select name="admin.id" id="sele1">
				     </select>
				</div>
			</div>
	    </div>
	<div class="layui-form-item layui-form-text">
          <label class="layui-form-label">招聘说明</label>
            <div class="layui-input-block">
               <textarea name="hrPlanExplain" placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
     </div>
     
     <div class="layui-form-item layui-form-text">
          <label class="layui-form-label">招聘备注</label>
            <div class="layui-input-block">
               <textarea name="hrPlanRemark" placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
     </div>
	
	   
	        
			
			

	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>创建者用户名</label>
				<div class="layui-input-inline">
					<input value="<shiro:principal property='fullname'/>" name="hrPlanUsername" class="layui-input ym" type="text" readonly="readonly"  autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
			    <div class="layui-input-inline">
					<input name="hrPlanState" value="0" class="layui-input ym" type="hidden">
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

	
	<!--form  -->
	
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use(['form', 'layedit', 'laydate'], function(){
  var form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;
   layui.use('form', function(){
        var form = layui.form; 
        $.ajax({
				url:"plan/userAll",
				type:"post",
				dataType:"json",
				success:function(data){
				$("#sele1").html("");
	        		for(var i=0;i<data.length;i++){
	        		var obj=data[i];
					 var tr="<option value='"+obj.id+"'>"+obj.username+"</option>";
				  	$("#sele1").append(tr);  
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
    jhbh: function(value){
      if(value.length == 0){
        return '计划编号不得为空';
      }
    },
    jhmc: function(value){
      if(value.length == 0){
        return '计划名称不得为空';
      }
    },
    zprs: function(value){
      if(value.length == 0){
        return '招聘人数不得为空';
      }
    },
    kssj: function(value){
      if(value.length == 0){
        return '开始时间不得为空';
      }
    },
    jssj: function(value){
      if(value.length == 0){
        return '结束时间不得为空';
      }
    },
    ygrq: function(value){
      if(value.length == 0){
        return '用工日期不得为空';
      }
    },
    sprq: function(value){
      if(value.length == 0){
        return '审批日期不得为空';
      }
    },
    ysfy: function(value){
      if(value.length == 0){
        return '预算费用不得为空';
      }
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
  var obj=$("#selejihua").serialize();
				$.ajax({
		        	     url : "plan/savePlan",
		        	     type : "post",
		        	     async : true,
		        	     data :$("#selejihua").serialize(),
		       	         dataType : 'text',//返回的数据类型
		        	     success : function(data) {
		        		       alert(data);
		        		      parent.location.reload();
		        	}
		 		});
  
    return false;
  });
 
});
</script>
<script type="text/javascript">
		function blur1(){
			 var Num="000";
				         for(var i=0;i<8;i++){
				             Num+=Math.floor(Math.random()*10);
				         }
				         $("#q1").val(Num);
			var qid = $("#q1").val();
			$.ajax({
				url : "plan/selebh",
				type : "post",
				data : {"hid" : qid},
				dataType : "text",
				success : function(data) {
                    layer.msg(data)
					}
				   }
				)
			}
</script>
<script type="text/javascript">
	function blur2(){
			var jid = $("#jihuaName").val();
			$.ajax({
				url : "plan/selejh",
				type : "post",
				data : {"name" : jid},
				dataType : "text",
				success : function(data) {
                    layer.msg(data)
					}
				   }
				)
			}
	</script>
	</div>
  </div>
</div>
  </body>
</html>
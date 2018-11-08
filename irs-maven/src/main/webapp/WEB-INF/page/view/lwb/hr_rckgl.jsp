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

			   {field:'hr_plan_name', width:120, title: '计划名称'}
			  ,{field:'hr_talents_name', width:120, title: '应聘人姓名'}
		      ,{field:'hr_talents_toemploy', width:157, title: '应聘岗位'}
		      ,{field:'hr_talents_relation',width:150, title: '联系方式'}
		      ,{field:'hr_talents_mall', width:190,  title: '邮箱'}
		      ,{field:'hr_talents_major', width:157, title: '专业'}
		      ,{field:'hr_talents_username', width:157, title: '创建人'}
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
            area: ['80%','90%'],
            offset: ['20px', '50px'],
            content:"http://localhost:8080/oa/talent/queryByIdrck/"+data.hr_talents_id
        });
				}
			});
	
		});
	</script>
            
    </div>
    
    
    
<!-- 第二块 -->
    <div class="layui-tab-item">
					
					<form class="layui-form" id="selerck" action="">
				
		<div class="layui-form-item">
		      <div class="layui-inline">
					<label class="layui-form-label"><span>*</span>计划</label>
				<div class="layui-input-inline">
					<select name="plan.hrPlanId" id="sele1">
				     </select>
				</div>
			</div>

			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>应聘人姓名</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsName" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>出生日期</label>
				<div class="layui-input-inline">				
					<input name="hrTalentsBirth" class="layui-input ym" type="date"  autocomplete="off">
				</div>
			</div>
	   </div>
	
	
	
	<div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>性别</label>
				<div class="layui-input-inline">	
					<input name="hrTalentsSex" class="layui-input ym" type="text"  placeholder="请输入" autocomplete="off">			
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>年龄</label>
				<div class="layui-input-inline">
				    <input name="hrTalentsAge" class="layui-input ym" type="text"  placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>籍贯</label>
				<div class="layui-input-inline">
					<input name="hrTalentsNative" class="layui-input ym" type="text"  autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>户口所在地</label>
				<div class="layui-input-inline">
					<input name="hrTalentsPlace" class="layui-input ym" type="text"  autocomplete="off">
				</div>
			</div>
	        <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>民族</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsNation" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>婚姻状况</label>
			    <div class="layui-input-inline">
			        <select name="hrTalentsState">
			             <option>未婚</option>
			             <option>已婚</option>
			        </select>
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	       <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>政治面貌</label>
			    <div class="layui-input-inline">
                     <select name="hrTalentsFace">
			             <option>中共党员</option>
			             <option>中共预备党员</option>
			             <option>无党派人士</option>
			             <option>群众</option>
			        </select>		    
				</div>
			</div>
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>联系方式</label>
				<div class="layui-input-inline">				
					<input name="hrTalentsRelation" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>e-mall</label>
			    <div class="layui-input-inline">
		             <input name="hrTalentsMall"  class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>参加工作时间</label>
			    <div class="layui-input-inline">
                      <input name="hrTalentsWorkdate" class="layui-input ym" type="date" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>学历</label>
			    <div class="layui-input-inline">	
			          <select name="hrTalentsBackground">
			             <option>小学</option>
			             <option>初中</option>
			             <option>高中</option>
			             <option>大专</option>
			             <option>本科</option>
			             <option>硕士</option>
			             <option>博士</option>
			        </select>		    
				</div>
			</div>
	        <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>健康状况</label>
			    <div class="layui-input-inline">
                      <input name="hrTalentsHealth" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>学位</label>
				<div class="layui-input-inline">
				     <select name="hrTalentsDegree">
			             <option>无</option>
			             <option>学士学位</option>
			             <option>硕士学位</option>
			             <option>博士学位</option>
			        </select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>毕业时间</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsGraduate" class="layui-input ym" type="date"  autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>毕业学校</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsSchool" class="layui-input ym" type="text"  autocomplete="off">
				</div>
			</div>
	    </div>
	    
	    
	    
	    
	<div class="layui-form-item">
	   <div class="layui-inline">
          <label class="layui-form-label">专业</label>
            <div class="layui-input-inline">	
                    <select name="hrTalentsMajor">
			             <option>哲学</option>
			             <option>经济学</option>
			             <option>法学</option>
			             <option>政治学</option>
			             <option>中国语言文学</option>
			             <option>教育学</option>
			             <option>历史学</option>
			             <option>数学</option>
			             <option>力学</option>
			             <option>管理科学与工程</option>
			        </select>		           
            </div>
       </div>
     
       <div class="layui-inline">
          <label class="layui-form-label">计算机水平</label>
            <div class="layui-input-inline">  
                       <select name="hrTalentsComputer">
			             <option>无</option>
			             <option>二级</option>
			             <option>四级</option>
			             <option>六级</option>
			             <option>八级</option>
			        </select>	
            </div>
       </div>
       <div class="layui-inline">
          <label class="layui-form-label">外语语种</label>
            <div class="layui-input-inline">
					<input name="hrTalentsForeign" class="layui-input ym" type="text"  autocomplete="off">
            </div>
        </div>
  </div>
	   
	   
	   
	   
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>外语水平</label>
				<div class="layui-input-inline">
					<input name="hrTalentsLevel" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>特长</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsStrong" class="layui-input ym" type="text"/>
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>期望从事职业</label>
				<div class="layui-input-inline">
					<input name="hrTalentsExpect" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	 </div>	
	 
	  <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>职业技能</label>
				<div class="layui-input-inline">
					<input name="hrTalentsSkill" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>工作经验</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsWorkexperience" class="layui-input ym" type="text" />
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>项目经验</label>
				<div class="layui-input-inline">
					<input name="hrTalentsProjectexperience" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	 </div>
	 
	  <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>现居住城市</label>
				<div class="layui-input-inline">
					<input name="hrTalentsDwell" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>期望工作性质</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsNature" class="layui-input ym" type="text">
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>期望从事行业</label>
				<div class="layui-input-inline">
					<input name="hrTalentsIndustry" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
	 </div>		
	 
	 <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>期望薪水</label>
				<div class="layui-input-inline">
					<input name="hrTalentsPay" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">应聘岗位</label>
			    <div class="layui-input-inline">
			       <select name="hrTalentsToemploy">
			             <option>项目经理</option>
			             <option>开发人员</option>
			             <option>销售经理</option>
			             <option>销售人员</option>
			         </select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>到岗时间</label>
			    <div class="layui-input-inline">
			        <select name="hrTalentsPositiondate">
			             <option value="0">三天内</option>
			             <option value="1">一周内</option>
			             <option value="2">两周内</option>
			         </select>
				</div>
			</div>
	 </div>	
	
	     <div class="layui-form-item layui-form-text">
          <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
               <textarea name="hrTalentsRemark"  placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
        </div>

        
	 <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>创建人</label>
				<div class="layui-input-inline">
					<input name="hrTalentsUsername" value="<shiro:principal property="fullname"/>" readonly="readonly" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>登记时间</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsRegister" class="layui-input ym" type="date">
					<input name="hrTalentsFilestatus" value="0"  type="hidden">
				</div>
			</div>
	 </div>	
					
     
     
   <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn"  lay-filter="demo1" lay-submit="">立即添加</button>
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
				url:"talent/planAll",
				type:"post",
				dataType:"json",
				success:function(data){
				$("#sele1").html("");
	        		for(var i=0;i<data.length;i++){
	        		var obj=data[i];
					  var tr="<option value='"+obj.hr_plan_id+"'>"+obj.hr_plan_name+"</option>";
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
  var obj=$("#selerck").serialize();
				$.ajax({
		        	     url : "talent/saverck",
		        	     type : "post",
		        	     async : true,
		        	     data :$("#selerck").serialize(),
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
					
					
    </div>
  </div>
</div>
  </body>
</html>
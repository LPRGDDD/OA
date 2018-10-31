<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>薪酬基数设置</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <link rel="stylesheet" type="text/css" href="page/resources/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="page/resources/bootstrap/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="page/resources/layui/css/layui.css" media="all">
	<script type="text/javascript" src="page/resources/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="page/resources/layui/layui.js"></script>
	<script type="text/javascript" src="page/resources/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="page/resources/layui/layui.all.js"></script>
  </head>
  
<body>
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
      <ul class="layui-tab-title">
          <li class="layui-this">员工薪酬基数设置</li>
          <li>薪酬基数查询页面</li>
      </ul>
      <!-- 员工薪酬基数设置 -->
  <div class="layui-tab-content" style="height:100px;">
          <div class="layui-tab-item layui-show">
          <!-- 部门查询 -->
                   部门:<select name="dept" id="dept2">
          </select>
           <span>人员选择</span>
          <!-- 查询员工 -->
           <div class="layui-input-inline">
                 <button type="button" onclick="selectUser()" class="layui-btn layui-btn-primary layui-btn-radius">查询员工</button> <!-- selectUser()是自定义的 -->    
           </div>
           <!-- 员工薪酬基数设置-->
               <form method="post" id="form1" class="layui-form layui-form-pane">
               <!--  查询员工ID、人员名称 -->
                  <div class="layui-form-item" style="margin-bottom:1px;margin-top:1px;" align="center">
			          <label class="layui-form-label">人员</label>
			          <div class="layui-input-inline">
			         	<input type="hidden" id="personxcId"/><!-- 员工薪酬ID -->
			         	<input id="reny" width="250px;" height="50px;" class="layui-input" type="text" /><!-- 人员名称 -->
			          </div>
			       </div>
                <!--  薪酬项目定义名称（输入项，上报项，扣款项，） -->
			       <div id="si"></div>
			       <hr><!-- hr:分割线 -->
			    <!-- 保险项 -->
			       <div class="layui-form-item" style="margin-bottom:1px;margin-top:1px;" align="center">
			         <label class="layui-form-label">保险基数</label>
			          <div class="layui-input-inline">
			            <input name="personxcInsurejs" id="zong"  lay-verify="required" placeholder="请输入金额" autocomplete="off" class="layui-input" type="text"/>
			         	<input type="button" class="BigButton" onclick="jisuan()" value="计算"/>
			          </div>
			       </div>
			       <div class="layui-form-item" style="margin-bottom:1px;margin-top:1px;">
			         <label class="layui-form-label">养老保险</label>
			          <div class="layui-input-inline">
			            <input name="personxcYlinsure" id="ylzong" lay-verify="required" placeholder="请输入金额" autocomplete="off" class="layui-input" type="text"/>
			          </div>
			       </div>
			       <div class="layui-form-item" style="margin-bottom:1px;margin-top:1px;">
			         <label class="layui-form-label">单位养老</label>
			           <div class="layui-input-inline">
			         	 <input name="personxcDwyl" id="yldw" lay-verify="required" placeholder="请输入金额" autocomplete="off" class="layui-input" type="text"/>
			           </div>
			        </div>
			        <div class="layui-form-item" style="margin-bottom:1px;margin-top:1px;">
			          <label class="layui-form-label">个人养老</label>
			           <div class="layui-input-inline">
			         	 <input name="personxcGryl" id="ylgr" lay-verify="required" placeholder="请输入金额" autocomplete="off" class="layui-input" type="text"/>
			           </div>
			        </div>
			        <div class="layui-form-item" style="margin-bottom:1px;margin-top:1px;">
			          <label class="layui-form-label">医疗保险</label>
			            <div class="layui-input-inline">
			         	  <input name="personxcYlbx" id="yilzong" lay-verify="required" placeholder="请输入金额" autocomplete="off" class="layui-input" type="text"/>
			            </div>
			        </div>
			        <div class="layui-form-item" style="margin-bottom:1px;margin-top:1px;">
			           <label class="layui-form-label">单位医疗</label>
			            <div class="layui-input-inline">
			         	  <input name="personxcDwMedical" id="yildw" lay-verify="required" placeholder="请输入金额" autocomplete="off" class="layui-input" type="text"/>
			            </div>
			        </div>
			        <div class="layui-form-item" style="margin-bottom:1px;margin-top:1px;">
			           <label class="layui-form-label">个人医疗</label>
			            <div class="layui-input-inline">
			         	   <input name="personxcGrmedical" id="yilgr" lay-verify="required" placeholder="请输入金额" autocomplete="off" class="layui-input" type="text"/>
			            </div>
			        </div>
			        <div class="layui-form-item" style="margin-bottom:1px;margin-top:1px;">
			            <label class="layui-form-label">生育保险</label>
			         	  <div class="layui-input-inline">
			         		<input name="personxcGroup" id="syzong" lay-verify="required" placeholder="请输入金额" autocomplete="off" class="layui-input" type="text"/>
			         	  </div>
			        </div>
			        <div class="layui-form-item" style="margin-bottom:1px;margin-top:1px;">
			           <label class="layui-form-label">单位生育</label>
			         	 <div class="layui-input-inline">
			         	   <input name="personxcDwsy" id="sydw" lay-verify="required" placeholder="请输入金额" autocomplete="off" class="layui-input" type="text"/>
			             </div>
			        </div>
			        <div class="layui-form-item" style="margin-bottom:1px;margin-top:1px;">
			           <label class="layui-form-label">失业保险</label>
			             <div class="layui-input-inline">
			         	   <input name="personxcSybx" id="shiyzong" lay-verify="required" placeholder="请输入金额" autocomplete="off" class="layui-input" type="text"/>
			         	 </div>
			        </div>
			        <div class="layui-form-item" style="margin-bottom:1px;margin-top:1px;">
			           <label class="layui-form-label">单位失业</label>
			         	<div class="layui-input-inline">
			         	   <input name="personxcDwshiye" id="shiydw" lay-verify="required" placeholder="请输入金额" autocomplete="off" class="layui-input" type="text"/>
			         	</div>
			        </div>
			        <div class="layui-form-item" style="margin-bottom:1px;margin-top:1px;">
			           <label class="layui-form-label">个人失业</label>
			            <div class="layui-input-inline">
			         	  <input name="personxcGrsy" id="shiygr" lay-verify="required" placeholder="请输入金额" autocomplete="off" class="layui-input" type="text"/>
			            </div>
			        </div>
			        <div class="layui-form-item" style="margin-bottom:1px;margin-top:1px;">
			           <label class="layui-form-label">工伤保险</label>
			             <div class="layui-input-inline">
			         	   <input name="personxcGsbx" id="gszong" lay-verify="required" placeholder="请输入金额" autocomplete="off" class="layui-input" type="text"/>
			         	 </div>
			        </div>
			        <div class="layui-form-item" style="margin-bottom:1px;margin-top:1px;">
			           <label class="layui-form-label">单位工伤</label>
			             <div class="layui-input-inline">
			         	   <input name="personxcDwgs" id="gsdw" lay-verify="required" placeholder="请输入金额" autocomplete="off" class="layui-input" type="text"/>
			         	 </div>
			        </div>
			        <div class="layui-form-item" style="margin-bottom:1px;margin-top:1px;">
			           <label class="layui-form-label">住房公积金</label>
			         	 <div class="layui-input-inline">
			         	   <input name="personxcHousingfund" id="zfzong" lay-verify="required" placeholder="请输入金额" autocomplete="off" class="layui-input" type="text"/>
			         	 </div>
			        </div>
			        <div class="layui-form-item" style="margin-bottom:1px;margin-top:1px;">
			          <label class="layui-form-label">单位住房</label>
			            <div class="layui-input-inline">
			         	  <input name="personxcDwzf" id="zfdw" lay-verify="required" placeholder="请输入金额" autocomplete="off" class="layui-input" type="text"/>
			            </div>
			        </div>
			        <div class="layui-form-item" style="margin-bottom:1px;margin-top:1px;">
			          <label class="layui-form-label">个人住房</label>
			            <div class="layui-input-inline">
			         	   <input name="personxcGrzf" id="zfgr" lay-verify="required" placeholder="请输入金额" autocomplete="off" class="layui-input" type="text"/>
			            </div>
			        </div>
		               <button class="layui-btn" onclick="personxcInsert()">保存</button>
	               	   <button class="layui-btn" onclick="personxcFind()">清空</button>
		       </form>
          </div>
          <!-- 薪酬基数分页查询页面  -->
          <div class="layui-tab-item">
             <div class="panel-body">
             <table class="layui-hide" id="myTab1" lay-filter="myTab1"></table>
				<div id="fenye1"></div>
		        <button class="layui-btn" onclick="personxcFind()">返回</button>
          </div>
          </div>
        </div>  
   </div>
</div>
<!-- 放置保险系数 (模态框)-->
<div class="layui-row" style="display:none;">
	<table id="xishu"></table>
</div>
<!-- 模态框 -->
<div class="layui-row" id="kuang" style="display:none;">
	<!-- 分页查询 -->
	<table class="layui-hide" id="myTab" lay-filter="myTab"></table>
	<div id="fenye"></div>
	<div class="layui-form-item">
		<div calss="layui-input-block">
			<button class="layui-btn" id="btn1" >立即提交</button>
			<button type="reset" class="layui-btn layui-btn-primary">重置</button>
		</div>
	</div>
</div>
</body>
</html>
<script type="text/javascript">
/* 查询员工 */
 function selectUser(){
   var deptId=$("#dept2 option:selected").val();//获取下拉框的值
   layer.msg(deptId);
   onselect(deptId);
   layer.open({
	 type:1,
	 title:"查找员工",
	 area:['80%','80%'],
	 content:$("#kuang"),
	 offset:['100px','100px']
   });   
}
/* 查询的数据 */
		 function onselect(deptId){
		   layui.use('table',function(){
		   var table=layui.table;
		   layer.msg(deptId);
		   table.render({
		   elem : '#myTab',   //同上
		   url : 'dept/findUser?deptId='+deptId+'',
		   cols : [ [ 
		   {checkbox:true,fixed:true},
		   {field : 'id',title : '用户编号',sort : true,width:100}, 
		   {field : 'fullname',title : '用户名称',sort : true,width:100},
		   {field : 'phone',title : '联系方式',sort : true,width:170}, 
		   {field : 'dept_id',title : '部门编号',sort : true,width:170}, 
		   {field : 'dept_name',title : '部门名称',sort : true,width:170}, 
			       ] ],
		   page:true
			       });
			$("#btn1").click(function() {
				var checkStatus = table.checkStatus('myTab'); //test即为基础参数id对应的值
				var length = checkStatus.data.length;
				var id = "";
				var name = "";
				for (var i = 0; i < length; i++) {
					id += checkStatus.data[i].id + ","
					name += checkStatus.data[i].username + ", "
				}
				layer.msg(id);
				$("#personxcId").val(id);
				$("#reny").val(name);
				layer.closeAll();
				$("#kuang").css("display", "none");
			})
		})
	}
	/* 薪酬项目定义查询 */
	function salitemFind() {
		$.ajax({
			url : "salitem/findAll",
			type : 'post',
			dataType : 'json',
			success : function(data) {
				$("#si").html(""); //清空内容数据
				var ary = data;
				for (var i = 0; i < ary.length; i++) {
					var n = i + 1; //生成name值
					var obj = ary[i]; //获取当前对象
					var tr = "<div class='layui-form-item' style='margin-bottom:1px;margin-top:1px;'>" +
						"<label class='layui-form-label'>" + obj.Item_name + "</label><div class='layui-input-inline'><input type='text' name='personxcS" + n + "' lay-verify='required' placeholder='请输入' autocomplete='off' class='layui-input'/>" + "</div>";
					$("#si").append(tr); //追加行
				}
			}
		})
	}
	/* 部门查询 */
	function dept() {
		$.ajax({
			url : "dept/findAll",
			type : 'post',
			dataType : 'json',
			success : function(data) {
				$("#dept2").html(""); //清空内容数据
				var ary = data;
				for (var i = 0; i < ary.length; i++) {
					var obj = ary[i]; //获取当前对象
					$("#dept2").append("<option class='form-control' value='" + obj.dept_id + "' selected>" + obj.dept_name + "</option>"); //追加行
				}
			}
		})
	}
	/* 保险系数查询 */
	function safefactorFind() {
		$.ajax({
			url : "safefactor/findAll",
			type : 'post',
			dataType : 'json',
			success : function(data) {
				$("#sft").html(""); //清空内容数据
				var ary = data;
				for (var i = 0; i < ary.length; i++) {
					var obj = ary[i]; //获取当前对象
					var tr = "<tr>";
					tr += "<td><input type='text' value='" + obj.safefactor_name + "' /><br/>";
					tr += "<td><input type='text' value='" + obj.grpayment + "' id='gr" + i + "' /><br/>";
					tr += "<td><input type='text' value='" + obj.dwpayment + "' id='dw" + i + "' /><br/>";
					tr += "</tr>";
					$("#xishu").append(tr); //追加行
				}
			}
		})
	}
	/* 计算 */
	function jisuan(){
 	var gr0=$("#gr0").val()
 	var gr1=$("#gr1").val()
 	var gr2=$("#gr2").val()
 	var gr3=$("#gr3").val()
 	var gr4=$("#gr4").val()
 	var gr5=$("#gr5").val()
 	var dw0=$("#dw0").val()
 	var dw1=$("#dw1").val()
 	var dw2=$("#dw2").val()
 	var dw3=$("#dw3").val()
 	var dw4=$("#dw4").val()
 	var dw5=$("#dw5").val()
 	layer.msg(gr0);
    var zong=$("#zong").val();//保险基数
	$("#ylgr").val(gr0*0.01*zong);//个人养老
	$("#yldw").val(dw0*0.01*zong);//单位养老
	var ylzong=$("#ylzong").val(gr0*0.01*zong+dw0*0.01*zong);//养老保险
	$("#yildw").val(dw1*0.01*zong);//单位医疗
	$("#yilgr").val(gr1*0.01*zong);//个人医疗
	var yilzong=$("#yilzong").val(gr1*0.01*zong+dw1*0.01*zong);//医疗保险
	$("#sydw").val(dw2*0.01*zong);//单位生育
	var syzong=$("#syzong").val(dw2*0.01*zong+0);//生育保险
	$("#shiydw").val(dw3*0.01*zong);//单位失业
	$("#shiygr").val(gr3*0.01*zong);//个人失业
	var shiyzong=$("#shiyzong").val(gr3*0.01*zong+dw3*0.01*zong);//失业保险
	$("#gsdw").val(dw4*0.01*zong);//单位工伤
	var gszong=$("#gszong").val(dw4*0.01*zong+0);//工伤保险
	$("#zfdw").val(dw5*0.01*zong);//单位住房
	$("#zfgr").val(gr5*0.01*zong);//个人住房
	var zfzong=$("#zfzong").val(gr5*0.01*zong+dw5*0.01*zong); //住房公积金
	}
	/* 保存数据 */
	function personxcInsert() {
		alert($("#form1").serialize());
		$.ajax({
			url : "personxc/insert?userId=" + $("#personxcId").val() + "",
			type : 'post',
			async : true,
			data : $("#form1").serialize(),
			dataType : 'text',
			success : function(data) {
				alert(data);
			},
			error : function(data) {}
		})
	}
	/* 薪酬基数设置的分页查询 */
	layui.use('table',function(){
	   var table=layui.table;
	   table.render({
	   elem : '#myTab1',   //同上
	   url : 'personxc/findPage',
	   cols : [ [ 
	   {field : 'personxc_id',title : '编号',sort : true,width:100},//员工薪酬基数编号
	   {field : 'username',title : '用户名称',sort : true,width:100},//用户名称
	   {field : 'personxc_s1',title : '薪酬项目1',sort : true,width:170},//薪酬项目1
	   {field : 'personxc_s2',title : '薪酬项目2',sort : true,width:170},//薪酬项目2 
	   {field : 'personxc_s3',title : '薪酬项目3',sort : true,width:170},//薪酬项目3
	   {field : 'personxc_s4',title : '薪酬项目4',sort : true,width:170},//薪酬项目4
	   {field : 'personxc_s5',title : '薪酬项目5',sort : true,width:170},//薪酬项目5
	   {field : 'personxc_s6',title : '薪酬项目6',sort : true,width:170},//薪酬项目6
	   {field : 'personxc_s7',title : '薪酬项目7',sort : true,width:170},//薪酬项目7
	   {field : 'personxc_s8',title : '薪酬项目8',sort : true,width:170},//薪酬项目8
	   {field : 'personxc_s9',title : '薪酬项目9',sort : true,width:170},//薪酬项目9
	   {field : 'personxc_s10',title : '薪酬项目10',sort : true,width:170},//薪酬项目10
	   {field : 'personxc_insurejs',title : '保险基数',sort : true,width:170},//员工保险基数 
	   {field : 'personxc_ylinsure',title : '养老保险',sort : true,width:170},//员工养老保险
	   {field : 'personxc_dwyl',title : '单位养老',sort : true,width:170},//员工单位养老
	   {field : 'personxc_gryl',title : '个人养老',sort : true,width:170},//员工个人养老
	   {field : 'personxc_ylbx',title : '医疗保险',sort : true,width:170},//员工医疗保险
	   {field : 'personxc_dw_medical',title : '单位医疗',sort : true,width:170},//员工单位医疗
	   {field : 'personxc_grmedical',title : '个人医疗',sort : true,width:170},//员工个人医疗
	   {field : 'personxc_group',title : '生育保险',sort : true,width:170},//员工生育保险
	   {field : 'personxc_dwsy',title : '单位生育',sort : true,width:170},//员工单位生育
	   {field : 'personxc_sybx',title : '失业保险',sort : true,width:170},//员工失业保险
	   {field : 'personxc_dwshiye',title : '单位失业',sort : true,width:170},//员工单位失业
	   {field : 'personxc_grsy',title : '个人失业',sort : true,width:170},//员工个人失业
	   {field : 'personxc_gsbx',title : '工伤保险',sort : true,width:170},//员工工伤保险
	   {field : 'personxc_dwgs',title : '单位工伤',sort : true,width:170},//员工单位工伤
	   {field : 'personxc_housingfund',title : '住房公积金',sort : true,width:170},//员工住房公积金
	   {field : 'personxc_dwzf',title : '单位住房',sort : true,width:170},//员工单位住房
	   {field : 'personxc_grzf',title : '个人住房',sort : true,width:170},//员工个人住房
	   {field : 'personxc_expression',title : '表现',sort : true,width:170}//员工表现
		       ] ],
	   page:true
		       });
})
/* 页面刷新调用查询方法 */
 $(function(){
    salitemFind();//薪酬项目定义查询
    dept();//部门查询
    safefactorFind();//保险系数查询
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
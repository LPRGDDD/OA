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
    
    <title>工资流程管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="page/resources/layui/css/layui.css" media="all">
	<script type="text/javascript" src="page/resources/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="page/resources/layui/layui.js"></script>
	<script type="text/javascript" src="page/resources/layui/layui.all.js"></script>
  </head>
  
<body>
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
      <ul class="layui-tab-title">
          <li>新建工资流程</li>
          <li class="layui-this">工资流程管理</li>
      </ul>
 <!-- 新建工资流程 (工资流程的添加)-->
 <div class="layui-tab-content" style="height:100px;">
   <div class="layui-tab-item">
	 <form method="post" align="center" id="form1">
	   <div class="layui-form-item">
	     <table border="5" align="center">
	       <tr>
	         <td>
	           <label class="layui-form-label">起始日期：</label>
	         </td>
	         <td>
	           <div class="layui-input-inline">
	             <input type="hidden" name="salaryflowCreatetime" value="2017-05-04" id="salaryflowCreatetime"/><!-- 流程创建时间 -->
	             <input type="hidden" name="salaryflowCreator" value="王哈哈" id="salaryflowCreator"/><!-- 创建人 -->
	             <input type="hidden" name="salaryflowStatus" value="1" id="salaryflowStatus"/><!-- 状态 -->
				 <input type="date" name="salaryflowBegintime" id="salaryflowBegintime" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input" type="text">
			   </div>
	         </td>
	        </tr>
	        <tr>
	         <td>
	           <label class="layui-form-label">截止日期：</label>
	         </td>
	         <td>
	           <div class="layui-input-inline">
				<input type="date" name="salaryflowEndtime" id="salaryflowEndtime" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input" type="text">
			   </div>
	         </td>
	        </tr>
	        <tr>
	         <td>
	          <label class="layui-form-label">工资月份：</label>
	         </td>
	         <td>
	          <div class="layui-input-inline">
			     年度：<select name="salaryflowYear" id="salaryflowYear"> 
				  <option value="2000" >2000年</option>
				  <option value="2001" >2001年</option>
				  <option value="2002" >2002年</option>
				  <option value="2003" >2003年</option>
				  <option value="2004" >2004年</option>
				  <option value="2005" >2005年</option>
				  <option value="2006" >2006年</option>
				  <option value="2007" >2007年</option>
			      <option value="2008" >2008年</option>
				  <option value="2009" >2009年</option>
				  <option value="2010" >2010年</option>
				  <option value="2011" >2011年</option>
				  <option value="2012" >2012年</option>
				  <option value="2013" >2013年</option>
				  <option value="2014" >2014年</option>
			      <option value="2015" >2015年</option>
				  <option value="2016" >2016年</option>
				  <option value="2017" >2017年</option>
				  <option value="2018" selected="selected">2018年</option>
				  <option value="2019" >2019年</option>
				  <option value="2020" >2020年</option>
				  <option value="2021" >2021年</option>
				  <option value="2022" >2022年</option>
				  <option value="2023" >2023年</option>
				  <option value="2024" >2024年</option>
				  <option value="2025" >2025年</option>
				  <option value="2026" >2026年</option>
				  <option value="2027" >2027年</option>
				  <option value="2028" >2028年</option>
				  <option value="2029" >2029年</option>
				  <option value="2030" >2030年</option>
				  <option value="2031" >2031年</option>
				  <option value="2032" >2032年</option>
			      <option value="2033" >2033年</option>
				  <option value="2034" >2034年</option>
				  <option value="2035" >2035年</option>
				  <option value="2036" >2036年</option>
				  <option value="2037" >2037年</option>
				  <option value="2038" >2038年</option>
				  <option value="2039" >2039年</option>
				  <option value="2040" >2040年</option>
				  <option value="2041" >2041年</option>
				  <option value="2042" >2042年</option>
				  <option value="2043" >2043年</option>
				  <option value="2044" >2044年</option>
				  <option value="2045" >2045年</option>
				  <option value="2046" >2046年</option>
				  <option value="2047" >2047年</option>
				  <option value="2048" >2048年</option>
				  <option value="2049" >2049年</option>
				  <option value="2050" >2050年</option>
				  <option value="2051" >2051年</option>
				  <option value="2052" >2052年</option>
				  <option value="2053" >2053年</option>
				  <option value="2054" >2054年</option>
				  <option value="2055" >2055年</option>
				  <option value="2056" >2056年</option>
				  <option value="2057" >2057年</option>
				  <option value="2058" >2058年</option>
				  <option value="2059" >2059年</option>
				  <option value="2060" >2060年</option>
				  <option value="2061" >2061年</option>
				  <option value="2062" >2062年</option>
				  <option value="2063" >2063年</option>
				  <option value="2064" >2064年</option>
				  <option value="2065" >2065年</option>
				  <option value="2066" >2066年</option>
				  <option value="2067" >2067年</option>
				  <option value="2068" >2068年</option>
				  <option value="2069" >2069年</option>
				  <option value="2070" >2070年</option>
				  <option value="2071" >2071年</option>
				  <option value="2072" >2072年</option>
				  <option value="2073" >2073年</option>
				  <option value="2074" >2074年</option>
				  <option value="2075" >2075年</option>
				  <option value="2076" >2076年</option>
				  <option value="2077" >2077年</option>
				  <option value="2078" >2078年</option>
				  <option value="2079" >2079年</option>
				  <option value="2080" >2080年</option>
				  <option value="2081" >2081年</option>
				  <option value="2082" >2082年</option>
				  <option value="2083" >2083年</option>
				  <option value="2084" >2084年</option>
				  <option value="2085" >2085年</option>
			      <option value="2086" >2086年</option>
				  <option value="2087" >2087年</option>
				  <option value="2088" >2088年</option>
				  <option value="2089" >2089年</option>
				  <option value="2090" >2090年</option>
				  <option value="2091" >2091年</option>
				  <option value="2092" >2092年</option>
				  <option value="2093" >2093年</option>
				  <option value="2094" >2094年</option>
				  <option value="2095" >2095年</option>
				  <option value="2096" >2096年</option>
				  <option value="2097" >2097年</option>
				  <option value="2098" >2098年</option>
				  <option value="2099" >2099年</option>
			      <option value="2100" >2100年</option>	         	          
			 </select><br/>
			   月份：<select name="salaryflowMonth" id="salaryflowMonth">
				  <option value="01" >01月</option>
				  <option value="02" >02月</option>
				  <option value="03" >03月</option>
				  <option value="04" >04月</option>
				  <option value="05" >05月</option>
				  <option value="06" selected="selected">06月</option>
				  <option value="07" >07月</option>
				  <option value="08" >08月</option>
				  <option value="09" >09月</option>
				  <option value="10" >10月</option>
				  <option value="11" >11月</option>
			      <option value="12" >12月</option>
			  </select>
			</div>
	      </td>
	    </tr>
	    <tr>
	      <td nowrap class="TableData">备注：</td>
           <td class="TableData">
      	     <textarea name="salaryflowMark" cols="20" rows="2" class="BigInput" id="salaryflowMark">6月份工资</textarea>
	       </td>
	    </tr>
	    <!-- <tr>
		 <td nowrap class="TableData"> 提醒：</td>
		  <td class="TableData">
            <label class='sms-remind-label'><input type="checkbox" id="SMS_REMIND" checked>发送事务提醒消息</label> 
          </td>
        </tr> -->  				
	    </table>
		  <input type="button" value="新建" onclick="salaryflowInsert()"/>
		  <input type="button" value="返回" onclick="tool()"/>
	  </div>
    </form>		        
  </div>
          <!-- 工资流程管理 -->
          <div class="layui-tab-item layui-show">
          <!-- 分页查询 -->
               <div id="serch">
					<input type="text" id="ipt" placeholder="请输入内容" onkeyup="serch()"/>
			   </div>
			   <table class="layui-hide" id="myTab" lay-filter="myTab"></table>
			   <div id="fenye"></div>
          </div>
      </div>
 </div>
</body> 
 <script>
  /* 分页*/
	var table = layui.table; //定义全局变量  方便使用layui的表格
	var laypage = layui.laypage, layer = layui.layer; //定义全局变量  方便使用layui的分页条
	var form = layui.form;
	/*页面加载时查询数据  并且分页*/
	$(function() {
		fenye("",1,5,"系统管理员");  //调用layui表格
		tool();          // 使用分页
	});
	var num=0;
	/*layui表格    传入三个参数   
	keyWord 模糊查询关键字
	pagenum 当前页
	limit   每页显示的条数
	*/
	function fenye(keyWord,pagenum,limit,userName) {
		table.render({
			id : 'myTab', //table的id
			elem : '#myTab',   //同上
			//height : 700,  //表格的高度
			width:1300,
			url : 'salaryflow/findAll?pageNum=' + pagenum + '&limit='+limit+'&keyWord='+keyWord+'&userName='+userName+'',
			cols : [ [ 
			{field : 'salaryflow_id',title : '编号',sort : true,width:80}, 
			{field : 'salaryflow_createtime',title : '创建时间',sort : true},
			{field : 'salaryflow_creator',title : '创建人',sort : true}, 
			{field : 'salaryflow_begintime',title : '起始时间',sort : true,edit: 'text'}, 
			{field : 'salaryflow_endtime',title : '截止时间',sort : true,edit: 'text'},
			{field : 'salaryflow_year',title : '工资年份',sort : true,edit: 'text'}, 
			{field : 'salaryflow_month',title : '工资月份',sort : true,edit: 'text'},
			{field : 'salaryflow_status',title : '状态',sort : true,toolbar: '#lcstatus',},
			{field : 'salaryflow_mark',title : '备注',sort : true,edit: 'text'},
			{field : 'right',title:'操作', toolbar: '#barDemo'} 
                   ] ],
 			//分类显示中文名称(外键id显示成中文名称)
 			done : function(res, page, count) {
 				$("[data-field='salaryflow_status']").children().each(function() {
 					/* if ($(this).text() == '0') {
 						$(this).text("已终止")
 					} else if ($(this).text() == '1') {
 						$(this).text("执行中")
 					} */
 					//回调函数 在表格渲染完成后 执行 用num判断  让它只在页面加载时执行一次   点击上一页下一页不执行
 					if (num == 0) {
 						tool($("#ipt").val(), res.count); //调用tool()函数   启用分页条  并传总数据数  res.count 
 						num += 1;
 					}
 				})
             }
		});
		 //监听状态操作
        form.on('switch(switchstatas)', function(obj){
            setXcStatus(obj,this.value,obj.elem.checked);
        });
 		//监听行工具事件(编辑，删除按钮)
 		table.on('tool(myTab)', function(obj) {
 			var data = obj.data;
 			//console.log(obj)
 			if (obj.event == 'delete') {
 				layer.confirm('真的删除行吗？', function(index) {
 					obj.del();
 					layer.close(index);
 					$.ajax({
 						url : "salaryflow/delete",
 						data : {
 							'salaryflowId' : data.salaryflow_id
 						},
 						type : "post",
 						dataType : "json",
 						success : function(data) {
 							if (data > 0) {
 								layer.msg("删除成功！");
 							} else {
 								layer.msg("删除失败！");
 							}
 						}
 					})
 				});
 			} else if (obj.event === 'update') {
 				layer.msg(data.salaryflow_id);
 				layer.open({
 					type : 2,
 					title : "薪酬修改页面",
 					area : [ '380px', '480px' ],
 					offset : [ '0px', '300px' ],
 					content : "http://localhost:8080/oa/salaryflow/selectByPrimaryKey/" + data.salaryflow_id
 				});
 			}
 		})
 
 	}
 	/*渲染分页工具条
 	  同样传入两个参数   关键字   总数据
 	*/
 	function tool(keyWord, count) {
 		laypage.render({
 			elem : 'fenye', //分页条的作用域   页面中di'v的id
 			count : count, //总数据数
 			limit : 5, //每页显示的条数
 			layout : [ 'prev', 'page', 'next', 'limit', 'skip' ],
 			jump : function(obj, first) {
 				/*判断如果不是第一页执行里面的方法*/
 				if (!first) {
 					/*重新调用分页方法*/
 					fenye($("#ipt").val(), obj.curr, obj.limit);
 				}
 			}
 		});
 	}
 
 	//绑定input enter事件  在input输入完成   按下回车  调用
 	function serch() { //网页内按下回车触发
 		if (event.keyCode == 13) {
 			fenye($("#sel").val(), $("#ipt").val(), 1, 10);
 		}
 	}
 	function setXcStatus(obj,id,checked) {
	 	 var isJob=checked ? 0 : 1;
	   	 var userIsJob=checked ? "执行中":"已截止";
 		layer.confirm('您确定要修成'+userIsJob+'状态吗？', {
 			btn : [ '确认', '返回' ] //按钮
 		}, function() {
 			$.post("salaryflow/setXcStatus", {
 				"salaryflowId" : id,
 				"salaryflowStatus":isJob,
 			}, function(data) {
 					if (data == "ok") {
 						//回调弹框
 						layer.alert("操作成功！", function() {
 							layer.closeAll();
 							//加载load方法
 							load(obj);
 						});
 					} else {
 						layer.alert(data, function() {
 							layer.closeAll();
 							//加载load方法
 							load(obj); //自定义
 						});
 					}
 			});
 		}, function() {
 			layer.closeAll();
 			//加载load方法
 			load(obj);
 		});
 	}
 </script>
<script type="text/html" id="barDemo">
 <a class="layui-btn layui-btn-xs" lay-event="update">编辑</a>
 <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="delete">删除</a>
</script>
<!-- {{#  if(d.salaryflow_status==0){ }}
      <input type="checkbox" vlue="{{d.salaryflow_id}}" name="close" lay-skin="switch" lay-text="执行中|已截止" lay-filter="switchstatas">
{{#  } }}
{{#  if(d.salaryflow_status==1){ }}
      <input type="checkbox" checked="checked" value="{{d.salaryflow_id}}" name="open" lay-skin="switch" lay-filter="switchstatas" lay-text="执行中|已截止">
{{#  } }} -->
<script type="text/html" id="lcstatus">
{{#  if(!d.salaryflow_status){ }}
     <input type="checkbox"  value="{{d.salaryflow_id}}" lay-skin="switch" lay-text="执行中|已截止" lay-filter="switchstatas" checked="checked" />
{{#  } else { }}
     <input type="checkbox"  value="{{d.salaryflow_id}}" lay-skin="switch" lay-text="执行中|已截止" lay-filter="switchstatas"/>
{{#  } }}
</script>
</html>
<script type="text/javascript">
layui.use('element',function(){
    var $=layui.jquery,element=layui.element;//Tab的切换事件监听等，需要依赖element模块
    //触发事件
    var active={
        tabChange:function(){
           //切换到指定Tab项
           element.tabChange('demo','22');//切换到：新建工资流程  
        }
    };
});
/* 新建工资流程（工资流程的添加）*/
        function salaryflowInsert(){
            alert($("#form1").serialize())
            /* alert($("#salaryflowCreatetime").val())
            alert($("#salaryflowEndtime").val())
            alert($("#salaryflowStatus").val()) */
             $.ajax({
                type:'post',
                url:'salaryflow/insert',
                data:
               /* { 
               "salaryflowCreatetime":$("#salaryflowCreatetime").val(),
               "salaryflowCreator":$("#salaryflowCreator").val(),
               "salaryflowBegintime":$("#salaryflowBegintime").val(),
               "salaryflowEndtime":$("#salaryflowEndtime").val(),
               "salaryflowYear":$("#salaryflowYear").val(),
               "salaryflowMonth":$("#salaryflowMonth").val(),
               "salaryflowStatus":$("#salaryflowStatus").val(),
               "salaryflowMark":$("#salaryflowMark").val()
               }, */
                $("#form1").serialize(),//表单序列化
                dataType:"text",//后台返回的数据类型
                success:function(data){
                    alert(data);
                    refresh();
                },
                error:function(data){
                    alert(data);
                    refresh();
                }
             })
      }
    /* 页面刷新调用查询方法 */
   $(function(){
    tool();
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

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
    
    <title>薪酬项目定义及保险系数设置</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="page/resources/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="page/resources/bootstrap/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="page/resources/layui/css/layui.css" media="all">
	<script type="text/javascript" src="page/resources/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="page/resources/layui/layui.js"></script>
	<script type="text/javascript" src="page/resources/bootstrap/js/bootstrap.min.js"></script>
   </head>
  
 <body>
 <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
      <ul class="layui-tab-title">
          <li class="layui-this">薪酬项目定义</li>
          <li>保险系数设置</li>
      </ul>
      <div class="layui-tab-content" style="height:100px;">
          <div class="layui-tab-item layui-show">
               <!-- 薪酬项目定义-->
		       <!-- 添加-->
                <h3 align="left">添加薪酬项目信息</h3>
                <form method="post" align="center" id="form1">
			          <div class="layui-form-item">
			               <div class="layui-inline">
	               			 <label class="layui-form-label">薪酬项目编号：</label> 
	               			 <div class="layui-input-inline">
	               			      <input name="itemId" autocomplete="off" id="itemId" class="layui-input" type="text"/><br/>
	               			 </div>
	               		   </div>	 
	               			 <div class="layui-inline">
	               			 <label class="layui-form-label">薪酬项目名称:</label> 
	               			 <div class="layui-input-inline">
	               			      <input name="itemName" autocomplete="off" id="itemName" class="layui-input" type="text"/><br/>
	               			 </div>
	               		   </div>
	               			<div class="layui-inline">
	               			 <label class="layui-form-label"> 项目类型:</label> 
	               			 <div class="layui-input-inline">
	               			      <select name="itemtype.itemtypeId" lay-verify="required" lay-search="" id="qq">
	               			      </select>
	               			 </div>
	               		   </div>
	               			<button class="layui-btn" onclick="salitemInsert()">添加</button>
	               			<button class="layui-btn" onclick="salitemUpdate()">修改</button>
	                   </div>
		        </form>
		        <!-- 薪酬项目定义查询-->
                 <!-- 查询-->
                <h3 align="left">薪酬项目定义查询</h3>
                <div class="panel-body">
			           <table class="table table-hover">
					    <thead>
						  <tr>
							<th>编号:</th>
					        <th>薪酬项目名称：</th>
					        <th>项目类型：</th>
					        <th>操作</th>
						</tr>
					    </thead>
					        <tbody id="si"></tbody>
			           </table>
                 </div>
          <!-- 保险系数设置查询 -->
          <!-- 查询 -->
      </div>
          <div class="layui-tab-item">
                <h3 align="left">保险系数设置查询</h3>
               <form action="">
               <table align="center">
			      <thead> 
			         <tr>
			         <th>保险系数名称:</th>
			         <th>个人支付百分比:</th>
			         <th>单位支付百分比:</th>
			         </tr>
			       </thead>
		           <tbody id="sft"></tbody>
		        </table>
		        <button class="layui-btn" onclick="sddds()">保存</button>
		        </form>
          </div>
          </div>
</div>

</body>
</html>
<script type="text/javascript">
layui.use('element',function(){
    var $=layui.jquery,element=layui.element;//Tab的切换事件监听等，需要依赖element模块
    //触发事件
    var active={
        tabChange:function(){
           //切换到指定Tab项
           element.tabChange('demo','22');//切换到：保险系数设置    
        }
    };
});
  /* 薪酬项目定义查询 */
        function salitemFind(){
             $.ajax({
                url:"salitem/findAll",
                type:'post',
                dataType:'json',
                success:function(data){
                  $("#si").html("");//清空内容数据
                  var ary=data;
                  for(var i=0;i<ary.length;i++){
                     var obj=ary[i];//获取当前对象
                     var tr="<tr>";
                      tr+="<td>"+obj.Item_id+"</td>"; 
                     tr+="<td>"+obj.Item_name+"</td>";
                     tr+="<td>"+obj.Itemtype_name+"</td>";
                     tr+="<td><input type='button' value='编辑' id="+obj.Item_id+" class='get'/></td>";
                     tr+="<td><input type='button' value='删除' id="+obj.Item_id+" class='delete'/></td>";
                     tr+="</tr>";
                     $("#si").append(tr);//追加行
                  }
                }
             })
        }
       
       /* 薪酬项目编辑前的查询 */
    $("#si").on("click",".get",function(){
         var id=this.id;
         alert(id);
         $.ajax({
           url:"salitem/selectByPrimaryKey",
           type:"post",
           dataType:"json",
           data:{
                "itemId":id,
           },
           success:function(data){
              $("#itemId").html();
              $("#itemName").html();
              var ary=data;
              alert(ary.itemId);
              $("#itemId").val(ary.itemId);
              $("#itemName").val(ary.itemName);
           }
         })
    })
        /* 薪酬项目定义表编辑 */
        function salitemUpdate(){
        $.ajax({
           url:"salitem/update",
           type:'post',
           async:true,
           data:$("#form1").serialize()
          /*  {
           "itemId":$("#itemId").val(),
           "itemName":$("#itemName").val(),
           "itemtype.itemtypeId":$("#qq").val(),
           } */,
           dataType:'text',
           success:function(data){
              alert(data);
              salitemFind();
           },
           error:function(data){
              alert(data);
              refresh();
           }
        })
    }
        /* 薪酬项目定义表删除 */
         $("#si").on("click",".delete",function(){
         var itemId=this.id;
         if(confirm("确定要删除吗？？？")){
          $.ajax({
          url:"salitem/delete",
          type:'post',
          data:{
               "itemId":itemId,
          },
          dataType:"text",
          success:function(data){
             alert(data)
             refresh();
          }
        })
     }else{alert("你取消了删除！！！")}
   })
       /* 项目类型查询 */
       function itemtypeFind(){
          $.ajax({
             url:"itemtype/findAll",
             dataType:'json',
             type:'post',
             success:function(data){
                $("#qq").html("");//清空内容数据
                var ary=data;
                for(var i=0;i<ary.length;i++){
                  var obj=ary[i];//获取当前对象
                  $("#qq").append("<option class='form-control' value='"+obj.Itemtype_id+"'>"+obj.Itemtype_name+"</option>");//追加行
                 
                 }
                
             }
          })
       }
        /* 薪酬项目定义表的添加 */
        function salitemInsert(){
             $.ajax({
                url:"salitem/insert",
                type:'post',
                async:true,//异步，true是异步开启
                data:$("#form1").serialize(),//表单序列化
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
       /* 保险系数查询*/
        function safefactorFind(){
             $.ajax({
                url:"safefactor/findAll",
                type:'post',
                dataType:'json',
                success:function(data){
                  $("#sft").html("");//清空内容数据
                  var ary=data;
                  for(var i=0;i<ary.length;i++){
                     var obj=ary[i];//获取当前对象
                     var tr="<tr>";
                     tr+="<td><input type='text' value='"+obj.safefactor_name+"'/><br/>";
                     tr+="<td><input type='text' value='"+obj.grpayment+"'/>%<br/>";
                     tr+="<td><input type='text' value='"+obj.dwpayment+"'/>%<br/>";
                     tr+="</tr>";
                     $("#sft").append(tr);//追加行
                  }
                }
             })
        }
    /* 页面刷新调用查询方法 */
   $(function(){
     itemtypeFind();//项目类型查询 
     salitemFind();//薪酬项目定义查询
     safefactorFind();//保险系数表查询
     
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
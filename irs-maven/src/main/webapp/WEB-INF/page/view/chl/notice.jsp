<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'transform.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css"
	href="page/resources/layui/css/layui.css" media="all">
<link rel="stylesheet" type="text/css"
	href="page/resources/bootstrap/css/bootstrap.min.css">

<script type="text/javascript" src="page/resources/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="page/resources/bootstrap/js/bootstrap.min.js"></script>
	
<script type="text/javascript" src="page/resources/layui/layui.all.js"></script>
    <style>
        #title{
            width:100%;
            height: 45%;
            background-color:	#EDEDED;
        }
        #title span{
            font-size: 16px;
        }
        .cs{
            display: none;
        }
    </style>
</head>
<body>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    选择您要发送的部门
                </h4>
            </div>
            <div class="modal-body">
                <!-- 选择部门 -->
                <input type="text" style="width:192px;height:35px" id="keyWord"><button style="height:35px;position:relative;top:-5px;"  class="layui-btn" id="getUserByKey">查询</button>
                <table class="layui-hide" id="test"></table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" id="sure">
                    确认选择
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>个人事务>>>>>公告</legend>
    </fieldset>
</fieldset>
<div id="title">
    <br>
    <span>发布人：</span><input value="${userName}" style="height: 30px;width: 345px;background-color:white" readonly="readonly"><input value="${userID}" style="display: none" id="userId"><br><br>
    <span>部 &nbsp;&nbsp;&nbsp;门：</span><input style="height: 30px;width: 300px;background-color:white " readonly="readonly" id="showDept"><button class="layui-btn" style="height: 30px" data-toggle="modal" data-target="#myModal" onclick="getUsers()">+</button><input id="deptTwo" style="display: none">
    <br><br>
    <span>标 &nbsp;&nbsp;&nbsp;题：</span><input style="height: 30px;width: 345px;" id="theme"><br><br>
    <span>公告类型：</span><select id="sel"></select><br><br>
</div>
<textarea class="layui-textarea" id="LAY_demo1" style="display: none">
  把编辑器的初始内容放在这textarea即可
</textarea>
<div class="site-demo-button" style="margin-top: 20px;">
    <button class="layui-btn site-demo-layedit" data-type="content">发布</button>
    <button class="layui-btn site-demo-layedit" data-type="text">获取编辑器纯文本内容</button>
    <button class="layui-btn site-demo-layedit" data-type="selection">获取编辑器选中内容</button>
</div>
<script src="layui/layui.all.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
   /* 查询所有部门*/
   //查询所有用户
   var list=[];
   function getUsers(keyWord){
       var table = layui.table;
       var tableins=table.render({
           id: 'test'
           ,elem: '#test'
           ,url: 'address/getAllDept'
           ,cols: [[ //表头
               {checkbox: true, fixed: true}
               ,{field: 'dept_id', title: '部门编号', width:210, sort: true, fixed: 'left'}
               ,{field: 'dept_name', width:240,title: '部门名称', }
           ]]
       });
       $("#sure").click(function(){
           var checkStatus = table.checkStatus('test'); //test即为基础参数id对应的值
           var length=checkStatus.data.length
           var depts="";
           for(var i=0;i<length;i++){
                 depts+=checkStatus.data[i].dept_name+","
                   var jsonData="{"
                   jsonData+="\"deptno\":\""+checkStatus.data[i].dept_id+"\",";
                  // jsonData+="\"dname\":\""+checkStatus.data[i].dept_name+"\",";
                   jsonData=jsonData.substring(0,jsonData.length-1)+"}"
                   list.push(JSON.parse(jsonData))
           }
           $("#showDept").val(depts)
           $("#myModal").css("display","none")
           $(".modal-backdrop").css("display","none")
       })
//    在模糊检索员工时 重载表格
       $("#getUserByKey").click(function(){
           tableins.reload({
               url: 'address/getAllDept'
               ,where: { //设定异步数据接口的额外参数，任意设
                   "keyWord":$("#keyWord").val()
               }
           });
       })
   }
   $(function(){
       $.ajax({
           url:"address/getAllNotifyType",
           success:function (data) {
           alert(data)
               var sel=""
               for(var i=0;i<data.length;i++){
                   sel+="<option value='"+data[i].type_id+"'>"+data[i].type+"</option>"
               }
               $("#sel").append(sel);
           }
       })
       $.ajax({
           url:"address/login",
           success:function (data) {
               alert(data)
           }
       })
   })
    /*富文本框*/
    layui.use('layedit', function(){
        var layedit = layui.layedit
            ,$ = layui.jquery;

        //构建一个默认的编辑器
        var index = layedit.build('LAY_demo1');

        //编辑器外部操作
        var active = {
            content: function(){

                var userId=$("#userId").val();
                var theme=$("#theme").val();
                var conent=layedit.getContent(index);
                var type_id=$("#sel").val();
                if(theme==''){
                    alert("主题不能为空！")
                    return false;
                }else if(list==""){
                    alert("部门至少有一位！")
                    return false;
                }else if(conent==""){
                    alert("邮件内容不能为空！")
                    return false;
                }else{
                    alert(list)
                   $.ajax({
                        url:"address/sendNotce",
                        data:{
                            list:list,
                            userId:userId,
                            theme:theme,
                            content:conent,
                            type_id:type_id
                        },
                        success:function (data) {
                            alert(data)
                        }
                    })
                }
            }
            ,text: function(){
                alert(layedit.getText(index)); //获取编辑器纯文本内容
            }
            ,selection: function(){
                alert(layedit.getSelection(index));
            }
        };

        $('.site-demo-layedit').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });

        //自定义工具栏
        layedit.build('LAY_demo2', {
            tool: ['face', 'link', 'unlink', '|', 'left', 'center', 'right']
            ,height: 100
        })
    });
</script>

</body>
</html>
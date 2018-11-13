<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'shijian.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="resources/layui/css/layui.css" media="all">
<script src="resources/jquery-1.11.3.min.js"></script>
<script src="resources/jquery.form.js"></script>
<script src="resources/jqueryExt.js"></script>
<script src="resources/layui/layui.js"></script>
<script src="resources/layui/layui.all.js" charset="utf-8"></script>
     <link href="<c:url value="/resources/layui/css/layui.css" />" rel="stylesheet">
     <link href="<c:url value="/demo/common/bootstrap/css/bootstrap.min.css" />" media="all" rel="stylesheet">
    <script src="<c:url value="/resources/jquery-1.11.3.min.js" />" charset="utf-8"></script>
    <script type="text/javascript" src="<c:url value="/demo/common/bootstrap/js/bootstrap.min.js" />" ></script>

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
                    选择审批人
                </h4>
            </div>
            <div class="modal-body">
                <!-- 选择负责人 -->
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
<!-- 模态框（Modal2） -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    选择被审批的部门
                </h4>
            </div>
            <div class="modal-body">
                <!-- 选择负责人 -->
                <table class="layui-hide" id="test1"></table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" id="sure1">
                    确认选择
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!--内容主题-->
<div id="title">
<span>被审批部门：</span><input style="height: 30px;width: 300px;background-color:white" readonly="readonly" id="showUser1"><input style="height: 30px;width: 300px;background-color:white " readonly="readonly" id="showUser2"><button class="layui-btn" style="height: 30px" data-toggle="modal" data-target="#myModal1" onclick="getRen()">+</button><input id="userTwo" style="display: none">
    <br>
    <span>审批人：</span><input style="height: 30px;width: 300px;background-color:white" readonly="readonly" id="showUser"><input style="height: 30px;width: 300px;background-color:white " readonly="readonly" id="showUser3"><button class="layui-btn" style="height: 30px" data-toggle="modal" data-target="#myModal" onclick="getUsers()">+</button><input id="userTwo" style="display: none">
    <br><br>
</div>
<div class="site-demo-button" style="margin-top: 20px;">
    <button class="layui-btn site-demo-layedit" data-type="content" onclick="ont()">确认发送</button>
</div>
<script>
	function ont(){	
		var department=$("#showUser2").val();
		var staff=$("#showUser3").val();
		alert(department+"---"+staff);
		  $.ajax({
                        url:"exam/saveEx",
                        type:'post',
                        data:{
						department:department,
						staff:staff
                        },
                        success:function (data) {
                            if(data>0){
                            alert("添加成功！");
                            }else{
                            	alert("添加失败！");
                            }
                        }
              })
           }
</script>
<script>
    //查询所有用户
    function getRen(){
        var table = layui.table;
        var tableins=table.render({
            id: 'test1'
            ,elem: '#test1'
            ,url: 'schedule/tbDept'
            ,page: true
            ,cols: [[ //表头
                {checkbox: true, fixed: true}
                ,{field: 'dept_id', title: '部门编号', width:100, sort: true, fixed: 'left'}
                ,{field: 'dept_name', width:110,title: '部门名称', }
            ]]
        });
        $("#sure1").click(function(){
            var checkStatus = table.checkStatus('test1'); //test即为基础参数id对应的值
            var length=checkStatus.data.length;
            var users="";
            var usersname="";
            for(var i=0;i<length;i++){
                users+=checkStatus.data[i].dept_id+","
                usersname+=checkStatus.data[i].dept_name+","
               }
            $("#showUser1").val(usersname)
            $("#showUser2").val(users)
            $("#myModal1").css("display","none")
            $(".modal-backdrop").css("display","none")

        })  
    }

         $('.site-demo-layedit').on('click', function () {
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });

</script>

<script>
    //查询所有用户
    function getUsers(){
        var table = layui.table;
        var tableins=table.render({
            id: 'test'
            ,elem: '#test'
            ,url: 'exam/tbuser'
            ,page: true
            ,cols: [[ //表头
                {checkbox: true, fixed: true}
                ,{field: 'user_id', title: '人员编号', width:100, sort: true, fixed: 'left'}
                ,{field: 'user_name', width:110,title: '用户名称', }
            ]]
        });
        $("#sure").click(function(){
            var checkStatus = table.checkStatus('test'); //test即为基础参数id对应的值
            var length=checkStatus.data.length;
            var users="";
            var usersname="";
            for(var i=0;i<length;i++){
                users+=checkStatus.data[i].user_id+","
                usersname+=checkStatus.data[i].user_name+","
               }
            $("#showUser").val(usersname)
            $("#showUser3").val(users)
            $("#myModal").css("display","none")
            $(".modal-backdrop").css("display","none")

        })  
    }

          $('.site-demo-layedit').on('click', function () {
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });
   </script>
</body>
</html>


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
    <head>
        <title>Title</title>
    </head>
<body>
<input value="<shiro:principal property="id"/>" id="userId" style="display: none">
<div id="serch">
    <input type="text" id="ipt" placeholder="请输入内容" onkeyup="serch()">
</div>
<table class="layui-hide" id="myTab"></table>
<div id="fenye"></div>

                  <!-- 模态框（Modal）修改公告-->
				<div class="modal fade" id="myModalFour" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">修改公告</h4>
							</div>
							<form method="post" id="bbb">
							发送范围：<select name="map['dept_id']" style="width:200px;height:40px" id="fbfw"></select><br><br>
							公告类型：<select name="map['type_id']" style="width:200px;height:40px" id="gglx"></select><br><br>
							标题&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;：<input type="text" name="map['subject']"style="width:200px;height:40px" id="bt"><br><br>
							内容&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;：<input type="text" name="map['content']"style="width:400px;height:150px" id="nr"><br><br>
															<br>
							</form>
					 <table class="layui-hide" id="test"></table>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">关闭</button>
				 <button type="button" class="btn btn-primary" id="sureFour">
                                                                  确认更改
                </button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
					</div>
    
         
<script type="text/html" id="barDemo">
    <button onclick="cli(this)" class="layui-btn" data-toggle="modal" data-target="#myModalFour">修改</button>
    <button onclick="shi(this)" class="layui-btn" data-toggle="modal" data-target="#myModalFour1">失效</button>
    <button onclick="sheng(this)" class="layui-btn" data-toggle="modal" data-target="#myModalFour2">生效</button>
</script>
</body>
</html>
<script>
    var table = layui.table; //定义全局变量  方便使用layui的表格
    var laypage = layui.laypage, layer = layui.layer; //定义全局变量  方便使用layui的分页条
    $(function () {
        fenye("", 1, 15);  //调用layui表格
        tool();
        //在页面刷新时根据当前登陆人的id去查寻他所在的部门id
    })
    /*页面加载时查询数据  并且分页*/
    var num = 0;
    function fenye(keyWord, pagenum, limit, deptId) {
        table.render({
            id: 'myTab', //table的id
            elem: '#myTab',   //同上
            height: 610,  //表格的高度
            url: 'address/getAllNotify',
            type:'post',
            where: {
                pageNum: pagenum,
                limit: limit,
                keyWord: keyWord,
            },
            cols: [[
                {field: 'notify_id', title: '公告编码', sort: true,width:110},
                {field: 'dept_name', title: '发送范围', sort: true,width:110},
                {field: 'username', title: '发布人', sort: true,width:100},
                {field: 'type', title: '公告类型', sort: true,width:110},
                {field: 'subject', title: '标题', sort: true,width:110},
                {field: 'send_time', title: '发布时间', sort: true,width:170},
                {field: 'no_status', title: '公告状态', sort: true,width:150},
                
                {fixed: 'right', title: '操作', toolbar: '#barDemo', width: 260}
            ]],
            //回调函数 在表格渲染完成后 执行 用num判断  让它只在页面加载时执行一次   点击上一页下一页不执行
            done: function (res) {
                if (num == 0) {
                    tool($("#ipt").val(), res.count);  //调用tool()函数   启用分页条  并传总数据数  res.count
                    num += 1;
                }
            }
        });

    }
    
     function cli(obj){
         var notify_id = $(obj).parent().parent().prev().prev().prev().prev().prev().prev().prev().children().html();
         $.ajax({
            url: "address/selectnotifyById",
            type:'post',
            data: {
                notify_id: notify_id
            },
/*             dataType:'json',
 */            success: function (data) {
            alert(notify_id)
          $("#fbfw option[value='"+data.dept_id+"']").attr("selected","selected");
          $("#gglx option[value='"+data.type_id+"']").attr("selected","selected");
            
            $("#fbfw").val(data.dept_id);
            $("#gglx").val(data.type_id);
            $("#bt").val(data.subject);
            $("#nr").val(data.content);
                /*  window.location.reload()   */ }
               })
                $.ajax({
                url: "address/getAllNotifyType",
                type:'post',
                 success: function (data) {
                  $("#gglx").html("")
                  var sel = ""
                    for (var i = 0; i < data.length; i++) {
                     sel += "<option value='" + data[i].type_id + "'>" + data[i].type + "</option>";
                    
                    }
                    $("#gglx").append(sel)
                    }
                  
               })
            
           $.ajax({
                url: "address/getAllDeptTwo",
                type:'post',
                data:{
                keyWord:""
                },
                 success: function (data) {
                 alert(data)
                  $("#fbfw").html("")
                  var sel = ""
                    for (var i = 0; i < data.length; i++) {
                     sel += "<option value='" + data[i].dept_id + "'>" + data[i].dept_name + "</option>";
                    
                    }
                    $("#fbfw").append(sel)
                    
                  }
               })  
           $("#sureFour").click(function () {
        alert($("#bbb").serialize())
            $.ajax({
                url: "address/updatenotify",
                type:'post',
                data: $("#bbb").serialize(),
                dataType:'text',
                success: function (data) {
                    
                    window.location.reload()
                }
            })
        })     
         }
        
    function shi(obj){
      var notify_id = $(obj).parent().parent().prev().prev().prev().prev().prev().prev().prev().children().html();
     $.ajax({
     url: "address/updatestatus",
            type:'post',
            data: {
            notify_id:notify_id,
            no_status:"失效"
            },
                success:function(data){
                    window.location.reload()
    }
    
    })
    }
    
   function sheng(obj){
      var notify_id = $(obj).parent().parent().prev().prev().prev().prev().prev().prev().prev().children().html();
     $.ajax({
     url: "address/updatestatus",
            type:'post',
            data: {
            notify_id:notify_id,
            no_status:"生效"
            },
                success:function(data){
                    window.location.reload()
    }
    
    })
    }  

    /*渲染分页工具条
      同样传入两个参数   关键字   总数据
    */
    function tool(keyWord, count) {
        laypage.render({
            elem: 'fenye',//分页条的作用域   页面中di'v的id
            count: count,  //总数据数
            limit: 15,      //每页显示的条数
            layout: ['prev', 'page', 'next', 'limit', 'skip'],
            jump: function (obj, first) {
                /*判断如果不是第一页执行里面的方法*/
                if (!first) {
                    /*重新调用分页方法*/
                    fenye($("#ipt").val(), obj.curr, obj.limit);
                }
            }
        });
    }

    //绑定input enter事件  在input输入完成   按下回车  调用
    function serch() {                //网页内按下回车触发
        if (event.keyCode == 13) {
            alert(deptid)
            fenye($("#ipt").val(), 1, 10);
            // $('.layui-table').children().children().children('th').eq(1).css("display","none");
        }
    }
</script>
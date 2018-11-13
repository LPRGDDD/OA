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
<script type="text/javascript" src="page/resources/layui/layui.js"></script>
<script type="text/javascript" src="page/resources/layui/layui.all.js"></script>
<style>
#title {
	width: 100%;
	height: 40%;
	background-color: #EDEDED;
}

#title span {
	font-size: 16px;
}

.cs {
	display: none;
}
</style>
</head>

<body>
		<div class="layui-tab">
			<ul class="layui-tab-title">
				<li class="layui-this">写邮件</li>
				<li>收件箱</li>
				<li>草稿箱</li>
				<li>已发送</li>
				<li>垃圾箱</li>
			</ul>
		<div class="layui-tab-content">
			<div class="layui-tab-item ">
					<!-- 模态框（Modal） -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">选择您要发送的联系人</h4>
								</div>
								<div class="modal-body">
									<!-- 选择负责人 -->
									<input type="text" style="width:192px;height:35px" id="keyWord">
									<button style="height:35px;position:relative;top:-5px;"
										class="layui-btn" id="getUserByKey">查询</button>
									<table class="layui-hide" id="test"></table>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">关闭</button>
									<button type="button" class="btn btn-primary" id="sure"
										data-dismiss="modal">确认选择</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal -->
					</div>
					<!--内容主题-->

					<div id="title">
						<!--     <button class="layui-btn" style="position: relative;left: 500px;" onclick="addCs()">添加抄送</button><button class="layui-btn layui-btn-danger" style="position: relative;left: 550px;" onclick="delCs()">删除抄送</button>
 -->
						<br> <span>发件人：</span><input value="<shiro:principal property="username"/>"
							style="height: 30px;width: 235px;background-color:white"
							readonly="readonly"><input value="<shiro:principal property="id"/>"
							style="display: none" id="userId"><br>
						<br> <span>收件人：</span><input
							style="height: 30px;width: 300px;background-color:white "
							readonly="readonly" id="showUser">
						<button class="layui-btn" style="height: 30px" data-toggle="modal"
							data-target="#myModal" onclick="getUsers()">+</button>
						<input id="userTwo" style="display: none"> <br>
						<br> <span>主 &nbsp;&nbsp;&nbsp;题：</span><input
							style="height: 30px;width: 345px;" id="theme"><br>
						<br>
						<!--     <span class="cs">抄送人：</span><input class="cs" style="height: 30px;width: 345px;background-color:white" readonly="readonly">
 -->
					</div>
					<textarea class="layui-textarea" id="LAY_demo1"
						style="display: none">
                     </textarea>
					<div class="site-demo-button" style="margin-top: 10px;">
						<button class="layui-btn site-demo-layedit" data-type="content">确认发送</button>
						<button class="layui-btn site-demo-layedit" data-type="text">保存到草稿箱</button>
					</div>
					<div style="margin-bottom: 20px; width: 500px;">
						<textarea class="layui-textarea" id="LAY_demo2"
							style="display: none"></textarea>
					</div>
			</div>
			<div class="layui-tab-item">
					<input value="1" style="display: none" id="userId">
					<%-- ${user_id} --%>
					<fieldset class="layui-elem-field layui-field-title"
						style="margin-top: 50px;">
						<legend>电子邮件>>>>>收件箱</legend>
					</fieldset>
					<!-- 表格数据 -->
					<div id="serch">
						<input type="text" id="ipt" placeholder="请输入内容" onkeyup="serch()">
					</div>
					<%--<div id="dateBox">
				    <button class="layui-btn" id="addButton" data-toggle="modal" data-target="#myModal">+ 添加仓库</button>
					</div>--%>
					<!-- 隐藏 -->
					<div id="p">
						<table class="layui-hide" id="myTab"></table>
					</div>
					<div id="fenye"></div>
				
				<!-- 模态框（Modal）收件箱查询详情 -->
				<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">查看详情</h4>
							</div>
							<div class="modal-body">
								<!-- 选择负责人 -->
								<!-- 收件箱查看详情 -->
								发件人：&nbsp; <input type="text" readonly="readonly"
									style="width:192px;height:35px" id="username"></br></br>
								 主题：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" readonly="readonly"
									style="width:192px;height:35px" id="subject"></br>
								</br> 发送时间： <input type="text" readonly="readonly"
									style="width:192px;height:35px" id="sendtime"></br>
								</br> 内容： <input type="text" readonly="readonly"
									style="width:400px;height:150px" id="content"></br>
								</br>

								<table class="layui-hide" id="test"></table>
								<!-- <th>消息已读</th> -->
								<!-- <th><select name="issue" id="issue1">
										<option selected="selected">请选择</option>
										<option value="是">是</option>
										<option value="否">否</option>
										</select></th> -->
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">关闭</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>
			</div>
			<div class="layui-tab-item">
			<!-- 草稿箱 -->
			<!-- <input value="1" style="display: none" id="userId"> -->
			<%-- ${user_id} --%>
			<fieldset class="layui-elem-field layui-field-title"
				style="margin-top: 50px;">
				<legend>电子邮件>>>>>草稿箱</legend>
			</fieldset>
			<!-- 表格数据 -->
			<div id="serch">
				<input type="text" id="ipt" placeholder="请输入内容" onkeyup="serch()">
			</div>
			<%--<div id="dateBox">
					    <button class="layui-btn" id="addButton" data-toggle="modal" data-target="#myModal">+ 添加仓库</button>
					</div>--%>
			<table class="layui-hide" id="myTab2"></table>
			<div id="fenye2"></div>
			<!-- 模态框（Modal）草稿箱查询详情 -->
			<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">编辑邮件</h4>
						</div>
						<div class="modal-body">
							<!-- 选择负责人 -->
							<form id="addre" method="post">
								收件人： <input type="text" style="width:192px;height:35px"
									id="user_id"></br> </br> 主题： <input type="text"
									style="width:192px;height:35px" id="subject"></br> </br> 内容： <input
									type="text" style="width:400px;height:150px" id="content"></br>
								</br>
							</form>
							<table class="layui-hide" id="test"></table>
						</div>
						<div class="modal-footer">
		
							<button type="button" class="btn btn-primary" id="sure"
								data-dismiss="modal">修改</button>
		
						</div>
					</div>
					<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>
			</div>
			<div class="layui-tab-item">
				
			</div>
			<div class="layui-tab-item">5</div>
	</div>
</div>
<script type="text/html" id="barDemo1">
   		 <button onclick="cli2(this)"  class="layui-btn" data-toggle="modal" data-target="#myModal2">编辑邮件</button>
   		 <button class="layui-btn layui-btn-danger"  onclick="del2(this)" >删除到垃圾箱</button>
   		 <button class="layui-btn layui-btn-danger"  onclick="add(this)" >立即发送</button>
</script>
<script type="text/html" id="barDemo">
    	<button onclick="cli(this)"  class="layui-btn" data-toggle="modal" data-target="#myModal1" id="hide">查阅详情</button>
    	<button class="layui-btn layui-btn-danger"  onclick="del(this)" >删除邮件</button>
</script>
<script>
		$(function() {
			$.ajax({
				url : "mail/login",
				type : "post",
				success : function(data) {}
			})
		})
	
		//查询所有用户
		var list = [];
		function getUsers(keyWord) {
			var table = layui.table;
			var tableins = table.render({
				id : 'test',
				elem : '#test',
				url : 'mail/getAllUsers',
				cols : [ [ //表头
					{
						checkbox : true,
						fixed : true
					}
					, {
						field : 'id',
						title : '员工编号',
						width : 110,
						sort : true,
						fixed : 'left'
					}
					, {
						field : 'fullname',
						width : 120,
						title : '员工姓名',
					}
					, {
						field : 'dept_id',
						width : 100,
						title : '部门编号',
					}
					, {
						field : 'dept_name',
						width : 120,
						title : '所在部门',
					}
				] ]
			});
	
			$("#sure").click(function() {
				var checkStatus = table.checkStatus('test'); //test即为基础参数id对应的值
				var length = checkStatus.data.length
				var users = "";
				for (var i = 0; i < length; i++) {
					if (checkStatus.data[i].user_id == $("#userId").val()) {
						alert("您不能选择自己！")
						return false;
					} else {
						users += checkStatus.data[i].fullname + ","
						var jsonData = "{"
						jsonData += "\"to_id2\":\"" + checkStatus.data[i].id + "\",";
						jsonData += "\"dept_id\":\"" + checkStatus.data[i].dept_id + "\",";
						jsonData = jsonData.substring(0, jsonData.length - 1) + "}"
						list.push(JSON.parse(jsonData))
					}
				}
				$("#showUser").val(users)
				//$("#myModal").css("display","none")
				// $(".modal-backdrop").css("display","none")
				$('#myModal').modal('hide')
	
			})
			//    在模糊检索员工时 重载表格
			$("#getUserByKey").click(function() {
				tableins.reload({
					url : 'mail/getAllUsers',
					where : { //设定异步数据接口的额外参数，任意设
						"keyWord" : $("#keyWord").val()
					}
				});
			})
		}
	
		var layedit = layui.layedit,
			$ = layui.jquery;
		//构建一个默认的编辑器
		var index = layedit.build('LAY_demo1');
		//编辑器外部操作
		var active = {
			content : function() {
				var user_id = $("#userId").val();
				var theme = $("#theme").val();
				var conent = layedit.getContent(index);
				alert(user_id)
				alert(list)
				if (theme == '') {
					alert("主题不能为空！")
					return false;
				} else if (list == "") {
					alert("收件人至少有一位！")
					return false;
				} else if (conent == "") {
					alert("邮件内容不能为空！")
					return false;
				} else {
					$.ajax({
						url : "mail/sendEmail",
						type : 'post',
						data : {
							list : list,
							user_id : user_id,
							theme : theme,
							content : conent
						},
						dataType : 'text',
						success : function(data) {
						alert(data)
							if (data == "success") {
								$("#showUser").val("")
								$("#theme").val("")
								window.location.reload();
							}
						}
					})
				}
	
			}, /*添加草稿箱  */
			text : function() {
				var user_id = $("#userId").val();
				var theme = $("#theme").val();
				var conent = layedit.getContent(index);
				alert(user_id)
				alert(list)
				if (theme == '') {
					alert("主题不能为空！")
					return false;
				} else if (list == "") {
					alert("收件人至少有一位！")
					return false;
				} else if (conent == "") {
					alert("邮件内容不能为空！")
					return false;
				} else {
					$.ajax({
						url : "mail/saveMail",
						type : 'post',
						data : {
							list : list,
							user_id : user_id,
							theme : theme,
							content : conent
						},
						dataType : 'text',
						success : function(data) {
						alert(data)
							if (data == "success") {
								$("#showUser").val("")
								$("#theme").val("")
								window.location.reload();
							}
						}
					})
				}
			},
			selection : function() {
				alert(layedit.getSelection(index));
			}
		};
		$('.site-demo-layedit').on('click', function() {
			var type = $(this).data('type');
			active[type] ? active[type].call(this) : '';
		});
	
		/*  //添加抄送
		 function addCs() {
		     $(".cs").css("display","inline")
		     $("#title").css("height","50%")
		 }
		 //删除抄送
		 function delCs() {
		     $(".cs").css("display","none")
		     $("#title").css("height","40%")
		 } */
		/**
	 * 
	 * 获取当前时间
	 */
		function p(s) {
			return s < 10 ? '0' + s : s;
		}
	
		var myDate = new Date();
		//获取当前年
		var year = myDate.getFullYear();
		//获取当前月
		var month = myDate.getMonth() + 1;
		//获取当前日
		var date = myDate.getDate();
		var h = myDate.getHours(); //获取当前小时数(0-23)
		var m = myDate.getMinutes(); //获取当前分钟数(0-59)
		var s = myDate.getSeconds();
	
		var now = year + '-' + p(month) + "-" + p(date) + " " + p(h) + ':' + p(m) + ":" + p(s);
</script>
<script>
    var table = layui.table; //定义全局变量  方便使用layui的表格
    var laypage = layui.laypage, layer = layui.layer; //定义全局变量  方便使用layui的分页条
    /*页面加载时查询数据  并且分页*/
    $(function() {
        fenye("",1,3,1);  //调用layui表格
        tool();
    });
    var num=0;
    function fenye(keyWord,pagenum,limit,userId) {
        table.render({
            id : 'myTab', //table的id
            elem : '#myTab',   //同上
            height : 300,  //表格的高度
            url : 'mail/getMail',
            where:{
                pageNum:pagenum,
                limit:limit,
                keyWord:keyWord,
                userId:userId
            },
            cols : [ [
                { checkbox: true,  fixed: true},
                {field :'emailId',title : '邮件编码',sort : true,width:130},
                {field : 'username',title : '发件人',sort : true,width:170},
                {field : 'subject',title : '主题',sort : true,width:300},
                {field : 'sendtime',title : '发送时间',sort : true,width:220},
                {fixed : 'right', title:'操作', toolbar: '#barDemo', width:260}
            ] ],
            //回调函数 在表格渲染完成后 执行 用num判断  让它只在页面加载时执行一次   点击上一页下一页不执行
            done : function(res) {
                if(num==0){
                    tool($("#ipt").val(),res.count);  //调用tool()函数   启用分页条  并传总数据数  res.count
                    num+=1;
                }
            }
        });
	}
    /*渲染分页工具条
      同样传入两个参数   关键字   总数据
    */
    function tool(keyWord,count) {
        laypage.render({
            elem : 'fenye',//分页条的作用域   页面中div的id
            count : count,  //总数据数
            limit:3,      //每页显示的条数
            layout : [ 'prev', 'page', 'next','limit','skip' ],
            jump : function(obj, first) {
                /*判断如果不是第一页执行里面的方法*/
                if (!first) {
                    /*重新调用分页方法*/
                    fenye($("#ipt").val(),obj.curr,obj.limit,$("#userId").val());
                }
            }
        });
    }
    //绑定input enter事件  在input输入完成   按下回车  调用
        function serch(){                //网页内按下回车触发
        if(event.keyCode==13)
           {
            fenye($("#ipt").val(),1,3,$("#userId").val());
        }}
        
        
        /*查看详情 
         *
         *
         */
        function cli(obj){
        var emailId=$(obj).parent().parent().prev().prev().prev().prev().children().html()
              $.ajax({
                        url:"mail/selectXMail",
                        type:'post',
                        data:{
                            emailId:emailId,
                          },
                          dataType:'json',
                        success:function (data) {
                         
                           $("#username").val(data[0].username);
                           $("#subject").val(data[0].subject);
                           $("#sendtime").val(data[0].sendtime);
                           $("#content").val(data[0].content);
                          
                        }
                    })
                }   
          //删除邮件
           function del(obj) {
           var emailId = $(obj).parent().parent().prev().prev().prev().prev().children().html();
           if(confirm("确定删除？？？")){
		        $.ajax({
		            url: "mail/delMail",
		            type:'post',
		            data: {
		                emailId: emailId
		            },
		            dataType:'text',
		            success: function (data) {
		            	alert(data)
		                fenye("",1,3,1);  //调用layui表格
		       			tool();
		            }
		        })
		       
		        }else{alert("取消删除");
		       
		        }
		      }
</script>
</body>
<script>
 /*查询草稿箱  */
    var table = layui.table; //定义全局变量  方便使用layui的表格
    var laypage = layui.laypage, layer = layui.layer; //定义全局变量  方便使用layui的分页条
    /*页面加载时查询数据  并且分页*/
    $(function() {
        fenye2("",1,3,1);  //调用layui表格
        tool2();
    });
    var num=0;
    function fenye2(keyWord,pagenum,limit,userId) {
        table.render({
            id : 'myTab2', //table的id
            elem : '#myTab2',   //同上
            height : 300,  //表格的高度
            url : 'mail/selectWMail',
            where:{
                pageNum:pagenum,
                limit:limit,
                keyWord:keyWord,
                userId:userId
            },
            cols : [ [
                {checkbox: true, fixed: true},
                {field : 'emailId',title : '邮件编码',sort : true,width:100},
                {field : 'user_name',title : '发件人',sort : true,width:150},
                {field : 'subject',title : '主题',sort : true,width:250},
                {field : 'sendtime',title : '发送时间',sort : true,width:190},
                {fixed: 'right', title:'操作', toolbar: '#barDemo1', width:370}
            ] ],
            //回调函数 在表格渲染完成后 执行 用num判断  让它只在页面加载时执行一次   点击上一页下一页不执行
            done : function(res) {
                if(num==0){
                    tool2($("#ipt").val(),res.count);  //调用tool()函数   启用分页条  并传总数据数  res.count
                    num+=1;
                }
            }
        });

    }
    /*渲染分页工具条
      同样传入两个参数   关键字   总数据
    */
    function tool2(keyWord,count) {
        laypage.render({
            elem : 'fenye2',//分页条的作用域   页面中div的id
            count : count,  //总数据数
            limit:3,      //每页显示的条数
            layout : [ 'prev', 'page', 'next','limit','skip' ],
            jump : function(obj, first) {
                /*判断如果不是第一页执行里面的方法*/
                if (!first) {
                    /*重新调用分页方法*/
                    fenye2($("#ipt").val(),obj.curr,obj.limit,$("#userId").val());
                }
            }
        });
    }
    
    //绑定input enter事件  在input输入完成   按下回车  调用
         function serch(){                //网页内按下回车触发
         if(event.keyCode==13)
        {
            fenye($("#ipt").val(),1,3,$("#userId").val());
        }}
             
            
         /*修改草稿箱 查询详情 */
            
       function cli2(obj){
         var emailId = $(obj).parent().parent().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().children().html();
         $.ajax({
            url: "mail/selectById",
            type:'post',
            data: {
                emailId: emailId
            },
            dataType:'json',
            success: function (data) {
                 alert(data.userId)
                 alert($("#chlid").val(data.userId));
                           $("#user_id").val(data[0].user_id);
                           $("#subject").val(data[0].subject);
                           $("#content").val(data[0].content);
               }
               })
                $.ajax({
                url: "mail/selectXMail",
                type:'post',
                data: {
                   emailId:emailId,
                },
                dateType:'json',
                 success: function (data) {
                           $("#user_id").val(data[0].user_id);
                           $("#subject").val(data[0].subject);
                           $("#content").val(data[0].content);
                   }
                  
               })
               $("#sure").click(function () {
            $.ajax({
               url:"",
               type:'',
               data:{
               
               },
               dataType:'',
               success:function(data){
               
               }
            
            })
        })
            }
                
        </script>
<!--动态Tab  -->
<script>
		layui.use('element', function() {
			var $ = layui.jquery,
				element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块
			//触发事件
			var active = {
				tabAdd : function() {
					//新增一个Tab项
				    	element.tabAdd('demo', {
						title : '新选项' + (Math.random() * 1000 | 0), //用于演示
						content : '内容' + (Math.random() * 1000 | 0),
						id : new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
					})
				},
				tabDelete : function(othis) {
					//删除指定Tab项
					element.tabDelete('demo', '44'); //删除：“商品管理”
	
	
					othis.addClass('layui-btn-disabled');
				},
				tabChange : function() {
					//切换到指定Tab项
					element.tabChange('demo', '22'); //切换到：用户管理
				}
			};
	
			$('.site-demo-active').on('click', function() {
				var othis = $(this),
					type = othis.data('type');
				active[type] ? active[type].call(this, othis) : '';
			});
	
			//Hash地址的定位
			var layid = location.hash.replace(/^#test=/, '');
			element.tabChange('test', layid);
	        element.on('tab(test)', function(elem) {
				location.hash = 'test=' + $(this).attr('lay-id');
			});
	
		});
	</script>

</html>


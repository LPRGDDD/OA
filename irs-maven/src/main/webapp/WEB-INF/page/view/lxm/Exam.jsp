<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'Exam.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="page/resources/layui/css/layui.css" media="all">
<script src="page/resources/jquery-1.11.3.min.js"></script>
<script src="page/resources/jquery.form.js"></script>
<script src="page/resources/jqueryExt.js"></script>
<script src="page/resources/layui/layui.js"></script>
<script src="page/resources/layui/layui.all.js" charset="utf-8"></script>
<link href="<c:url value="/page/resources/layui/css/layui.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/page/resources/bootstrap/css/bootstrap.min.css" />"
	media="all" rel="stylesheet">
<script src="<c:url value="/page/resources/jquery-1.11.3.min.js" />"
	charset="utf-8"></script>
<script type="text/javascript"
	src="<c:url value="/page/resources/bootstrap/js/bootstrap.min.js" />"></script>
</head>

<body>

	<div class="layui-tab">
		<ul class="layui-tab-title">
			<li class="layui-this">审批规则</li>
			<li>新建审批规则</li>
		</ul>
		<div class="layui-tab-content">
			<!--审批规则查询  -->
			<div class="layui-tab-item layui-show">
				<!-- 选择按钮 -->
				
				<table class="layui-table" id="tableDemo" lay-filter="demo">
				</table>

				<script id="barDemo" type="text/html">
               <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="edit">编辑</a>
               <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	          </script>
			</div>

			<!--添加审批规则  -->
			<div class="layui-tab-item">
				<!-- 模态框（Modal） -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">选择审批人</h4>
							</div>
							<div class="modal-body">
								<!-- 选择负责人 -->
								<table class="layui-hide" id="test"></table>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">关闭</button>
								<button type="button" class="btn btn-primary" id="sure">
									确认选择</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>
				<!-- 模态框（Modal2） -->
				<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">选择被审批的部门</h4>
							</div>
							<div class="modal-body">
								<!-- 选择负责人 -->
								<table class="layui-hide" id="test1"></table>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">关闭</button>
								<button type="button" class="btn btn-primary" id="sure1">
									确认选择</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>
				<!--内容主题-->
				<div id="title">
					<div>
					<span>被审批部门：</span><input
						style="height: 30px;width: 300px;background-color:white"
						readonly="readonly" id="showUser1"><input
						style="height: 30px;width: 300px;background-color:white;display: none"
						readonly="readonly" id="showUser2">
					<button class="layui-btn" style="height: 30px" data-toggle="modal"
						data-target="#myModal1" onclick="getRen()">+</button>
					<input id="userTwo" style="display: none"> <br>
					</div>
					<br/>
					<br/>
					<br/>
					<div>
					 <span>审&nbsp;&nbsp;&nbsp;批&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;人：</span><input
						style="height: 30px;width: 300px;background-color:white"
						readonly="readonly" id="showUser"><input
						style="height: 30px;width: 300px;background-color:white;display: none "
						readonly="readonly" id="showUser3">
					<button class="layui-btn" style="height: 30px" data-toggle="modal"
						data-target="#myModal" onclick="getUsers()">+</button>
					<input id="userTwo" style="display: none"> <br>
					<br>
					</div>
				</div>
				<div class="site-demo-button" style="margin-top: 20px;">
					<button class="layui-btn site-demo-layedit" data-type="content"
						onclick="ont()">确认发送</button>
				</div>
			</div>
		</div>
	</div>
<!--审批规则查询 修改 删除  -->
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
				    elem: '#tableDemo'
				    ,height:500
				    ,url: 'exam/query' //数据接口
				    ,page: true //开启分页
				    ,cols: [[ //表头
				       //全选
				       //edit: 'text'为开启单元格编辑，sort:true开启排序
				      {field:'departmentName', title: '被审批部门', width:450}
				      ,{field:'staffName',title: '审批人', width:450}
				        ,{width:200, align:'center', toolbar: '#barDemo'}
				    ]]
				  });
				});
			//监听工具条
			table.on('tool(demo)', function(obj) {
				var data = obj.data;
				if (obj.event === 'detail') {
					layer.msg('ID：' + data.sfId + ' 的查看操作');
				} else if (obj.event === 'del') {
					layer.confirm('真的删除行么',function(index) {
						obj.del();
						layer.close(index);
						$.ajax({
							url : "exam/delete",
							data : {
								'id' : data.exId
							},
							type : "post",
							dataType : 'Json',
							success : function(data) {
								if(data>0){
									layer.msg("删除成功");
								}else{
									layer.msg("删除失败");
								}
							}
						})
					});
				} else if (obj.event === 'edit') {
		layer.open({
            type:2,
            title:"查找用户角色",
            area: ['90%','90%'],
            offset: ['10px', '100px'],
            content:"http://localhost:8080/oa/exam/ById/"+data.exId
        });
				}
			});
	
			var $ = layui.$,
				active = {
					getCheckData : function() { //获取选中数据
						var checkStatus = table.checkStatus('idTest'),
							data = checkStatus.data;
						layer.alert(JSON.stringify(data));
					},
					getCheckLength : function() { //获取选中数目
						var checkStatus = table.checkStatus('idTest'),
							data = checkStatus.data;
						layer.msg('选中了：' + data.length + ' 个');
					},
					isAll : function() { //验证是否全选
						var checkStatus = table.checkStatus('idTest');
						layer.msg(checkStatus.isAll ? '全选' : '未全选')
					}
				};
	
			$('.demoTable .layui-btn').on('click', function() {
				var type = $(this).data('type');
				active[type] ? active[type].call(this) : '';
			});
		});
	</script>
<!--模态框操作 查询  -->
<script>
	function ont(){	
		var department=$("#showUser2").val();
		var staff=$("#showUser3").val();
		var staffname=$("#showUser").val();
		var departmentname=$("#showUser1").val();
		  $.ajax({
                        url:"exam/saveEx",
                        type:'post',
                        data:{
						department:department,
						staff:staff,
						staffName:staffname,
						departmentName:departmentname
                        },
                        success:function (data) {
                            if(data>0){
                            alert("添加成功！");
                            window.location.reload();
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
                ,{field: 'id', title: '人员编号', width:100, sort: true, fixed: 'left'}
                ,{field: 'username', width:110,title: '用户名称', }
            ]]
        });
        $("#sure").click(function(){
            var checkStatus = table.checkStatus('test'); //test即为基础参数id对应的值
            var length=checkStatus.data.length;
            var users="";
            var usersname="";
            for(var i=0;i<length;i++){
                users+=checkStatus.data[i].id+","
                usersname+=checkStatus.data[i].username+","
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
</body>
</html>

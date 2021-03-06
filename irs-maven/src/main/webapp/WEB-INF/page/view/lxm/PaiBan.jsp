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

<title>My JSP 'PaiBan.jsp' starting page</title>

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
<script src="page/resources/layui/layui.js"></script>
<script src="page/resources/layui/layui.all.js" charset="utf-8"></script>
<link
	href="<c:url value="/page/resources/bootstrap/css/bootstrap.min.css" />"
	media="all" rel="stylesheet">
<script type="text/javascript"
	src="<c:url value="/page/resources/bootstrap/js/bootstrap.min.js" />"></script>
<style type="text/css">
.lxm {
	height: 30px;
	width: 300px;
	background-color: white;
	readonly
	=readonly
}
</style>
</head>

<body>
	<div class="layui-tab">
		<ul class="layui-tab-title">
			<li class="layui-this">排班</li>
			<li>新建排班</li>
		</ul>
		<div class="layui-tab-content">
			<!--排班查询  -->
			<div class="layui-tab-item layui-show">
				<!-- 选择按钮 -->

				<table class="layui-table" id="tableDemo" lay-filter="demo">
				</table>

				<script id="barDemo" type="text/html">
                {{#if(d.dtstate==1){  }}
			  						<a class="layui-btn layui-btn-xs" lay-event="detail">禁用</a>		
				{{#}  }}
 				{{#if(d.dtstate==0){  }}
			  						<a class="layui-btn layui-btn-xs" lay-event="detail">启用</a>		
				{{#}  }}
			   <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="edit">编辑</a>
               <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	          </script>
			</div>

			<!--添加排班  -->
			<div class="layui-tab-item">
				<!-- 模态框（Modal） -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">选择排班</h4>
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
								<h4 class="modal-title" id="myModalLabel">选择排班的部门</h4>
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

				<div class="layui-form-item">
					<label class="layui-form-label">排班名称</label> <input
						class="layui-input  lxm" style="height:35px" type="text" id="dtname" name="dtname" />
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">选择部门</label> <input
						class="layui-input" 
						style="height: 30px;width: 300px;background-color:white"
						readonly="readonly" id="showUser1"> <input name="drName1"
						style="height: 30px;width: 300px;background-color:white;display: none"
						readonly="readonly" id="showUser2">
					<button class="layui-btn layui-btn-sm layui-btn-normal"
						style="height: 30px;  position: absolute;
  left:420px;
  top: 24%;
  width: 30px;
  height: 30px;
  margin-top: -15px;
  font-size: 20px;
  line-height: 30px;"
						data-toggle="modal" data-target="#myModal1" onclick="getRen()">+</button>
				</div>

				<div class="layui-form-item">
					<label class="layui-form-label">选择人员</label> <input
						class="layui-input"
						style="height: 30px;width: 300px;background-color:white"
						readonly="readonly"  id="showUser"> <input name="drName2"
						class="layui-input" 
						style="height: 30px;width: 300px;background-color:white;display: none "
						readonly="readonly" id="showUser3">
					<button class="layui-btn layui-btn-sm layui-btn-normal"
						style="height: 30px;  position: absolute;
						  left:420px;
						  top: 33.5%;
						  width: 30px;
						  height: 30px;
						  margin-top: -15px;
						  font-size: 20px;
						  line-height: 30px;"
						data-toggle="modal" data-target="#myModal" onclick="getUsers()">+</button>
					<input id="userTwo" style="display: none"> <br>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
						<input type="hidden" style="height:35px" name="dtstate" value="0" id="dtstate"
							checked="checked" style="display: none" />
					</div>
				</div>
				<div class="layui-inline">
					<label class="layui-form-label">开始日期</label>
					<div class="layui-input-inline">
						<input class="layui-input lxm" style="height:35px" name="dtDate_start"
							id="test51" type="text" placeholder="yyyyMMdd">
					</div>
				</div>
				<div class="layui-inline">
					<label class="layui-form-label">结束日期</label>
					<div class="layui-input-inline">
						<input class="layui-input lxm" style="height:35px" name="dtDate_end" id="test50"
							type="text" placeholder="yyyyMMdd">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">班次选择</label> <select 
						class="layui-select" name="scid" id="sele" onchange="showAll()">
					</select>
					<table class="layui-table">
						<tr>
							<td>班次名称</td>
							<td>第一次签到</td>
							<td>第二次签到</td>
							<td>第三次签到</td>
							<td>第四次签到</td>
						</tr>
						<tbody id="tbody">

						</tbody>
					</table>
				</div>
				<!-- <div class="layui-form-pane">
			        
				        <label class="layui-form-label">复选框</label>
							<input type="checkbox" name="monday" id="monday" value="1" lay-skin="primary" checked>周一
							<input type="checkbox" name="tuesday" id="tuesday" value="1" lay-skin="primary"> 周二
							<input type="checkbox" name="wednesday" id="wednesday" value="1" lay-skin="primary"> 周三
							<input type="checkbox" name="thursday" id="thursday" value="1" lay-skin="primary"> 周四
							<input type="checkbox" name="thursday" id="thursday" value="1" lay-skin="primary"> 周四
							<input type="checkbox" name="fisday" id="fisday" value="1" lay-skin="primary"> 周五
							<input type="checkbox" name="saturday" id="saturday" value="1" lay-skin="primary"> 周六
							<input type="checkbox" name="sunday" id="sunday" value="1" lay-skin="primary"> 周日
			        </div> -->
			</div>
			<button class="layui-btn site-demo-layedit" data-type="content"
				onclick="ont()">确认发送</button>
		</div>
			</div>	
	</div>

	<!--select 查询班次信息  -->
	<script type="text/javascript">
			$(function(){
				$.ajax({
  			url:"schedule/BanCi",
  			type:"post",
  			asunc:true,
  			dataType:'Json',
  			success:function(data){
  				$("#sele").html("");
        		for(var i=0;i<data.length;i++){
        		var obj=data[i];
				 var tr="<option value='"+obj.scid+"'>"+obj.sname+"</option>";
			  	$("#sele").append(tr);    			
        		}
        		
  			}
  		})
			})
			
			function showAll(){//schedule/findById
				$.ajax({
  			url:"schedule/findById",
  			type:"post",
  			data:{
  				id:$("#sele").val()
  			},
  			asunc:true,
  			dataType:'Json',
  			success:function(data){
  			$("#tbody").html("");
        		var td="<tr>";
        		td+="<td>"+data[0].sname+"</td>";
        		td+="<td>"+data[0].duty_time1+"</td>";
        		td+="<td>"+data[0].duty_time2+"</td>";
        		td+="<td>"+data[0].duty_time3+"</td>";
        		td+="<td>"+data[0].duty_time4+"</td>";
        		td+="</tr>"
        		$("#tbody").append(td);
        		}
        		
  		})
			}
		</script>
	<!--时间日期  -->
	<script>
layui.use('laydate', function(){
  var laydate = layui.laydate;
  
  //常规用法
  laydate.render({
    elem: '#test1'
  });
   
  //常规用法
  laydate.render({
    elem: '#test50'
  });
   //常规用法
  laydate.render({
    elem: '#test51'
  });
  
  //国际版
  laydate.render({
    elem: '#test1-1'
    ,lang: 'en'
  });
  
  //年选择器
  laydate.render({
    elem: '#test2'
    ,type: 'year'
  });
  
  //年月选择器
  laydate.render({
    elem: '#test3'
    ,type: 'month'
  });
  
  //时间选择器
  laydate.render({
    elem: '#test4'
    ,type: 'time'
  });
  
  //日期时间选择器
  laydate.render({
    elem: '#test5'
    ,type: 'datetime'
  });
  
  //日期范围
  laydate.render({
    elem: '#test6'
    ,range: true
  });
  
  //年范围
  laydate.render({
    elem: '#test7'
    ,type: 'year'
    ,range: true
  });
  
  //年月范围
  laydate.render({
    elem: '#test8'
    ,type: 'month'
    ,range: true
  });
  
  //时间范围
  laydate.render({
    elem: '#test9'
    ,type: 'time'
    ,range: true
  });
  
  //日期时间范围
  laydate.render({
    elem: '#test10'
    ,type: 'datetime'
    ,range: true
  });
  
  //自定义格式
  laydate.render({
    elem: '#test11'
    ,format: 'yyyy年MM月dd日'
  });
  laydate.render({
    elem: '#test12'
    ,format: 'dd/MM/yyyy'
  });
  laydate.render({
    elem: '#test13'
    ,format: 'yyyyMMdd'
  });
  laydate.render({
    elem: '#test14'
    ,type: 'time'
    ,format: 'H点m分'
  });
  laydate.render({
    elem: '#test15'
    ,type: 'month'
    ,range: '~'
    ,format: 'yyyy-MM'
  });
  laydate.render({
    elem: '#test16'
    ,type: 'datetime'
    ,range: '到'
    ,format: 'yyyy年M月d日H时m分s秒'
  });
  
  //开启公历节日
  laydate.render({
    elem: '#test17'
    ,calendar: true
  });
  
  //自定义重要日
  laydate.render({
    elem: '#test18'
    ,mark: {
      '0-10-14': '生日'
      ,'0-12-31': '跨年' //每年的日期
      ,'0-0-10': '工资' //每月某天
      ,'0-0-15': '月中'
      ,'2017-8-15': '' //如果为空字符，则默认显示数字+徽章
      ,'2099-10-14': '呵呵'
    }
    ,done: function(value, date){
      if(date.year === 2017 && date.month === 8 && date.date === 15){ //点击2017年8月15日，弹出提示语
        layer.msg('这一天是：中国人民抗日战争胜利72周年');
      }
    }
  });
  
  //限定可选日期
  var ins22 = laydate.render({
    elem: '#test-limit1'
    ,min: '2016-10-14'
    ,max: '2080-10-14'
    ,ready: function(){
      ins22.hint('日期可选值设定在 <br> 2016-10-14 到 2080-10-14');
    }
  });
    var ins23 = laydate.render({
    elem: '#test-limit2'
    ,min: '2016-10-14'
    ,max: '2080-10-14'
    ,ready: function(){
      ins22.hint('日期可选值设定在 <br> 2016-10-14 到 2080-10-14');
    }
  });
  



});
</script>

	<!--排班查询 修改 删除  -->
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
				    ,url: 'duty/select' //数据接口
				    ,page: true //开启分页
				    ,cols: [[ //表头
				       //全选
				       //edit: 'text'为开启单元格编辑，sort:true开启排序
				      {field:'dtname',title:'排班名称',width:100}
				      ,{field:'drNameId',title:'排班部门', width:100}
				      ,{field:'drNameId2',title:'排班人员', width:100}
				      ,{field:'dtstate',title:'是否启用', width:100,templet: "#state"}
				        ,{width:200, align:'center', toolbar: '#barDemo'}
				    ]],done:function(){
					   //分类显示中文名称	
					    $("[data-field='dtstate']").children().each(function(){
							if($(this).text()=='0'){		
								$(this).text("禁用")		
							}else if($(this).text()=='1'){	
								$(this).text("启用")	
							}
							})
					 }
				  });
				});
			
			//监听工具条
			table.on('tool(demo)', function(obj) {
				var data = obj.data;
				if (obj.event === 'detail') {
					if(data.dtstate=="0"){
						data.dtstate=1;
						$.ajax({
							url : "duty/update",
							data : {
								'id' : data.drId,
								'state':data.dtstate
							},
							type : "post",
							dataType : 'Json',
							success : function(data) {
								if(data>0){
									layer.confirm("是否启用", function() {
										layer.alert("操作成功");
										location.reload();
									})
									
								}else{
									layer.confirm("是否启用用", function() {
										layer.alert("操作失败");
										location.reload();
									})
									
								}
							}
						})
					}else if(data.dtstate=="1"){
						data.dtstate=0;
						$.ajax({
							url : "duty/update",
							data : {
								'id' : data.drId,
								'state':data.dtstate
							},
							type : "post",
							dataType : 'Json',
							success : function(data) {
								if(data>0){
									layer.confirm("是否紧用", function() {
										layer.alert("操作成功");
										location.reload();
									})
									
								}else{
									layer.confirm("是否紧用", function() {
										layer.alert("操作失败");
										location.reload();
									})
									
								}
							}
						})
					}
				} else if (obj.event === 'del') {
					layer.confirm('真的删除行么',function(index) {
						obj.del();
						layer.close(index);
						$.ajax({
							url : "duty/delete",
							data : {
								'id' : data.drId
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
			            area: ['80%','90%'],
			            offset: ['10px', '100px'],
			            content:"http://localhost:8080/oa/duty/updateById/"+data.drId
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
	<!--模态框操作 添加  -->
	<script>
	function ont(){	
		var stname=$("#dtname").val();//排版名称
		var dtstate=$("#dtstate").val();//是否启用
		var department=$("#showUser2").val();//部门  drName1
		var staff=$("#showUser3").val();//人员 drName2
		var staffname=$("#showUser").val();
		var departmentname=$("#showUser1").val();
		var scid=$("#sele").val();//班次类型
		var date=$("#test51").val();//开始日期
		var date1=$("#test50").val();//结束日期  dtname,dtstate,drName1,drName2,scid,dtDate_start,dtDate_end
		  $.ajax({
                        url:"duty/save",
                        type:'post',
                        data:{
						dtname:stname,
						dtstate:dtstate,
						drname1:department,
						drnameId:departmentname,
						drnameId2:staffname,
						drname2:staff,
						scid:scid,
						dtDate_Start:date,
						dtDate_End:date1
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


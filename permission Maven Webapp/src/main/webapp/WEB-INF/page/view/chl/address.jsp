<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/page/resources/layui/css/layui.css" media="all">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/page/resources/bootstrap/css/bootstrap.min.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/page/resources/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/page/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/page/resources/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/page/resources/layui/layui.all.js"></script>
<style>
        #ipt {
            position: relative;
            top: 50px;
            height: 40px;
            width: 450px;
            font-size: 16px;
        }

        #dateBox {
            position: relative;
            left: 500px;
        }

        #myModal {
            width: 900px;
        }

        #myModalFour {
            width: 900px;
        }
    </style>
</head>
<body>
<%-- <input value="${userID}" style="display: none" id="userId"> --%>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    添加联系人
                </h4>
            </div>
            <div class="modal-body">
                <form id="aaa" method="post">
                    选择分组：<select name="map['group_id']" id="mysel" style="width: 200px"></select> &nbsp;&nbsp;姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<input 
                        name="map['psn_name']" style="width: 200px"><br><br>&nbsp;&nbsp;职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位：<input name="map['ministration']"
                                                                                          style="width: 200px">
                    生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日：<input type="date" name="map['birthday']"
                                                                  style="width: 200px;height: 30px;"><br><br> 昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：<input
                        name="map['nick_name']" style="width: 200px">单位名称：<input name="map['dept_name']"
                                                                                 style="width: 200px"><br><br>
                    性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：<select name="map['sex']" style="width: 200px">
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select> 单位地址：<input name="map['add_dept']" style="width: 200px"><br><br>单位邮编：<input name="map['post_no_dept']"
                                                                                              style="width: 200px">
                    单位电话：<input name="map['tel_no_dept']" style="width: 200px"><br><br> 家庭地址：<input name="map['add_home']"
                                                                                           style="width: 200px">家庭邮编：<input
                        name="map['post_no_home']" style="width: 200px"><br><br>
                    家庭电话：<input name="map['tel_no_home']" style="width: 200px">家庭手机：<input name="map['moble_no']"
                                                                                           style="width: 200px"><br><br>
                      电子邮件：<input name="map['email']" style="width: 200px">
                    Q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Q：<input name="map['oicq_noqq']" style="width: 200px"><br><br>
                                                           单位传真：<input name="map['fax_no_dept']" style="width: 200px"><br><br>
                  <input name="map['userId']" style="width: 200px;display: none" value="1">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" id="sure">
                                                                    确认添加
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModalTwo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabelTwo">
                    添加分组
                </h4>
            </div>
            <div class="modal-body">
                <!-- 选择负责人 -->
                <center>
                    <table id="addWh">
                        <tr>
                            <td>分组名字：</td>
                            <td><input type="text" name="map['group_name']" id="group_name"></td>
                        </tr>
                        <input type="text" style="display:none" name="map['userId']" value="1" id="userIdTwo">
                    </table>
                </center>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" id="sureTwo">
                                                              确认添加
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModalThree" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabelThree">
                    选择您要修改的联系人
                </h4>
            </div>
            <div class="modal-body">
                <!-- 选择负责人 -->
                <input type="text" style="width:192px;height:35px" id="keyWordThree">
                <button style="height:35px;position:relative;top:-5px;" class="layui-btn" id="getUserByKeyThree">查询
                </button>
                <table class="layui-hide" id="testThree"></table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
               </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModalFour" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabelFour">
                                        编辑联系人
                </h4>
            </div>
            <div class="modal-body">
                <form id="bbb" method="post">
                    选择分组：<select name="map['group_id']" id="fz" style="width: 200px"></select> &nbsp;&nbsp;姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<input
                        name="map['psn_name']" value="${map.psn_name}"
                         id="xm" style="width: 200px"><br><br>&nbsp;&nbsp;职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位：<input
                        name="map['ministration']" value="${map.ministration}" id="zw" style="width: 200px">
                    生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日：<input type="date" value="${map.birthday}"  id="sr" name="map['birthday']"
                                                                  style="width: 200px;height: 30px;"> <br><br>昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：<input
                        name="map['nick_name']" value="${map.nick_name}"  style="width: 200px" id="nc">单位名称：<input name="map['dept_name']" 
                                                                                        value="${map.dept_name}" id="dwmc" style="width: 200px"><br><br>
                    <!-- 性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：<select name="map['sex']" style="width: 200px" id="xb">
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select> --> 
                单位地址：<input name="map['add_dept']" id="dwdz" value="${map.add_dept}" style="width: 200px">单位邮编：<input
                        name="map['post_no_dept']" value="${map.post_no_dept}" id="dwyb" style="width: 200px"><br><br>
                    单位电话：<input name="map['tel_no_dept']" value="${map.tel_no_dept}" id="dwdh" style="width: 200px">家庭地址：<input id="jtdz"
                                                                                                     name="map['add_home']" value="${map.add_home}"
                                                                                                     style="width: 200px"> <br><br>家庭邮编：<input
                        id="jtyb" name="map['post_no_home']" value="${map.post_no_home}" style="width: 200px">
                    家庭电话：<input id="jtdh" name="map['tel_no_home']" value="${map.tel_no_home}" style="width: 200px"> <br><br>家庭手机：<input id="jtsj"
                                                                                                     name="map['moble_no']"  value="${map.moble_no}"
                                                                                                     style="width: 200px">电子邮件：<input
                        id="dzyj" name="map['email']" value="${map.email}" style="width: 200px"><br><br>
                    Q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Q：<input id="qq" name="map['oicq_noqq']" value="${map.oicq_noqq}"  style="width: 200px">单位传真：<input id="dwcz"
                                                                                               name="map['fax_no_dept']" value="${map.fax_no_dept}"
                                                                                               style="width: 200px"><input id="chlid"
                        name="map['userId']" value="${map.userId}" style="width: 200px;display: none" value="1"><input id="addId" value="${map.addId}"
                                                                                                 name="map['addId']"
                                                                                                 style="width: 200px;display: none">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" id="sureFour">
                                                                  确认更改
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<!-- 表格数据 -->
<div id="serch">
    <input type="text" id="ipt" placeholder="请输入内容" onkeyup="serch()">
</div>
<div id="dateBox">
    <button class="layui-btn" id="addButton" data-toggle="modal" data-target="#myModal">+ 添加联系人</button>
    <button class="layui-btn layui-btn-warm" id="addFroup" data-toggle="modal" data-target="#myModalTwo">添加分组</button>
    <button class="layui-btn layui-btn-normal" id="myGroup" data-toggle="modal" data-target="#myModalThree">我的分组
    </button>
</div>
<table class="layui-hide" id="myTab"></table>
<div id="fenye"></div>
<script type="text/html" id="barDemo">
    <button onclick="cli(this)" class="layui-btn" data-toggle="modal" data-target="#myModalFour">编辑联系人</button>
    <button class="layui-btn layui-btn-danger" onclick="del(this)">删除</button>
</script>
<script type="text/javascript" src="<c:url value="/resources/layui/layui.all.js" /> "></script>

 <!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    var table = layui.table; //定义全局变量  方便使用layui的表格
    var laypage = layui.laypage, layer = layui.layer; //定义全局变量  方便使用layui的分页条
    $(function () {
        fenye("", 1,5, 1);  //调用layui表格
        tool();
        $.ajax({
            url: "../address/login",
            success: function (data) {
                alert(data)
            }
        }) 
        //    查看我的分组  (userId   要换成动态的)
        $("#myGroup").click(function () {
            var table = layui.table;
            var tableins = table.render({
                id: 'testThree'
                , elem: '#testThree'
                , url: '../address/getGroup'
                , where: {
                    userId: 1
                }
                , cols: [[ //表头
                    {checkbox: true, fixed: true}
                    , {field: 'group_id', title: '分组编号', width: 235, sort: true, fixed: 'left'}
                    , {field: 'group_name', width: 290, title: '分组名称',}
                ]]
            });
//    在模糊检索时 重载表格
            $("#getUserByKeyThree").click(function () {
                tableins.reload({
                    url: '../address/getGroup'
                    , where: { //设定异步数据接口的额外参数，任意设
                        "keyWord": $("#keyWordThree").val()
                    }
                });
            })
        })
        //    添加分组
        $("#sureTwo").click(function () {
            $.ajax({
                url: "../address/addGroup",
                type:'post',
                data: {
                    group_name: $("#group_name").val(),
                    userId: $("#userIdTwo").val()
                },
                dataType:'text',
                 success: function (data) {
                    window.location.reload()
                }
            })
        })
        //添加联系人  首先查询分组 (userId   要换成动态的)
        $("#addButton").click(function () {
           alert(12345678)
            $("#mysel").children().remove()
            $.ajax({
                url: "../address/findGroup",
                type:'post',
                data: {
                    userId:1
                },
                dateType:'json',
                 success: function (data) {
                 alert(data)
                    var sel = ""
                    for (var i = 0; i < data.length; i++) {
                     sel += "<option value='" + data[i].group_id + "'>" + data[i].group_name + "</option>";
                    }
                    $("#mysel").append(sel)
                }
            })
        })
        //确认添加
        $("#sure").click(function () {
            $.ajax({
                url: "../address/addUser",
                type:'post',
                data: $("#aaa").serialize(),
                dataType:'text',
                success: function (data) {
                alert(data)
                    window.location.reload()
                }
            })
        })
        $("#sureFour").click(function () {
        alert($("#bbb").serialize())
            $.ajax({
                url: "../address/updateUser",
                type:'post',
                data: $("#bbb").serialize(),
                dataType:'text',
                success: function (data) {
                alert(data);
                    window.location.reload()
                }
            })
        })
    })

    //点击删除
    function del(obj) {
    
     var add_id = $(obj).parent().parent().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().children().html();
     alert(add_id);
     if(confirm("确定删除联系人？？？")){
        //var add_id = $(obj).parent().parent().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().children().html();
            
        $.ajax({
            url: "../address/delUser",
            type:'post',
            data: {
                addId: add_id
            },
            dataType:'text',
            success: function (data) {
                 alert(data)
                window.location.reload()
            }
        })
        }else{alert("取消删除")}
    }
        
       /*页面加载时查询数据  并且分页*/
    var num = 0;
     function fenye(keyWord, pagenum, limit, userId) {
        table.render({
            id: 'myTab', //table的id
            elem: '#myTab',   //同上
            height: 610,  //表格的高度
            width:2140,
            url: '../address/getAddressBook',
            where: {
                pageNum: pagenum,
                limit: limit,
                keyWord: keyWord,
                userId: userId
            },
            cols: [[
                {field: 'add_id', title: '通讯编码', sort: true,width:110},
                {field: 'group_name', title: '分组', sort: true,width:50},
                {field: 'psn_name', title: '姓名', sort: true,width:100},
                {field: 'sex', title: '性别', sort: true,width:50},
/*                 {field: 'nick_name', title: '昵称', sort: true,width:50},
 *//*                 {field: 'birthday', title: '生日', sort: true,width:50},
 */                {field: 'ministration', title: '职务', sort: true,width:100},
                {field: 'dept_name', title: '单位名称', sort: true,width:120},
/*                 {field: 'add_dept', title: '地址', sort: true,width:50},
 *//*                 {field: 'post_no_dept', title: '邮编', sort: true,width:50},
 */                {field: 'tel_no_dept', title: '电话', sort: true,width:100},
/*                 {field: 'fax_no_dept', title: '传真', sort: true,width:50},
 */                {field: 'add_home', title: '家庭地址', sort: true,width:150},
/*                 {field: 'post_no_home', title: '邮编', sort: true,width:50},
 */                {field: 'tel_no_home', title: '电话', sort: true,width:100},
                {field: 'moble_no', title: '手机', sort: true,width:150},
/*                 {field: 'email', title: '邮箱', sort: true,width:50},
 */                {field: 'oicq_noqq', title: 'qq', sort: true,width:150},
                {fixed: 'right', title: '操作', toolbar: '#barDemo', width: 215}
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
    //点击修改
    
       function cli(obj){
         var add_id = $(obj).parent().parent().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().children().html();
         $.ajax({
            url: "../address/selectById",
            type:'post',
            data: {
                add_id: add_id
            },
            dataType:'json',
            success: function (data) {
                 alert(data.userId)
                 alert($("#chlid").val(data.userId));
        $("#addId").val(data.add_id);
        $("#chlid").val(data.userId);
        $("#xm").val(data.psn_name);
        $("#xb").val(data.sex);
        $("#nc").val(data.nick_name);
        $("#zw").val(data.ministration);
        $("#sr").val(data.birthday);
        $("#dwmc").val(data.dept_name);
        $("#dwdz").val(data.add_dept);
        $("#dwyb").val(data.post_no_dept);
        $("#dwdh").val(data.tel_no_dept);
        $("#dwcz").val(data.fax_no_dept);
        $("#jtdz").val(data.add_home);
        $("#jtyb").val(data.post_no_home);
        $("#jtdh").val(data.tel_no_home);
        $("#jtsj").val(data.moble_no);
        $("#dzyj").val(data.email);
        $("#qq").val(data.oicq_noqq);
                 
                /*  window.location.reload()   */
               
               }
               })
                $.ajax({
                url: "../address/findGroup",
                type:'post',
                data: {
                    userId:1
                },
                dateType:'json',
                 success: function (data) {
                  $("#fz").html("")
                    var sel = ""
                    for (var i = 0; i < data.length; i++) {
                     sel += "<option value='" + data[i].group_id + "'>" + data[i].group_name + "</option>";
                    }
                    $("#fz").append(sel)
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
            limit: 5,      //每页显示的条数
            layout: ['prev', 'page', 'next', 'limit', 'skip'],
            jump: function (obj, first) {
                /*判断如果不是第一页执行里面的方法*/
                if (!first) {
                    /*重新调用分页方法*/
                    fenye($("#ipt").val(), obj.curr, obj.limit, 1);
                }
            }
        });
    }

    //绑定input enter事件  在input输入完成   按下回车  调用
    function serch() {                //网页内按下回车触发
        if (event.keyCode == 13) {
            fenye($("#ipt").val(), 1, 10, 1);
            // $('.layui-table').children().children().children('th').eq(1).css("display","none");
        }
    }

  
</script>
</body>
</html>

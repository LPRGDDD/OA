<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cheshi.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="page/resources/layui/css/layui.css">
    <script type="text/javascript" src="page/resources/jquery-1.11.3.min.js"></script>
    <script src="page/resources/layui/layui.js" charset="utf-8"></script>
    <script src="page/resources/layui/layui.all.js" charset="utf-8"></script>
  </head>
  
  <body>
        <blockquote class="layui-elem-quote">分类管理</blockquote>
        <div style="padding: 10px;">
             <table class="layui-table">
                <tr>
                   <td style="width: 200px; vertical-align: top;">
                           <ul id="tree1"></ul>
                   </td>
                   <td>
                       <fieldset class="layui-elem-field layui-field-title">
                          <legend>添加</legend>
                       </fieldset>
                       <fieldset class="layui-elem-field layui-field-title">
                          <legend>编辑</legend>
                       </fieldset>
                       <fieldset class="layui-elem-field layui-field-title">
                          <legend>删除</legend>
                       </fieldset>
                   </td>
                </tr>
             </table>
        </div>
        
        
        
        
        <script>
//Demo
layui.use(['tree', 'layer'], function(){
  var layer = layui.layer
  ,$ = layui.jquery; 
  
  layui.tree({
    elem: '#tree1' //指定元素
    ,target: '_blank' //是否新选项卡打开（比如节点返回href才有效）
    ,click: function(item){ //点击节点回调
      layer.msg('当前节名称：'+ item.name + '<br>全部参数：'+ JSON.stringify(item));
      console.log(item);
    }
    ,nodes: [ //节点
      {
        name: '常用文件夹'
        ,id: 1
        ,alias: 'changyong'
        ,children: [
          {
            name: '所有未读（设置跳转）'
            ,id: 11
            ,href: 'http://www.layui.com/'
            ,alias: 'weidu'
          }, {
            name: '置顶邮件'
            ,id: 12
          }, {
            name: '标签邮件'
            ,id: 13
          }
        ]
      }, {
        name: '我的邮箱'
        ,id: 2
        ,spread: true
        ,children: [
          {
            name: 'QQ邮箱'
            ,id: 21
            ,spread: true
            ,children: [
              {
                name: '收件箱'
                ,id: 211
                ,children: [
                  {
                    name: '所有未读'
                    ,id: 2111
                  }, {
                    name: '置顶邮件'
                    ,id: 2112
                  }, {
                    name: '标签邮件'
                    ,id: 2113
                  }
                ]
              }, {
                name: '已发出的邮件'
                ,id: 212
              }, {
                name: '垃圾邮件'
                ,id: 213
              }
            ]
          }, {
            name: '阿里云邮'
            ,id: 22
            ,children: [
              {
                name: '收件箱'
                ,id: 221
              }, {
                name: '已发出的邮件'
                ,id: 222
              }, {
                name: '垃圾邮件'
                ,id: 223
              }
            ]
          }
        ]
      }
      ,{
        name: '收藏夹'
        ,id: 3
        ,alias: 'changyong'
        ,children: [
          {
            name: '爱情动作片'
            ,id: 31
            ,alias: 'love'
          }, {
            name: '技术栈'
            ,id: 12
            ,children: [
              {
                name: '前端'
                ,id: 121
              }
              ,{
                name: '全端'
                ,id: 122
              }
            ]
          }
        ]
      }
    ]
  });
  });
  </script>
  </body>
</html>


<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  

<%  

String path = request.getContextPath();  

String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  

%>  

<html>  

  <head>  

    <base href="<%=basePath%>">  
<script src="page/resources/jquery-1.11.3.min.js"></script>
    <script  src="page/resources/jquery-2.1.4.min.js"></script>  

    <script src="page/resources/jquery.form.js"></script>   
	<link href="page/resources/layui/css/layui.css"
	rel="stylesheet">
    <title>My JSP 'index.jsp' starting page</title>  

    <script type="text/javascript">  

            //ajax 方式上传文件操作  

             $(document).ready(function(){  

                $('#btn').click(function(){  
                    if(checkData()){  

                        $('#form1').ajaxSubmit({    

                            url:'GeRen/ajaxUpload.do',  

                            dataType: 'text',  

                            success: resutlMsg,  

                            error: errorMsg  

                        });   

                        function resutlMsg(msg){  

                            alert(msg);     

                            $("#upfile").val("");  

                        }  

                        function errorMsg(){   

                            alert("导入excel出错！");      

                        }  

                    }  

                });  

             });  

               

             //JS校验form表单信息  

             function checkData(){  

                var fileDir = $("#upfile").val();  

                var suffix = fileDir.substr(fileDir.lastIndexOf("."));  

                if("" == fileDir){  

                    alert("选择需要导入的Excel文件！");  

                    return false;  

                }  

                if(".xls" != suffix && ".xlsx" != suffix ){  

                    alert("选择Excel格式的文件导入！");  

                    return false;  

                }  

                return true;  

             }  

    </script>   

  </head>  

    

  <body>  
    <form method="POST"  enctype="multipart/form-data" id="form1" action="GeRen/upload.do">  
        <table>  
         <tr>  
            <td> <input id="upfile" type="file" class="layui-input" name="upfile"></td>  
         </tr>  
        <tr>  
            <td><input type="button" value="导入考勤记录" id="btn" class="layui-btn" name="btn" ></td>  
         </tr>  
        </table>    
    </form>  
  </body>  

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hr_rckgl1.jsp' starting page</title>
    
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
 
<div class="layui-tab">
  <ul class="layui-tab-title">
    <li class="layui-this">人才库管理</li>
    <li>新增人才档案</li>
  </ul>
  <div class="layui-tab-content">
  <!-- 第一块 -->
    <div class="layui-tab-item layui-show">
           <div class="demoTable1">
		                  根据应聘人姓名：
		       <div class="layui-inline">
		         <input name="keyWord" class="layui-input" id="demoReload1" autocomplete="off">
		       </div>
		                 根据应聘人专业：
		       <div class="layui-inline">
		         <input name="major" class="layui-input" id="demoReload2" autocomplete="off">
		       </div>
		                根据计划查询：
		       <div class="layui-inline">
		         <input name="pname" class="layui-input" id="demoReload3" autocomplete="off">
		       </div>
		         <button class="layui-btn" data-type="reload">搜索</button>
		    </div>
         <table class="layui-hide" id="myTab" lay-filter="demo"></table>
	<div id="fenye"></div>
	
<script id="barDemo" type="text/html">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit">修改</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script>
		layui.use('table', function() {
			var table = layui.table;
			//监听表格复选框选择
			table.on('checkbox(demo)', function(obj) {
				console.log(obj)
			});
				  //监听单元格编辑
				   table.render({
				    elem: '#myTab'
				    ,height:500
				    ,url: 'talent/queryAllrck' //数据接口
				    ,page: true //开启分页
				    ,method:"post"
				    ,cols: [[ //表头
				       //全选
				       //edit: 'text'为开启单元格编辑，sort:true开启排序
			   {field:'hr_plan_name', width:120, title: '计划名称'}
			  ,{field:'hr_talents_name', width:120, title: '应聘人姓名'}
		      ,{field:'hr_talents_toemploy', width:157, title: '应聘岗位'}
		      ,{field:'hr_talents_relation',width:150, title: '联系方式'}
		      ,{field:'hr_talents_mall', width:190,  title: '邮箱'}
		      ,{field:'hr_talents_major', width:157, title: '专业'}
		      ,{field:'hr_talents_username', width:157, title: '创建人'}
		      ,{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}
				    ]],
				    id: 'testReload'
				    ,page: true
				    ,height: 315
				  });
               /*  layui重载  */
	 var $ = layui.$, active = {
    	reload: function(){
      var demoReload1 = $('#demoReload1');
      var demoReload2 = $('#demoReload2');
      var demoReload3 = $('#demoReload3');
      
      //执行重载
      table.reload('testReload', {
        page: {
          curr: 1 //重新从第 1 页开始
        }
        ,where: {
         
            keyWord: demoReload1.val(),
            major: demoReload2.val(),
            pname: demoReload3.val()
              }
      });
    }
  };
  $('.demoTable1 .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
				
				
  
  
			//监听工具条
			table.on('tool(demo)', function(obj) {
				var data = obj.data;
				if (obj.event === 'detail') {
					layer.msg('ID：' + data.hr_talents_id + ' 的查看操作');
				} else if (obj.event === 'del') {
					layer.confirm('真的删除行么',function(index) {
						obj.del();
						layer.close(index);
						$.ajax({
							url : "talent/deleterck",
							data : {
								'id' : data.hr_talents_id
							},
							type : "post",
							dataType : 'json',
							success : function(data) {
								if(data>0){
									layer.msg("删除成功");
								}else{
									layer.msg("删除失败");
								}
							}
						})
					});//判断
				} else if (obj.event === 'edit') {
					layer.msg(data.hr_talents_id);
	//打开一个窗口
		layer.open({
            type:2,
            title:"查找用户角色",
            area: ['80%','90%'],
            offset: ['20px', '50px'],
            content:"http://localhost:8080/oa/talent/queryByIdrck/"+data.hr_talents_id
        });
				}
			});
	});
	</script>
            
    </div>
    
    
    
<!-- 第二块 -->
    <div class="layui-tab-item">
					
					<form class="layui-form" id="selerck" action="">
				
		<div class="layui-form-item">
		      <div class="layui-inline">
					<label class="layui-form-label"><span>*</span>计划</label>
				<div class="layui-input-inline">
					<select name="hrPlanId" id="sele1">
				     </select>
				</div>
			  </div>

			  <div class="layui-inline">
				 <label class="layui-form-label"><span class="yan">*</span>应聘人姓名</label>
			      <div class="layui-input-inline">
					<input name="hrTalentsName" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off" lay-verify="title">
				  </div>
			  </div>
			  <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>身份证号</label>
				 <div class="layui-input-inline">				
					<input name="hrTalentsIdentity" id="UUserCard" value="" class="layui-input ym" type="text"  autocomplete="off" lay-verify="sfz">
				</div>
			  </div>
	   </div>
	
	
	
	<div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label">出生日期</label>
				 <div class="layui-input-inline">				
					<input name="hrTalentsBirth" readonly="readonly" id="birthday" class="layui-input ym" type="text"  autocomplete="off">
				</div>
			  </div>
	        <div class="layui-inline">
					<label class="layui-form-label">性别</label>
				<div class="layui-input-inline">	
				     <input name="hrTalentsSex" readonly="readonly" id="sex" class="layui-input ym" type="text"  placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
					<label class="layui-form-label">年龄</label>
				<div class="layui-input-inline">
				    <input name="hrTalentsAge" readonly="readonly" id="age" class="layui-input ym" type="text"  placeholder="请输入" autocomplete="off">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	         <div class="layui-inline">
					<label class="layui-form-label">籍贯</label>
				<div class="layui-input-inline">
					<input name="hrTalentsNative" readonly="readonly" id="jiguan" class="layui-input ym" type="text"  autocomplete="off" lay-verify="jg">
				</div>
			</div>
	        <div class="layui-inline">
					<label class="layui-form-label">户口所在地</label>
				<div class="layui-input-inline">
					<input name="hrTalentsPlace" id="suzaidi" class="layui-input ym" type="text"  autocomplete="off" lay-verify="hkszd">
				</div>
			</div>
	        <div class="layui-inline">
				<label class="layui-form-label">民族</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsNation" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off" lay-verify="mz">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	       <div class="layui-inline">
				<label class="layui-form-label">婚姻状况</label>
			    <div class="layui-input-inline">
			        <select name="hrTalentsState">
			             <option>未婚</option>
			             <option>已婚</option>
			        </select>
				</div>
			</div>
	       <div class="layui-inline">
				<label class="layui-form-label">政治面貌</label>
			    <div class="layui-input-inline">
                     <select name="hrTalentsFace">
			             <option>中共党员</option>
			             <option>中共预备党员</option>
			             <option>无党派人士</option>
			             <option>群众</option>
			        </select>		    
				</div>
			</div>
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>联系方式</label>
				<div class="layui-input-inline">				
					<input name="hrTalentsRelation" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off"  lay-verify="phone">
				</div>
			</div>
	   </div>
	   
	   <div class="layui-form-item">
	         <div class="layui-inline">
				<label class="layui-form-label">e-mall</label>
			    <div class="layui-input-inline">
		             <input name="hrTalentsMall"  class="layui-input ym" type="text" placeholder="请输入" autocomplete="off"  lay-verify="email">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">学历</label>
			    <div class="layui-input-inline">	
			          <select name="hrTalentsBackground">
			             <option>小学</option>
			             <option>初中</option>
			             <option>高中</option>
			             <option>大专</option>
			             <option>本科</option>
			             <option>硕士</option>
			             <option>博士</option>
			        </select>		    
				</div>
			</div>
	        <div class="layui-inline">
				<label class="layui-form-label">健康状况</label>
			    <div class="layui-input-inline">
			          <select name="hrTalentsHealth">
			             <option>健康</option>
			             <option>亚健康</option>
			             <option>不健康</option>
			          </select>
				</div>
			</div>
	   </div>
	   <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label">学位</label>
				<div class="layui-input-inline">
				     <select name="hrTalentsDegree">
			             <option>无</option>
			             <option>学士学位</option>
			             <option>硕士学位</option>
			             <option>博士学位</option>
			        </select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">毕业年限</label>
			    <div class="layui-input-inline">
			        <select name="hrTalentsGraduate">
			              <option>无</option>
				          <option>未满1年</option>
				          <option>1~2年</option>
				          <option>2~3年</option>
				          <option>3~4年</option>
				          <option>4~5年</option>
				    </select>
				</div>
			</div>
	       <div class="layui-inline">
				<label class="layui-form-label">毕业学校</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsSchool" class="layui-input ym" type="text"  autocomplete="off" lay-verify="byxx">
				</div>
			</div>
	    </div>
	    
	    
	    
	    
	<div class="layui-form-item">
	     <div class="layui-inline">
          <label class="layui-form-label">专业</label>
            <div class="layui-input-inline">	
                    <select name="hrTalentsMajor">
			             <option>哲学</option>
			             <option>经济学</option>
			             <option>法学</option>
			             <option>政治学</option>
			             <option>中国语言文学</option>
			             <option>教育学</option>
			             <option>历史学</option>
			             <option>数学</option>
			             <option>力学</option>
			             <option>管理科学与工程</option>
			        </select>		           
            </div>
       </div>
     
       <div class="layui-inline">
          <label class="layui-form-label">计算机水平</label>
            <div class="layui-input-inline">  
                       <select name="hrTalentsComputer">
			             <option>无</option>
			             <option>二级</option>
			             <option>四级</option>
			             <option>六级</option>
			             <option>八级</option>
			        </select>	
            </div>
       </div>
	        <div class="layui-inline">
                 <label class="layui-form-label">外语语种</label>
                 <div class="layui-input-inline">
                      <select name="hrTalentsForeign">
			             <option>英语</option>
			             <option>法语</option>
			             <option>日语</option>
			             <option>六级</option>
			          </select>
                 </div>
            </div>
  </div>
	   
	   
	   
	   
	   <div class="layui-form-item">
		   <div class="layui-inline">
				<label class="layui-form-label">特长</label>
			    <div class="layui-input-inline">
			        <select name="hrTalentsStrong">
			             <option>爱好阅读</option>
			             <option>侍弄花草</option>
			             <option>业余绘画</option>
			             <option>擅长写应用文、各种报告</option>
			          </select>
				</div>
			</div>
	        <div class="layui-inline">
					<label class="layui-form-label">期望从事职业</label>
				<div class="layui-input-inline">
				    <select name="hrTalentsExpect">
			             <option>计算机</option>
			             <option>经营管理策划</option>
			             <option>市场营销</option>
			             <option>财务</option>
			             <option>文职</option>
			             <option>行政、人事</option>
			             <option>财务</option>
			          </select>
				</div>
			</div>
	        <div class="layui-inline">
					<label class="layui-form-label">职业技能</label>
				<div class="layui-input-inline">
				    <select name="hrTalentsSkill">
				         <option>无</option>
			             <option>具有较强的领导能力</option>
			             <option>具有娴熟的沟通技巧与团队建设和管理能力</option>
			             <option>极强的谈判能力及优秀的口头表达，能承受压力。</option>
			             <option>极强的谈判能力及优秀的口头表达，能承受压力。</option>
			             <option>为人诚实可靠、品行端正、具有亲和力</option>
			          </select>
				 </div>
			</div>
	 </div>	
	 
	  <div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">工作经验</label>
			    <div class="layui-input-inline">
			        <select name="hrTalentsWorkexperience">
				          <option>无工作经验</option>
				          <option>1~2年工作经验</option>
				          <option>2~3年工作经验</option>
				          <option>3~4年工作经验</option>
				          <option>4~5年工作经验</option>
				          <option>5~10年工作经验</option>
				     </select>
				</div>
			</div>
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>现居住城市</label>
				<div class="layui-input-inline">
					<input name="hrTalentsDwell" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off"  lay-verify="xjzcs">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">期望工作性质</label>
			    <div class="layui-input-inline">
			        <select name="hrTalentsNature">
			             <option>全职</option>
			             <option>兼职</option>
			             <option>临时</option>
			         </select>
				</div>
			</div>
	 </div>		
	 
	 <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label">期望从事行业</label>
				<div class="layui-input-inline">
			        <select name="hrTalentsIndustry">
			             <option>项目经理</option>
			             <option>开发人员</option>
			             <option>销售经理</option>
			             <option>销售人员</option>
			         </select>
				</div>
			</div>
	        <div class="layui-inline">
					<label class="layui-form-label">期望薪水</label>
				<div class="layui-input-inline">
				    <select name="hrTalentsPay">
			             <option>1000以下</option>
			             <option>1000~2500</option>
			             <option>2500~5000</option>
			             <option>5000~7000</option>
			             <option>7000~9000</option>
			             <option>9000~12000</option>
			             <option>20000以上</option>
			         </select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">应聘岗位</label>
			    <div class="layui-input-inline">
			       <select name="hrTalentsToemploy">
			             <option>项目经理</option>
			             <option>开发人员</option>
			             <option>销售经理</option>
			             <option>销售人员</option>
			         </select>
				</div>
			</div>
	 </div>	
	 <div class="layui-form-item">
	         <div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>到岗时间</label>
			    <div class="layui-input-inline">
			        <select name="hrTalentsPositiondate">
			             <option value="0">三天内</option>
			             <option value="1">一周内</option>
			             <option value="2">两周内</option>
			         </select>
				</div>
	         </div>
		   </div>
	   <div class="layui-form-item layui-form-text">
          <label class="layui-form-label">项目经验</label>
            <div class="layui-input-block">
               <textarea name="hrTalentsProjectexperience"  placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
        </div>
		  <div class="layui-form-item layui-form-text">
          <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
               <textarea name="hrTalentsRemark"  placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
        </div>

        
	 <div class="layui-form-item">
	        <div class="layui-inline">
					<label class="layui-form-label"><span class="yan">*</span>创建人</label>
				<div class="layui-input-inline">
					<input name="hrTalentsUsername" value="<shiro:principal property="fullname"/>" readonly="readonly" class="layui-input ym" type="text" placeholder="请输入" autocomplete="off">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"><span class="yan">*</span>创建时间</label>
			    <div class="layui-input-inline">
					<input name="hrTalentsRegister" id="xx" readonly="readonly" class="layui-input ym" type="text">
					<input name="hrTalentsFilestatus" value="0"  type="hidden">
				</div>
			</div>
	 </div>	
					
     
     
   <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn"  lay-filter="demo1" lay-submit="">立即添加</button>
      <button class="layui-btn layui-btn-primary" type="reset">重置</button>
    </div>
  </div>	
   </form>

	
	<!--form  -->
	
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use(['form', 'layedit', 'laydate'], function(){
  var form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;
   layui.use('form', function(){
        var form = layui.form; 
        $.ajax({
				url:"talent/planAll",
				type:"post",
				dataType:"json",
				success:function(data){
				$("#sele1").html("");
	        		for(var i=0;i<data.length;i++){
	        		var obj=data[i];
					  var tr="<option value='"+obj.hr_plan_id+"'>"+obj.hr_plan_name+"</option>";
				  	$("#sele1").append(tr);  
				  	 form.render('select');  			
	        		}
				}
			})
			
   });
  //日期
  laydate.render({
    elem: '#date'
  });
  laydate.render({
    elem: '#date1'
  });
  
 
  //自定义验证规则
  form.verify({
    title: function(value){
      if(value.length == 0){
        return '应聘者姓名不得为空';
      }
    },
    sfz: function(value){
      if(value.length == 0){
        return '身份证证件不得为空';
      }
    },
    jg: function(value){
      if(value.length == 0){
        return '籍贯不得为空';
      }
    },
    hkszd: function(value){
      if(value.length == 0){
        return '户口所在地不得为空';
      }
    },
    mz: function(value){
      if(value.length == 0){
        return '民族不得为空';
      }
    },
    byxx: function(value){
      if(value.length == 0){
        return '毕业学校不得为空';
      }
    },
    xjzcs: function(value){
      if(value.length == 0){
        return '现居住城市不得为空';
      }
    },
        phone: [/^1[3|4|5|7|8]\d{9}$/, '手机必须11位，只能是数字！']
		,email: [/^[a-z0-9._%-]+@([a-z0-9-]+\.)+[a-z]{2,4}$|^1[3|4|5|7|8]\d{9}$/, '邮箱格式不对']        

  });
  
  //监听指定开关
  form.on('switch(switchTest)', function(data){
    layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
      offset: '6px'
    });
    layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
  });
  
  //监听提交
  form.on('submit(demo1)', function(data){
  var obj=$("#selerck").serialize();
				$.ajax({
		        	     url : "talent/saverck",
		        	     type : "post",
		        	     async : true,
		        	     data :$("#selerck").serialize(),
		       	         dataType : 'text',//返回的数据类型
		        	     success : function(data) {
		        		       alert(data);
		        		      parent.location.reload();
		        	}
		 		});
    return false;
  });
 
});
</script>
					
					
    </div>
  </div>
</div>
  </body>
</html>
<script type="text/javascript">
   $("#UUserCard").blur(function(){ 
        var idcard=$("#UUserCard").val();//获取身份证号
        var Errors=new Array(
            "身份证号码位数不对！",
            "身份证号码出生日期超出范围或含有非法字符！",
            "身份证号码校验错误！",
            "身份证地区错误，请重新输入！"
        );
        var area={11:"北京",12:"天津",13:"河北",14:"山西",15:"内蒙古",21:"辽宁",22:"吉林",23:"黑龙江",31:"上海",32:"江苏",33:"浙江",34:"安徽",35:"福建",36:"江西",37:"山东",41:"河南",42:"湖北",43:"湖南",44:"广东",45:"广西",46:"海南",50:"重庆",51:"四川",52:"贵州",53:"云南",54:"西藏",61:"陕西",62:"甘肃",63:"青海",64:"宁夏",65:"新疆",71:"台湾",81:"香港",82:"澳门",91:"国外"}
        var idcard,Y,JYM;
        var S,M;
        var idcard_array = new Array();
        idcard_array = idcard.split("");
        if(area[parseInt(idcard.substr(0,2))]==null)
        {
            alert(Errors[3]);
            document.getElementById("jiguan").focus();//form1.STAFF_CARD_NO.focus();
            return false;
        }else{
        	var address=area[parseInt(idcard.substr(0,2))];
        	$("#jiguan").val(address);
        	$("#suzaidi").val(address);
        }
        
        switch(idcard.length)
        {
            case 15:
                if ((parseInt(idcard.substr(6,2))+1900) % 4 == 0 || ((parseInt(idcard.substr(6,2))+1900) % 100 == 0 && (parseInt(idcard.substr(6,2))+1900) % 4 == 0 ))
                {
                    ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$/;
                }
                else
                {
                    ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$/;
                }
                //身份证15位时，次序为省（3位）市（3位）年（2位）月（2位）日（2位）校验位（3位），皆为数字
                var re_fifteen = /^(\d{6})(\d{2})(\d{2})(\d{2})(\d{3})$/;
                var arr_data = idcard.match(re_fifteen); 
                var year = arr_data[2]; 
                var month = arr_data[3]; 
                var day = arr_data[4]; 
                var birthday = new Date('19'+year+'/'+month+'/'+day); 
                var status =  verifyBirthday('19'+year,month,day,birthday);
                
                if(status==false)
                {
                    alert(Errors[1]);
                    //document.form1.STAFF_CARD_NO.focus();
                    return (false);
                }
                else
                {
                    var birth=(parseInt(idcard.substr(6,2))+1900).toString()+"-"+idcard.substr(8,2)+"-"+idcard.substr(10,2);
                    document.form1.STAFF_BIRTH.value=birth;
                    var myDate = new Date();
                    var month = myDate.getMonth()+1;
                    var day = myDate.getDate();
                    var birth_day=idcard.substr(10,2);
                    var birth_month=idcard.substr(8,2);
                    var age=myDate.getYear()-(parseInt(idcard.substr(6,2))+1900);
                    if(birth_month<month || birth_month==month && birth_day<=day)
                    {
                        age++;
                    }
                    document.form1.STAFF_AGE.value=age-1;
                    var sex=parseInt(idcard.substr(14,1));
                    alert(sex);
                    if (sex%2==1) //男
                        document.form1.STAFF_SEX.value="0";
                    else  //女
                        document.form1.STAFF_SEX.value="1";
                }
                break;
            case 18:
                if (parseInt(idcard.substr(6,4)) % 4 == 0 || (parseInt(idcard.substr(6,4)) % 100 == 0 && parseInt(idcard.substr(6,4))%4 == 0 ))
                {
                    ereg=/^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$/;//闰年出生日期的合法性正则表达式
                }
                else
                {
                    ereg=/^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$/;
                }
                //身份证18位时，次序为省（3位）市（3位）年（4位）月（2位）日（2位）校验位（4位），校验位末尾可能为X
                var re_eighteen = /^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$/; 
                var arr_data = idcard.match(re_eighteen); 
                var year = arr_data[2]; 
                var month = arr_data[3]; 
                var day = arr_data[4]; 
                var birthday = new Date(year+'/'+month+'/'+day); 
                var status = verifyBirthday(year,month,day,birthday);
                if(status!=false)
                {
                    S = (parseInt(idcard_array[0]) + parseInt(idcard_array[10])) * 7 + (parseInt(idcard_array[1]) + parseInt(idcard_array[11])) * 9 + (parseInt(idcard_array[2]) + parseInt(idcard_array[12])) * 10 + (parseInt(idcard_array[3]) + parseInt(idcard_array[13])) * 5 + (parseInt(idcard_array[4]) + parseInt(idcard_array[14])) * 8 + (parseInt(idcard_array[5]) + parseInt(idcard_array[15])) * 4 + (parseInt(idcard_array[6]) + parseInt(idcard_array[16])) * 2 + parseInt(idcard_array[7]) * 1 + parseInt(idcard_array[8]) * 6 + parseInt(idcard_array[9]) * 3 ;
                    Y = S % 11;
                    M = "F";
                    JYM = "10X98765432";
                    M = JYM.substr(Y,1);
                    if(!(M == idcard_array[17]))
                    {
                        alert(Errors[2]);
                        //document.form1.STAFF_CARD_NO.focus();
                        return (false);
                        var birth=idcard.substr(6,4)+"-"+idcard.substr(10,2)+"-"+idcard.substr(12,2);
                        var myDate = new Date();
                        var month = myDate.getMonth()+1;
                        var day = myDate.getDate();
                        var birth_day=idcard.substr(12,2);
                        var birth_month=idcard.substr(10,2);
                        var age=myDate.getFullYear()-idcard.substr(6,4);
                        if(birth_month<month || birth_month==month && birth_day<=day)
                        {
                            age++;
                        }
                        document.form1.STAFF_AGE.value=age-1;
                        var sex=parseInt(idcard.substr(16,1));
                        alert(sex)
                        if (sex%2==1) //男
                            document.form1.STAFF_SEX.value="0";
                        else  //女
                            document.form1.STAFF_SEX.value="1";
                    }
                    else
                    {
                        var birth=idcard.substr(6,4)+"-"+idcard.substr(10,2)+"-"+idcard.substr(12,2);
                        $("#birthday").val(birth);//赋值出生日去
                        var myDate = new Date();
                        var month = myDate.getMonth()+1;
                        var day = myDate.getDate();
                        var birth_day=idcard.substr(12,2);
                        var birth_month=idcard.substr(10,2);
                        var age=myDate.getFullYear()-idcard.substr(6,4);
                        if(birth_month<month || birth_month==month && birth_day<=day)
                        {
                            age++;
                        }
                        $("#age").val(age);
                        var sex=parseInt(idcard.substr(16,1));
                        if (sex%2==1) //男
                            $("#sex").val("男");
                        else  //女
                            $("#sex").val("女");
                    }
                }
                else
                {
                    alert(Errors[1]);
                    //document.form1.STAFF_CARD_NO.focus();
                    return (false);
                }
                break;
            default:
                alert(Errors[0]);
                //document.form1.STAFF_CARD_NO.focus();
                return (false);
                break;
        }
        //验证身份证号唯一
        _get("check_idcard.php","idcard="+idcard+"&USER_ID=64", show_msg);
    }
)

function verifyBirthday(year,month,day,birthday)
{
    var now = new Date(); 
    var now_year = now.getFullYear(); 
    //年月日是否合理 
    if(birthday.getFullYear() == year && (birthday.getMonth() + 1) == month && birthday.getDate() == day) 
    {
        //判断年份的范围（3岁到100岁之间) 
        var time = now_year - year; 
        if(time >= 3 && time <= 100) 
        {
            return true; 
        }
        return false;
    }
    return false; 
}
$(function(){
var today=new Date();
    var H=today.getFullYear();
    var M=today.getMonth()+1;
    var R=today.getDate();
    var h=today.getHours();
    var mm=today.getMinutes();
    var ss=today.getSeconds();
  	var xitong=H+"-"+M+"-"+R+" "+h+":"+mm+":"+ss;
  	$("#xx").val(xitong);
  	})
</script>
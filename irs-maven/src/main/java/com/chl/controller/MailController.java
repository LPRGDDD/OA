package com.chl.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.beust.jcommander.Parameter;
import com.chl.entity.BasePojo;
import com.chl.entity.Mail;
import com.chl.service.MailService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/mail")
public class MailController {
@Autowired
   private MailService ser;
@RequestMapping("/find.action")
public String find(){
	return "page/view/chl/transform";
}
@RequestMapping("/login")
@ResponseBody
public String login(HttpSession session){
    session.setAttribute("user_name","张三");
    session.setAttribute("user_id","1");
	return "success";
   
}

@RequestMapping("/getAllUsers")
public @ResponseBody Map getAllUsers(String keyWord){
    List<Map> list=ser.getAllUsers(keyWord);
    Map m=new HashMap();
    m.put("code", "0");
    m.put("msg","");
    m.put("count",list.size());
    m.put("data",list);
    System.out.println(list);
    return m;
}


//接收内容 发送邮件
@RequestMapping("/sendEmail")
/**
 * 
 * @param list
 * @param theme
 * @param userId
 * @param content
 * @return
 */
public @ResponseBody String sendEmail(BasePojo list,String theme, Integer user_id, String content){
	for(int i=0;i<list.getList().size();i++){
      list.getList().get(i).put("theme",theme);
      list.getList().get(i).put("user_id",user_id);
      list.getList().get(i).put("content",content);
      ser.addMail(list.getList().get(i));
  }
  return "success";
}
//添加到草稿箱
/**
 * 
 * @param list
 * @param theme
 * @param user_id
 * @param content
 * @return
 */
  @RequestMapping("/saveMail")
    public @ResponseBody String TJMail(BasePojo list,String theme, Integer user_id, String content){
    	for(int i=0;i<list.getList().size();i++){
          list.getList().get(i).put("theme",theme);
          list.getList().get(i).put("user_id",user_id);
          list.getList().get(i).put("content",content);
          ser.saveMail(list.getList().get(i));
      }
      return "success";
    }

//根据用户Id 查询自己的未读邮件收件箱
@RequestMapping("/getMail")
public @ResponseBody Map getEmail(String keyWord,Integer limit,Integer pageNum,Integer userId){
    PageHelper.startPage(pageNum,limit);
    List<Map> list=ser.getMail(keyWord,userId);
    PageInfo<Map> info=new PageInfo<Map>(list);
    Map map = new HashMap();
    map.put("code", 0);
    map.put("msg", "");
    map.put("count",info.getTotal());
    map.put("data", info.getList());
    return map;
}
//根据用户 查询自己的已发送
@RequestMapping("/selectyMail")
public @ResponseBody Map selectyMail(String keyWord,Integer limit,Integer page,Integer id){
  PageHelper.startPage(page,limit);
  List<Map> list=ser.getMail(keyWord,id);
  PageInfo<Map> info=new PageInfo<Map>(list);
  Map map = new HashMap();
  map.put("code", 0);
  map.put("msg", "");
  map.put("count",info.getTotal());
  map.put("data", info.getList());
  return map;
}






//根据userId 查询收件箱已读邮件
/*@RequestMapping("/selectsMail")
public @ResponseBody Map selectsEmail(String keyWord,Integer limit,Integer pageNum,Integer userId){
    PageHelper.startPage(pageNum,limit);
    List<Map> list=ser.getMail(keyWord,userId);
    PageInfo<Map> info=new PageInfo<Map>(list);
    Map map = new HashMap();
    map.put("code", 0);
    map.put("msg", "");
    map.put("count",info.getTotal());
    map.put("data", info.getList());
    return map;
}*/


//查询未发送邮件 草稿箱
@RequestMapping("/selectWMail")
public @ResponseBody Map selectWMail(String keyWord,Integer limit,Integer page,Integer userId){
    PageHelper.startPage(page,limit);
    System.out.println(userId);
     List<Map> list=ser.selectWMail(keyWord,userId);
    PageInfo<Map> info=new PageInfo<Map>(list);
    Map map = new HashMap();
    map.put("code", 0);
    map.put("msg", "");
    map.put("count",info.getTotal());
    map.put("data", info.getList());
    return map;
}
//查询收件箱详情
@RequestMapping("/selectXMail")
public @ResponseBody List selectXMail(Integer emailId){
	System.out.println("已发送");
	return ser.selectXMail(emailId);
	
}
//    删除已收邮件
@RequestMapping("/delMail")
public @ResponseBody
String delMail(Integer emailId) {
	System.out.println(emailId);
    int result=ser.delMail(emailId);
    if (result!=0) {
    	return "success";
	}return "error";
}
// 删除到垃圾箱
@RequestMapping("/deljMail")
public @ResponseBody
String deljMail(Integer emailId){
	ser.deljMail(emailId);
	return "success";
}
//根据ID查询

/*@RequestMapping("/selectById")
public  @ResponseBody
Map selectById(HttpServletRequest request, Integer emailId){
      return ser.selectById(emailId);   
}*/


@RequestMapping("/selectById/{emailId}")
public String selectById(HttpServletRequest req,@PathVariable("emailId")int id){
	Map map=ser.selectById(id);
	req.setAttribute("map", map);
	return "page/view/chl/update";
}







//修改草稿箱
@RequestMapping("/updateMail")
public @ResponseBody
String updateUser(String subject,String content,Integer emailId) {
  ser.updateMail(subject,content,emailId);
	  return "success";
}
//查询垃圾箱
@RequestMapping("/selectlMail")
public @ResponseBody Map selectlMail(String keyWord,Integer limit,Integer page,Integer userId){
    PageHelper.startPage(page,limit);
    System.out.println(userId);
     List<Map> list=ser.selectlMail(keyWord,userId);
    PageInfo<Map> info=new PageInfo<Map>(list);
    Map map = new HashMap();
    map.put("code", 0);
    map.put("msg", "");
    map.put("count",info.getTotal());
    map.put("data", info.getList());
    return map;
}
//恢复邮件
@RequestMapping("/updateLMail")
public @ResponseBody
String updateLMail(Integer emailId){
	ser.updateLMail(emailId);
	return "success";
}

}

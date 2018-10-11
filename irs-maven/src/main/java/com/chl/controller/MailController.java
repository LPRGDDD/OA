package com.chl.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

//根据userId 查询自己的未读邮件
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
//查询所有未读邮件
//查询未发送邮件 草稿箱
@RequestMapping("/selectWMail")
public @ResponseBody Map selectWMail(String keyWord,Integer limit,Integer pageNum,Integer userId){
    PageHelper.startPage(pageNum,limit);
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
	System.out.println("12345");
	 return ser.selectXMail(emailId);
	
}
//    删除已收邮件
@RequestMapping("/delMail")
public @ResponseBody
String delMail(Integer emailId) {
	System.out.println(emailId);
    ser.delMail(emailId);
    return "success";
}
//根据ID查询

@RequestMapping("/selectById")
public  @ResponseBody
Map selectById(HttpServletRequest request, Integer emailId){
      return ser.selectById(emailId);   
}

//修改草稿箱
@RequestMapping("/updateMail")
public @ResponseBody
String updateUser(BasePojo map) {
  System.out.println(map.getMap());
  ser.updateMail(map.getMap());
  return "success";
}

}

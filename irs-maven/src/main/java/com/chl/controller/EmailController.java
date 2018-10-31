package com.chl.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chl.service.EmailService;

@Controller
@RequestMapping("/email")
public class EmailController {
@Autowired
private EmailService ser;
@RequestMapping("/login")
@ResponseBody
public String login(HttpSession session){
    session.setAttribute("user_name","ÕÅÈý");
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

}

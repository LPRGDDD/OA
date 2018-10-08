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
import com.chl.service.AddressService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/address")
public class AddressController {
      @Autowired
      private AddressService ser;
      @RequestMapping("/login")
      public void login(HttpSession session) {
          session.setAttribute("userName", "����");
          session.setAttribute("userID", "2");
      }
      @RequestMapping("/find.action")
            public String find(){
    		return "page/view/chl/address";

      }
      //    ��ѯͨѶ¼
    @RequestMapping("/getAddressBook")
    public @ResponseBody
    Map getAddressBook(String keyWord, Integer limit, Integer pageNum, Integer userId) {
        PageHelper.startPage(pageNum, limit);
        List<Map> list = ser.getAddressBook(keyWord, userId);
        PageInfo<Map> info = new PageInfo<Map>(list);
        Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count", info.getTotal());
        map.put("data", info.getList());
        return map;
    }

    //    ��ѯ����
    @RequestMapping("/getGroup")
    public @ResponseBody
    Map getGroup(String keyWord, Integer userId) {
        List<Map> list = ser.getGroup(keyWord, userId);
        Map m = new HashMap();
        m.put("code", "0");
        m.put("msg", "");
        m.put("count", list.size());
        m.put("data", list);
        return m;
    }

    //��ӷ���
    @RequestMapping("/addGroup")
    public @ResponseBody
    String addGroup(String group_name, Integer userId) {
        ser.addGroup(group_name, userId);
        return "success";
    }

    //    ��ѯ����
    @RequestMapping("/findGroup")
    public @ResponseBody
    List<Map> findGroup(String keyWord, Integer userId) {
    	return ser.getGroup(keyWord, userId);
    }

    //    �����ϵ��
    @RequestMapping("/addUser")
    public @ResponseBody
    String addUser(BasePojo map) {
    	System.out.println("danf");
        ser.addUser(map.getMap());
        return "success";
    }

      //����ID��ѯ
    
    @RequestMapping("/selectById")
    public  @ResponseBody
    Map selectById(HttpServletRequest request, Integer add_id){
          return ser.selectById(add_id);   
    }
    //    �޸���ϵ��
    @RequestMapping("/updateUser")
    public @ResponseBody
    String updateUser(BasePojo map) {
        System.out.println(map.getMap());
        ser.updateUser(map.getMap());
        return "success";
    }

    //    ɾ����ϵ��
    @RequestMapping("/delUser")
    public @ResponseBody
    String delUser(Integer addId) {
    	System.out.println(addId);
       int i=ser.delUser(addId);
       if(i>0){
    	   return "success";
       }
        return "Error";
    }
    
}

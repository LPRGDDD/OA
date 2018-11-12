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
          session.setAttribute("userName", "张三");
          session.setAttribute("userID", "2");
      }
      @RequestMapping("/find.action")
            public String find(){
    		return "page/view/chl/address";

      }
      //    查询通讯录
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

    //    查询分组
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

    //添加分组
    @RequestMapping("/addGroup")
    public @ResponseBody
    String addGroup(String group_name, Integer userId) {
        ser.addGroup(group_name, userId);
        return "success";
    }

    //    查询分组
    @RequestMapping("/findGroup")
    public @ResponseBody
    List<Map> findGroup(String keyWord, Integer userId) {
    	return ser.getGroup(keyWord, userId);
    }

    //    添加联系人
    @RequestMapping("/addUser")
    public @ResponseBody
    String addUser(BasePojo map) {
    	System.out.println("danf");
        ser.addUser(map.getMap());
        return "success";
    }

      //根据ID查询
    
    @RequestMapping("/selectById")
    public  @ResponseBody
    Map selectById(HttpServletRequest request, Integer add_id){
          return ser.selectById(add_id);   
    }
    //    修改联系人
    @RequestMapping("/updateUser")
    public @ResponseBody
    String updateUser(BasePojo map) {
        System.out.println(map.getMap());
        ser.updateUser(map.getMap());
        return "success";
    }

    //    删除联系人
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
    
    
    
//  查询所有部门
  @RequestMapping("/getAllDept")
  public @ResponseBody Map getAllDept(String keyWord) {
      List<Map> list = ser.getAllDept(keyWord);
      Map m = new HashMap();
      m.put("code", "0");
      m.put("msg", "");
      m.put("count", list.size());
      m.put("data", list);
      return m;
  }
//  发布公告
  @RequestMapping("/sendNotce")
  public @ResponseBody String sendNotce(BasePojo list,Integer type_id){
      for (int i = 0; i < list.getList().size(); i++) {
          list.getList().get(i).put("theme", list.getTheme());
          list.getList().get(i).put("userId", list.getUserId());
          list.getList().get(i).put("content", list.getContent());
          list.getList().get(i).put("type_id",type_id);
          ser.addNotify(list.getList().get(i));
      }
      return "success";
  }
//  查询公告类型
  @RequestMapping("/getAllNotifyType")
  public @ResponseBody List<Map> getAllNotifyType(){
	  System.out.println("所有");
       return ser.getAllNotifyType();
  }
//  根据userid查询部门
  @RequestMapping("/getDeptByUserId")
  public @ResponseBody int getDeptByUserId(Integer userId){
      return ser.getDeptByUserId(userId);
  }
//  根据当前登陆人的部门编号查询公告
  @RequestMapping("/getNotify")
  public @ResponseBody Map getNotify(String keyWord, Integer limit, Integer pageNum,Integer deptId){
      PageHelper.startPage(pageNum, limit);
      List<Map> list = ser.getNotify(keyWord, deptId);
      PageInfo<Map> info = new PageInfo<Map>(list);
      Map map = new HashMap();
      map.put("code", 0);
      map.put("msg", "");
      map.put("count", info.getTotal());
      map.put("data", info.getList());
      return map;
  }
//  公告管理 查询所有公告
@RequestMapping("/getAllNotify")
public @ResponseBody Map getAllNotify(String keyWord, Integer limit, Integer pageNum){
  PageHelper.startPage(pageNum, limit);
  List<Map> list = ser.getAllNotify(keyWord);
  PageInfo<Map> info = new PageInfo<Map>(list);
  Map map = new HashMap();
  map.put("code", 0);
  map.put("msg", "");
  map.put("count", info.getTotal());
  map.put("data", info.getList());
  return map;
}  
@RequestMapping("/sendNotce.action")
public String find1(){
return "page/view/chl/notice";

}
@RequestMapping("/noticegl.action")
public String find2(){
return "page/view/chl/noticegl";

}@RequestMapping("/showNotice.action")
public String find3(){
return "page/view/chl/showNotice";

}
    
    
}

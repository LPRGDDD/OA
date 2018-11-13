package com.zx.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.irs.pojo.TbAdmin;
import com.zx.dao.goodtypeMapper;
import com.zx.entity.EmployeeTree;
import com.zx.entity.goodtype;
import com.zx.entity.shop;
import com.zx.service.shopService;

@Controller
@RequestMapping("shop")
public class shopController {
@Autowired
private shopService service;
@Autowired
private goodtypeMapper dao;

@ResponseBody
@RequestMapping("/find")
	public List<shop> recivJson1(shop s) throws IOException{
		List<shop> list=service.findAll();
		return list;
	}	
//	根据ID查询
	@ResponseBody
	@RequestMapping("/findById")
	public List<shop> findById(HttpServletRequest req,int sId){
		List<shop> list=service.findById(sId);
		return list;
}
	@ResponseBody
	@RequestMapping("/finddet")
		public List<shop> recivJson3(shop s) throws IOException{
			List<shop> list=service.findAll();
			return list;
		}	
		
//	修改商品信息
		 @ResponseBody
			@RequestMapping("/updateshop")
			public int update2(shop s) throws IOException{
		  		int num=service.updateshop(s);
		  		if(num>0){
		  			System.out.println("成功");
		  		}
				return num;
			}
//		 录入商品
		 @ResponseBody
			@RequestMapping("/addshop") 
		 public int addshop(shop s) throws IOException{
		  		int num=service.addshop(s);
		  		if(num>0){
		  			System.out.println("成功");
		  		}
				return num;
			}
		 @ResponseBody
			@RequestMapping("/findshop")  
		 public List<shop> recivJson4(int goId) throws IOException{
				List<shop> list=service.findshop(goId);
				return list;
			}	
		 @ResponseBody
			@RequestMapping("/findvag")  
		 public List<Map<String,Object>> recivJson5(int cId, int goId, int sId){
			 Map<String, Object> map1 = new HashMap<String, Object>();
	         map1.put("cId", cId);
	         map1.put("goId", goId);
	         map1.put("sId", sId);
	         System.out.println(map1);
	         List<Map<String, Object>> map=service.findvag(map1);
				return map;
			}
		 @ResponseBody
			@RequestMapping("/findshop2")  
		 public List<shop> recivJson6(int goId) throws IOException{
				List<shop> list=service.findshop(goId);
				return list;
			}	
}
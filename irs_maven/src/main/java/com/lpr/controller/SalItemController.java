package com.lpr.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lpr.entity.SalItem;
import com.lpr.service.SalItemService;
@Controller
@RequestMapping("/salitem")
public class SalItemController {
	@Autowired
	//自动注入
	private SalItemService service;
	//跳转薪酬项目页面
	@RequestMapping("/findxc.action")
	public String findxc(){
		return "page/view/lpr/SalItem";
	}
	//薪酬项目定义表的查询
	@ResponseBody
	@RequestMapping("findAll")
	public List<Map<String, Object>> findAll() {
		List<Map<String, Object>> list=service.findAll();
		return list;
	}
	//薪酬项目定义表的添加
	@ResponseBody
	@RequestMapping("insert")
	public void insert(SalItem salitem,HttpServletRequest request,HttpServletResponse response) throws IOException {
		System.out.println(salitem);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		int result=service.insert(salitem);
		if (result!=0) {
			out.print("添加成功！");
		}else{
			out.print("添加失败！");
		}
	}
	//薪酬项目定义表的编辑
	@RequestMapping("update")
    public void update(SalItem salitem,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		int result=service.update(salitem);
		if (result!=0) {
			out.print("修改成功！！！");
		}else{
			out.print("修改失败！！！");
		}
    	
    }
	//薪酬项目定义表的删除
	@RequestMapping("delete")
    public void delete(int itemId,HttpServletResponse response) throws IOException{
    	response.setContentType("text/html;charset=utf-8");
    	PrintWriter out=response.getWriter();
    	 int result=service.delete(itemId);
    	 if(result!=0){
   		   out.print("删除成功！！！");
   	   }else{
   		   out.print("删除失败！！！");
   	   }
    }
    //薪酬项目定义表编辑之前的查询
    @ResponseBody
    @RequestMapping("selectByPrimaryKey")
   public SalItem selectByPrimaryKey(Integer itemId){
    	System.out.println(itemId);
    	SalItem si=service.selectByPrimaryKey(itemId);
		return si;
    }
}

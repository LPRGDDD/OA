package com.zx.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.zx.entity.good_type;
import com.zx.entity.goodtype;
import com.zx.service.deptService2;

@Controller
@RequestMapping("goodtype2")
public class gtController2 {
  @Autowired
  private deptService2 service;
  /*
   * 页面跳转
   * 
   * */
  @RequestMapping("/find.action")
  public String find(){
	return "page/view/zx/MyJsp";
  }
  @ResponseBody
  @RequestMapping("/sel2")
	public List<Map> recivJson1(Map map) throws IOException{
		List<Map> list=service.queryAll();
		return list;
	}
	@ResponseBody
	@RequestMapping("findone")
	public List<Map> recivJson2(@RequestBody int go_id,Map map) throws IOException{
		List<Map> list=service.findone(go_id);
		return list;
	}
	@RequestMapping("/save")
	public String save(@RequestBody goodtype gt,Map map,HttpServletResponse response) throws IOException {
		int result= service.insert(gt);
		map.put("good_type", gt);
		return "list";
	}
	  @RequestMapping("/delete")
	  	public void delete(@RequestBody int go_id,HttpServletResponse response) throws IOException{
	  		response.setContentType("text/html;charset=utf-8");
	  		PrintWriter out=response.getWriter();
	  		int num=service.delete(go_id);
	  		if (num>0) {
	  			out.print("删除成功");
	  		}else{
	  			out.print("删除失败");
	  		}
	  	}
	  @ResponseBody
	  @RequestMapping("/updateone")
		public void updateone(@RequestBody good_type gt,Map map,HttpServletResponse response) throws IOException{
	  		response.setContentType("text/html;charset=utf-8");
	  		PrintWriter out=response.getWriter();
	  		int num=service.updateone(gt);
	  		System.out.println(gt);
	  		System.out.println(gt.getGo_name()+":"+gt.getGo_id()+":"+gt.getC_id());
	  		if (num>0) {
	  			out.print("成功成功");
	  		}else{
	  			out.print("失败失败");
	  		}
	  	}
	  @ResponseBody
	  @RequestMapping("/findbyid")
	  public List<Map> recivJson2(Map map) throws IOException{
			List<Map> list=service.findByid();
			return list;
		}
	  @ResponseBody
	  @RequestMapping("/findtype")
	  public List<goodtype> recivJson3(int cId) throws IOException{
			List<goodtype> list=service.findtype(cId);
			System.out.println(list);
			return list;
		}
	  @ResponseBody
	  @RequestMapping("/findtype2")
	  public List<goodtype> recivJson4(int goId) throws IOException{
			List<goodtype> list=service.findtype2(goId);
			System.out.println(list);
			return list;
		}
}

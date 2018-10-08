package com.zx.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zx.entity.apply;
import com.zx.entity.shop;
import com.zx.service.appService;

@Controller
@RequestMapping("apply")
public class appController {
	@Autowired
	private appService app;
	/*页面跳转*/
	@RequestMapping("/find.action")
	public String find(){
		return "page/view/zx/table2";
	}
	@RequestMapping("/find2.action")
	public String find2(){
		return "page/view/zx/table";
	}
	  @ResponseBody
	  @RequestMapping("/findapp")
		public List<Map> recivJson1(Map map) throws IOException{
		List<Map> list=app.findAll();
		Map<String, Object> map2=new HashMap<String, Object>();
		map.put("code", 0);
		map.put("msg", "");
		map.put("count", 5);
		map.put("data", list);
			return list;
		}
		@ResponseBody
		@RequestMapping("/save2")
		public int save(apply ap,Map map,HttpServletResponse response) throws IOException {
			int result= app.insert(ap);
			System.out.println(ap.getApBei());
			map.put("good_type", ap);
			return result;
		}
		@ResponseBody
		@RequestMapping("/query")
		public Map getAll(int page,int limit) {
			System.out.println(page+limit);
			PageHelper.startPage(page,limit);
			List<Map> list=app.getAll();
			PageInfo<Map> info=new PageInfo<Map>(list);
			Map map = new HashMap();
	        map.put("code", 0);
	        map.put("msg", "");
	        map.put("count",info.getTotal());
	        map.put("data", info.getList());
			return map;
		}
		@ResponseBody
		@RequestMapping("/deleteapp")
		public int deleteapp(@RequestParam int ApId) throws IOException{
	  		int num=app.deleteone(ApId);
	  		System.out.println(ApId);
			return ApId;
		}
		/*详情查询*/
		@RequestMapping("/findById/{ApId}")
		public String findById(HttpServletRequest req,@PathVariable("ApId") int ApId){
			List<Map> list=app.findById(ApId);
			
			System.out.println(list);
			req.setAttribute("list", list);
			return "page/view/zx/detail";
		}
		@ResponseBody
		  @RequestMapping("/findByState")
			public List<Map> recivJson4(Map map,@RequestParam int id) throws IOException{
				List<Map> list=app.findByState(id);
				return list;
			}
		@ResponseBody
		@RequestMapping("/updateState")
		public int deleteapp1(@RequestParam int ApId) throws IOException{
	  		int num=app.updateState(ApId);
	  		System.out.println(ApId);
			return num;
		}
		@ResponseBody
		  @RequestMapping("/findByState2")
			public List<Map> recivJson5(Map map) throws IOException{
				List<Map> list=app.findByState2();
				return list;
			}
		@ResponseBody
		@RequestMapping("/findByState3")
		public List<Map> finddetail(@RequestParam int ApId) throws IOException{
			  List<Map> list=app.findByState3(ApId);
			return list;
		}
		@ResponseBody
		@RequestMapping("/updateState1")
		public int update2(@RequestParam int ApId) throws IOException{
	  		int num=app.updateState1(ApId);
	  		System.out.println(ApId);
			return num;
		}
		@ResponseBody
		@RequestMapping("/findBydetail")
		public List<Map> finddetai5(@RequestParam int ApId) throws IOException{
			  List<Map> list=app.findBydetail(ApId);
			return list;
		}
		@ResponseBody
		@RequestMapping("/updateNum")
		public int finddetai6(shop s) throws IOException{
			  int a=app.updateNum(s);
			return a;
		}
} 

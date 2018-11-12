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
	@RequestMapping("find3.action")
	public String find3(){
		return "page/view/zx/report";
		
	}
	@RequestMapping("find4.action")
	public String find4(){
		return "page/view/zx/rati";
		
	}
	@RequestMapping("find5.action")
	public String find5(){
		return "page/view/zx/shenpi";
		
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
		public Map getAll(int page,int limit,@RequestParam int id) {
			System.out.println(page+limit);
			PageHelper.startPage(page,limit);
			List<Map> list=app.getAll(id);
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
			return num;
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
		@RequestMapping("/findById2")
		public List<Map> findById2(int id) throws IOException{
	  		List<Map> list=app.findById2(id);
	  		System.out.println(id);
			return list;
		}
		@ResponseBody
		@RequestMapping("/findById3")
		public List<Map> findById3(int ApId) throws IOException{
	  		List<Map> list=app.findById3(ApId);
	  		System.out.println(ApId);
			return list;
		}
		@ResponseBody
		  @RequestMapping("/findByState")
			public List<Map> recivJson4(Map map) throws IOException{
				List<Map> list=app.findByState();
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
		@RequestMapping("/findByState4")
		public List<Map> finddetail4(int id) throws IOException{
			  List<Map> list=app.findByState4(id);
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
		@ResponseBody
		@RequestMapping("/insapp")
		public void finddetai7(apply a) throws IOException{
			   app.insapp(a);
		}
		@ResponseBody
		@RequestMapping("findcondition")
		public List<Map<String,Object>> WaiSelect(int cId,int goId,int sId){
			Map<String, Object> map1 = new HashMap<String, Object>();
			map1.put("cId", cId);
			map1.put("goId", goId);
			map1.put("sId", sId);
			List<Map<String, Object>> map=app.findBycondition(map1);
			return map;
		}
		@ResponseBody
		@RequestMapping("/updateState4")
		public int update4(@RequestParam int ApId) throws IOException{
	  		int num=app.updateByState4(ApId);
	  		System.out.println(ApId);
			return num;
		}
		@ResponseBody
		@RequestMapping("/findByState5")
		public List<Map> finddetail5(int id) throws IOException{
			  List<Map> list=app.findByState5(id);
			return list;
		}
		@ResponseBody
		@RequestMapping("/updateState5")
		public int update5(@RequestParam int ApId) throws IOException{
	  		int num=app.updateByState5(ApId);
	  		System.out.println(ApId);
			return num;
		}	
		@ResponseBody
		@RequestMapping("/insappl")
		public void finddetai8(apply a) throws IOException{
			   app.insappl(a);
		}
		@RequestMapping("deletemany")
		 public int deleteMany(int[] chk_value) {
			int a=app.deleteMany(chk_value);
			return a;
		 }
} 

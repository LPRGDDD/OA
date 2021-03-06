package com.lwb.controller;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lwb.entity.Plan;
import com.lwb.service.PlanService;

@Controller
@RequestMapping("/plan")
public class PlanController {
	@Autowired
	private PlanService ser;
	/*跳转页面*/
	@RequestMapping("/findplan.action")
	public String find(){
		return "page/view/lwb/hr_jhgl";
	}
	/*跳转页面*/
	@RequestMapping("/findplan0.action")
	public String find0(){
		return "page/view/lwb/hr_jhsp";
	}

	@RequestMapping("/queryPlan")
	public @ResponseBody Map queryPlan(String keyWord,Integer page,Integer limit) {
		PageHelper.startPage(page,limit);
		List<Map> list=ser.queryPlan(keyWord);
		PageInfo<Map> info=new PageInfo<Map>(list);
		Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	@RequestMapping("/userAll")
	@ResponseBody
	public List<Map<String,Object>> userAll(){
		List<Map<String,Object>> list=ser.userAll();
		return list;
	}
	
	@RequestMapping("/savePlan")
	public void savePlan(Plan p,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		int id=ser.savePlan(p);
		if (id>0) {
			out.print("添加成功");
		}else{
			out.print("添加失败");
		}
	}
	
	@RequestMapping("/planById/{hr_plan_id}")
	public String planById(HttpServletRequest req,@PathVariable("hr_plan_id") int hr_plan_id){
		Map<String,Object> p=ser.planById(hr_plan_id);
		req.setAttribute("p", p); 
		return "page/view/lwb/planUpdate";
	}


	@RequestMapping("/updatePlan")
	public void updatePlan(Plan p,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out =response.getWriter();
		int result=ser.updatePlan(p);
		if (result!=0) {
			out.print("修改成功");
		}else {
			out.print("修改失败");
		}
	}
	/*计划删除*/
	@RequestMapping("/deletePlan")
	@ResponseBody
	public void deletePlan(int id,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out =response.getWriter();
		int result=ser.deletePlan(id);
		if (result!=0) {
			out.print("删除成功");
		}else {
			out.print("删除失败");
		}
	}
	
	
	@RequestMapping("/fianAll0")
	public @ResponseBody Map fianAll0(String keyWord,Integer uid,Integer page,Integer limit) {
		PageHelper.startPage(page,limit);
		List<Map> list=ser.fianAll0(keyWord, uid);
		PageInfo<Map> info=new PageInfo<Map>(list);
		Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	@RequestMapping("/fianAll1")
	public @ResponseBody Map fianAll1(String keyWord,Integer uid,Integer page,Integer limit) {
		PageHelper.startPage(page,limit);
		List<Map> list=ser.fianAll1(keyWord, uid);
		PageInfo<Map> info=new PageInfo<Map>(list);
		Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	@RequestMapping("/fianAll2")
	public @ResponseBody Map fianAll2(String keyWord,Integer uid,Integer page,Integer limit) {
		PageHelper.startPage(page,limit);
		List<Map> list=ser.fianAll2(keyWord, uid);
		PageInfo<Map> info=new PageInfo<Map>(list);
		Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	
	
	
	
	@RequestMapping("/updatestate1")
	public void updatestate1(int id,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out =response.getWriter();
		int result=ser.updatestate1(id);
		if (result!=0) {
			out.print("修改成功");
		}else {
			out.print("修改失败");
		}
	}
	
	@RequestMapping("/updatestate2")
	public void updatestate2(int id,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out =response.getWriter();
		int result=ser.updatestate2(id);
		if (result!=0) {
			out.print("修改成功");
		}else {
			out.print("修改失败");
		}
	}
}

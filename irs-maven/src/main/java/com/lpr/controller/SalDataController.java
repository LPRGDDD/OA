package com.lpr.controller;

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
import com.lpr.entity.PersonXc;
import com.lpr.entity.SalData;
import com.lpr.service.SalDataService;
/**
 * 
 * @author 郭迪
 *
 */
@Controller
@RequestMapping("/saldata")
public class SalDataController {
   /*自动注入*/
	@Autowired
	private SalDataService service;
	//页面跳转
	@RequestMapping("/find.action")
	public String find(){
		return "page/view/lpr/SalaryFlowsb";
	}
	//根据状态（1,0）进行分页查询
	@RequestMapping("findByStatus")
	@ResponseBody
	public Map findByStatus(Integer page,Integer limit){
		PageHelper.startPage(page,limit);
		List<Map> list=service.findByStatus();
		PageInfo<Map> info=new PageInfo<Map>(list);
		Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	@RequestMapping("findByStatus1")
	@ResponseBody
	public Map findByStatus1(Integer page,Integer limit){
		PageHelper.startPage(page,limit);
		List<Map> list=service.findByStatus1();
		PageInfo<Map> info=new PageInfo<Map>(list);
		Map map = new HashMap();
		map.put("code", 0);
		map.put("msg", "");
		map.put("count",info.getTotal());
		map.put("data", info.getList());
		return map;
	}
	@RequestMapping("/shangbao/{salaryflow_id}")
	public String shangbao(HttpServletRequest req,@PathVariable("salaryflow_id") int salaryflow_id){
		req.setAttribute("salaryflow_id", salaryflow_id);
		return "page/view/lpr/shangbao";
	}
	@RequestMapping("/chayue/{salaryflow_id}")
	public String chayue(HttpServletRequest req,@PathVariable("salaryflow_id") int salaryflow_id){
		req.setAttribute("salaryflow_id", salaryflow_id);
		return "page/view/lpr/chayue";
	}
	//员工薪酬基数的批量添加
		@RequestMapping("/insert")
		@ResponseBody
		public void insert(SalData s,String userId,HttpServletRequest request,HttpServletResponse response) throws IOException{
			System.out.println(s);
			System.out.println(userId);
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			int result=service.insert(s, userId);
			if (result!=0) {
				out.print("执行成功！");
			}else{
				out.print("执行失败！");
			}
		}
}

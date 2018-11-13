package com.lwb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lwb.entity.Hire;

import com.lwb.service.HireService;

@Controller
@RequestMapping("/hire")
public class HireController {
	/*
	 * 招聘录用
	 * */
    @Autowired
    private HireService ser;
    
    /*跳转页面*/
	@RequestMapping("/findhire.action")
	public String find(){
		return "page/view/lwb/hr_hire";
	}
	@RequestMapping("/queryHire")
	@ResponseBody
	public Map queryHire(Integer page,Integer limit) {
		PageHelper.startPage(page,limit);
		List<Map> list=ser.queryHire();
		PageInfo<Map> info=new PageInfo<Map>(list);
		Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	
    //查询计划
    @RequestMapping("/hireSePl")
	@ResponseBody
	public List<Map> hireSePl(){
		List<Map> list=ser.hireSePl();
		return list;
	}
    //根据计划查询计划内人员
	@RequestMapping("/hireSeTa")
	@ResponseBody
	public List<Map> hireSeTa(int id){
		List<Map> list=ser.hireSeTa(id);
		return list;
	}
	//根据人员查询出数据，并显示在页面上
	@RequestMapping("/hTalentId")
	@ResponseBody
	public List<Map> hTalentId(int id){
		List<Map> list=ser.hTalentId(id);
		return list;
	}
	   //查询部门
		@RequestMapping("/seleDept")
		@ResponseBody
		public List<Map> seleDept(){
			List<Map> list=ser.seleDept();
			return list;
		}
		
		
		@RequestMapping("/saveHire")
		public void saveHire(Hire h,HttpServletResponse response) throws IOException{
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			int sid=ser.saveHire(h);
			ser.updateStats4(h.getHrTalentsId());
			if (sid>0) {
				out.print("添加成功");
			}else{
				out.print("添加失败");
			}
		}
}

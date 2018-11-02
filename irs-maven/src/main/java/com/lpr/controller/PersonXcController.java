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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lpr.entity.PersonXc;
import com.lpr.service.PersonXcService;
@Controller
@RequestMapping("/personxc")
public class PersonXcController {
	@Autowired
	private PersonXcService service;
	/*薪酬基数的跳转*/
	@RequestMapping("/find.action")
	public String findxcjs(){
		return "page/view/lpr/PersonXc";
	}
	//根据用户ID查询当前用户薪酬基数
	@ResponseBody
	@RequestMapping("findAll")
	public List<Map<String, Object>> findAll(Integer userId){
		List<Map<String, Object>> list=service.findAll(userId);
		return list;
	}
	//薪酬基数设置表的分页查询
	@ResponseBody
	@RequestMapping("findPage")
	public Map findPage(Integer page,Integer limit){
		PageHelper.startPage(page,limit);
		List<Map> list=service.findPage();
		PageInfo<Map> info=new PageInfo<Map>(list);
		Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	//员工薪酬基数的批量添加
	@RequestMapping("/insert")
	@ResponseBody
	public void insert(PersonXc xc,String userId,HttpServletRequest request,HttpServletResponse response) throws IOException{
		System.out.println(xc);
		System.out.println(userId);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		int result=service.PLinsert(xc, userId);
		if (result!=0) {
			out.print("添加成功！");
		}else{
			out.print("添加失败！");
		}
	}
	//ID查询表
	@RequestMapping("/findByUid")
	@ResponseBody
	public List<Map> findByUid(Integer uid){
		List<Map> p=service.findByUid(uid);
		return p;
	}
}

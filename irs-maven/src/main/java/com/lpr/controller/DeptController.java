package com.lpr.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lpr.service.DeptService;
@Controller
@RequestMapping("/dept")
public class DeptController {
	/*自动注入*/
	@Autowired
	private DeptService service;
	@ResponseBody
	@RequestMapping("findAll")
	//部门表的查询
	public List<Map<String, Object>> findAll(){
		List<Map<String, Object>> list=service.findAll();
		return list;
	}
	@RequestMapping("/findUser")
	public @ResponseBody Map findUser(Integer page,Integer limit,Integer deptId) {
		System.out.println(deptId);
		PageHelper.startPage(page, limit);
		List<Map> list=service.findUser(deptId);
		PageInfo<Map> info=new PageInfo<Map>(list);
		Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
}

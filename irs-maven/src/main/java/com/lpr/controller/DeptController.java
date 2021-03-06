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
/**
 * 部门表
 * @author 刘培然
 *
 */
@Controller
@RequestMapping("/dept")
public class DeptController {
	/*自动注入*/
	@Autowired
	private DeptService service;
	@RequestMapping("/find.action")
	public String find(){
		return "page/view/lpr/Dept";
	}
	@RequestMapping("/mailfind.action")
	public String mail(){
		return "page/view/chl/transform";
	}
	@ResponseBody
	@RequestMapping("findAll")
	//部门表的查询
	public List<Map<String, Object>> findAll(){
		List<Map<String, Object>> list=service.findAll();
		return list;
	}
	//根据部门编号传员工
	@RequestMapping("/findUser")
	public @ResponseBody Map findUser(Integer page,Integer limit,Integer deptId) {//page是当前页，limit是每页显示的页数
		System.out.println(deptId);
		PageHelper.startPage(page, limit);//分页插件
		List<Map> list=service.findUser(deptId);
		PageInfo<Map> info=new PageInfo<Map>(list);//插件里面的一个方法pageInfo,用来处理list
		Map map = new HashMap();
		//往前台传map
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	//查询所有员工
	@RequestMapping("/findAllUser")
	public @ResponseBody Map findAllUser(Integer page,Integer limit) {//page是当前页，limit是每页显示的页数
		PageHelper.startPage(page, limit);//分页插件
		List<Map> list=service.findAllUser();
		PageInfo<Map> info=new PageInfo<Map>(list);//插件里面的一个方法pageInfo,用来处理list
		Map map = new HashMap();
		//往前台传map
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
}

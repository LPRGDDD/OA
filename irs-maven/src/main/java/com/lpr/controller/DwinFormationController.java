package com.lpr.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lpr.service.DwinFormationService;
/**
 * 单位信息表
 * @author 刘培然
 *
 */
@Controller
@RequestMapping("/dwinformation")
public class DwinFormationController {
	//自动注入
	@Autowired
	private DwinFormationService service;
	@RequestMapping("/find.action")
	public String find(){
		return "page/view/lpr/DwinFormation";
	}
	//单位信息表的查询
	@ResponseBody
	@RequestMapping("findAll")
	public List<Map<String, Object>> findAll(){
		List<Map<String, Object>> list=service.findAll();
		return list;
		
	}
}

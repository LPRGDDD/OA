package com.lpr.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lpr.dao.SafeFactorMapper;
import com.lpr.service.SafeFactorService;
/**
 * 保险系数设置表
 * @author 刘培然
 *
 */
@Controller
@RequestMapping("/safefactor")
public class SafeFactorController {
	@Autowired
	/*自动注入*/
	private SafeFactorService service;
	//保险系数表的查询方法
	@RequestMapping("findAll")
	public @ResponseBody List<Map<String, Object>> findAll() {
		List<Map<String, Object>> list=service.findAll();
		return list;
	}
}

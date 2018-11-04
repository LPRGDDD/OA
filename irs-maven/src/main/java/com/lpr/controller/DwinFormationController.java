package com.lpr.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lpr.service.DwinFormationService;
@Controller
@RequestMapping("/dwinformation")
public class DwinFormationController {
	@Autowired
	/*�Զ�ע��*/
	private DwinFormationService service;
	//��λ��Ϣ��Ĳ�ѯ
	@ResponseBody
	@RequestMapping("findAll")
	public List<Map<String, Object>> findAll(){
		List<Map<String, Object>> list=service.findAll();
		return list;
		
	}
}

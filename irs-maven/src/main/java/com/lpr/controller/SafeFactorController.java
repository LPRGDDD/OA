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
 * ����ϵ�����ñ�
 * @author ����Ȼ
 *
 */
@Controller
@RequestMapping("/safefactor")
public class SafeFactorController {
	@Autowired
	/*�Զ�ע��*/
	private SafeFactorService service;
	//����ϵ����Ĳ�ѯ����
	@RequestMapping("findAll")
	public @ResponseBody List<Map<String, Object>> findAll() {
		List<Map<String, Object>> list=service.findAll();
		return list;
	}
}

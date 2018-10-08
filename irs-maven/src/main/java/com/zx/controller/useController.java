package com.zx.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zx.service.useService;

@Controller
@RequestMapping("use")
public class useController {
@Autowired
private useService service;
@ResponseBody
@RequestMapping("/findAll")
	public List<Map> recivJson1(Map map) throws IOException{
	List<Map> list=service.findAll();
		return list;
	}
}

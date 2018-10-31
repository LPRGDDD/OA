package com.lwb.controller;

import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lwb.service.RecordService;
@Controller
@RequestMapping("/recoed")
public class RecordController {
	@Autowired
	private RecordService ser;
	
	
	@RequestMapping("/recoedById")
	@ResponseBody
	public Map planById(int id){
		Map p=ser.queryRecord(id); 
		return p;
	}
}

package com.zx.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zx.entity.court;
import com.zx.service.courtService;

@Controller
@RequestMapping("court")
public class courtController {
   @Autowired
   private courtService service;
   @ResponseBody
	  @RequestMapping("/find")
		public List<court> recivJson1(court c) throws IOException{
			List<court> list=service.findAll();
			return list;
		}
   @ResponseBody
	  @RequestMapping("/findone")
   public List<Map> recivJson2(Map map) throws IOException{
		List<Map> list=service.findone();
		return list;
	}  
   @ResponseBody
	  @RequestMapping("/trans")
		public String recivJso1(Map map) throws IOException{
			
			return "page/view/zx/detail";
		}
}

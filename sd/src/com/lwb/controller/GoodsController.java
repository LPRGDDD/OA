package com.lwb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.lwb.entity.Goods;
import com.lwb.service.GoodsService;

@Controller
@RequestMapping("/goods")
public class GoodsController {
	@Autowired
	private GoodsService ser;
	
	@RequestMapping("/queryAll")
	@ResponseBody
	public List<Map<String,Object>> listAll(){
		List<Map<String,Object>> list=ser.queryAll();
		return list;
	}
	
	@RequestMapping("queryTypeAll")
	@ResponseBody
	public List<Map<String,Object>> queryTypeAll(){
		List<Map<String,Object>> list=ser.queryTypeAll();
		return list;
	}
	@RequestMapping("/save")
	public void save(Goods g,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		System.out.println();
		int id=ser.save(g);
		if (id>0) {
			out.print("添加成功");
		}else{
			out.print("添加失败");
		}
	}
	
	@RequestMapping("/queryID")
	@ResponseBody
	public List<Map<String, Object>> queryID(int id){
		List<Map<String, Object>> list=ser.queryID(id);
		return list;
	}
}

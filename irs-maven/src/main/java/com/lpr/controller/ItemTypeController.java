package com.lpr.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lpr.entity.ItemType;
import com.lpr.entity.SalItem;
import com.lpr.service.ItemTypeService;
/**
 * 薪酬项目类型表
 * @author 刘培然
 *
 */
@Controller
@RequestMapping("/itemtype")
public class ItemTypeController {
	//自动注入
	@Autowired
	private ItemTypeService service;
	//薪酬项目类型表的查询
		@RequestMapping("findAll")
		public @ResponseBody List<Map<String, Object>> findAll() {
			List<Map<String, Object>> list=service.findAll();
			System.out.println(list);
			return list;
		}
		//薪酬项目类型表的添加
		@RequestMapping("insert")
		@ResponseBody
		public void insert(ItemType itemtype,HttpServletRequest request,HttpServletResponse response) throws IOException {
			System.out.println(itemtype);
			response.setContentType("text/html;charset=utf-8");//解决中文乱码
			PrintWriter out=response.getWriter();//获取内置对象respose的getWriter方法，向页面发送信息
			int result=service.insert(itemtype);
			if (result!=0) {
				System.out.println("添加成功！");
			}else{
				System.out.println("添加失败！");
			}
		}
	}

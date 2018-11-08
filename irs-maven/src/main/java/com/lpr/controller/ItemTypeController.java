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

@Controller
@RequestMapping("/itemtype")
public class ItemTypeController {
	@Autowired
	//�Զ�ע��
	private ItemTypeService service;
	//н����Ŀ���ͱ�Ĳ�ѯ
		@RequestMapping("findAll")
		public @ResponseBody List<Map<String, Object>> findAll() {
			List<Map<String, Object>> list=service.findAll();
			System.out.println(list);
			return list;
		}
		//н����Ŀ���ͱ�����
		@RequestMapping("insert")
		@ResponseBody
		public void insert(ItemType itemtype,HttpServletRequest request,HttpServletResponse response) throws IOException {
			System.out.println(itemtype);
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			int result=service.insert(itemtype);
			if (result!=0) {
				System.out.println("��ӳɹ���");
			}else{
				System.out.println("���ʧ�ܣ�");
			}
		}
	}

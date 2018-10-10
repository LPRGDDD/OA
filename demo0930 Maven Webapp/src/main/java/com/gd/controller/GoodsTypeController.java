package com.gd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gd.entity.Goods;
import com.gd.entity.GoodsType;
import com.gd.service.GoodsTypeService;

@Controller
@RequestMapping("/goodsType")
public class GoodsTypeController {
	/*�Զ�ע��*/
	@Autowired
	private GoodsTypeService ser;
	
	
	/*��ѯ��Ʒ��Ϣ*/
	@ResponseBody
	@RequestMapping("/findAll")
	public List<Map<String, Object>> findAll(){
		List<Map<String, Object>> list=ser.findAll();
		return list;
	}
	/*��Ʒ�������*/
	@RequestMapping("/save")
	public void save(GoodsType gt,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out =response.getWriter();
		int result=ser.save(gt);
		if (result!=0) {
			out.print("��ӳɹ�");
		}else {
			out.print("���ʧ��");
		}
	}
}

package com.lpr.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lpr.entity.PersonXc;
import com.lpr.service.PersonXcService;
@Controller
@RequestMapping("/personxc")
public class PersonXcController {
	@Autowired
	private PersonXcService service;
	/*н���������ת*/
	@RequestMapping("/find.action")
	public String findxcjs(){
		return "page/view/lpr/PersonXc";
	}
	//�����û�ID��ѯ��ǰ�û�н�����
	@ResponseBody
	@RequestMapping("findAll")
	public List<Map<String, Object>> findAll(Integer userId){
		List<Map<String, Object>> list=service.findAll(userId);
		return list;
	}
	//н��������ñ�ķ�ҳ��ѯ
	@ResponseBody
	@RequestMapping("findPage")
	public Map findPage(Integer page,Integer limit){
		PageHelper.startPage(page,limit);
		List<Map> list=service.findPage();
		PageInfo<Map> info=new PageInfo<Map>(list);
		Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	//Ա��н��������������
	@RequestMapping("/insert")
	@ResponseBody
	public void insert(PersonXc xc,String userId,HttpServletRequest request,HttpServletResponse response) throws IOException{
		System.out.println(xc);
		System.out.println(userId);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		int result=service.PLinsert(xc, userId);
		if (result!=0) {
			out.print("��ӳɹ���");
		}else{
			out.print("���ʧ�ܣ�");
		}
	}
	//ID��ѯ��
	@RequestMapping("/findByUid")
	@ResponseBody
	public List<Map> findByUid(Integer uid){
		List<Map> p=service.findByUid(uid);
		return p;
	}
}

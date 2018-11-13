package com.lpr.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lpr.entity.SalItem;
import com.lpr.service.SalItemService;
@Controller
@RequestMapping("/salitem")
public class SalItemController {
	@Autowired
	//�Զ�ע��
	private SalItemService service;
	//��תн����Ŀҳ��
	@RequestMapping("/findxc.action")
	public String findxc(){
		return "page/view/lpr/SalItem";
	}
	//н����Ŀ�����Ĳ�ѯ
	@ResponseBody
	@RequestMapping("findAll")
	public List<Map<String, Object>> findAll() {
		List<Map<String, Object>> list=service.findAll();
		return list;
	}
	//н����Ŀ���������
	@ResponseBody
	@RequestMapping("insert")
	public void insert(SalItem salitem,HttpServletRequest request,HttpServletResponse response) throws IOException {
		System.out.println(salitem);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		int result=service.insert(salitem);
		if (result!=0) {
			out.print("��ӳɹ���");
		}else{
			out.print("���ʧ�ܣ�");
		}
	}
	//н����Ŀ�����ı༭
	@RequestMapping("update")
    public void update(SalItem salitem,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		int result=service.update(salitem);
		if (result!=0) {
			out.print("�޸ĳɹ�������");
		}else{
			out.print("�޸�ʧ�ܣ�����");
		}
    	
    }
	//н����Ŀ������ɾ��
	@RequestMapping("delete")
    public void delete(int itemId,HttpServletResponse response) throws IOException{
    	response.setContentType("text/html;charset=utf-8");
    	PrintWriter out=response.getWriter();
    	 int result=service.delete(itemId);
    	 if(result!=0){
   		   out.print("ɾ���ɹ�������");
   	   }else{
   		   out.print("ɾ��ʧ�ܣ�����");
   	   }
    }
    //н����Ŀ�����༭֮ǰ�Ĳ�ѯ
    @ResponseBody
    @RequestMapping("selectByPrimaryKey")
   public SalItem selectByPrimaryKey(Integer itemId){
    	System.out.println(itemId);
    	SalItem si=service.selectByPrimaryKey(itemId);
		return si;
    }
}

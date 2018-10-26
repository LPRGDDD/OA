package com.irs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.irs.pojo.TbUsers;
import com.irs.service.AccountService;

@Controller
@RequestMapping("account/")
public class AccountController {
	
	@Autowired
	private AccountService accountServiceImpl;
	
	@RequestMapping("active/{eCode}")
	public String active(@PathVariable("eCode")String eCode,Model model){
		TbUsers user = accountServiceImpl.selUserByCodeAndStatus(eCode,0+"");
		if(user!=null){
			//����ɹ�
			//�޸��û�״̬
			user.setStatus(1+"");
			accountServiceImpl.updUserStatus(user);
			model.addAttribute("msg", "����ɹ������ص�½�ɣ�");
			return "active";
		}else{
			//resp.getWriter().println("�˻������ڻ����Ѿ���������ԣ�");
			model.addAttribute("msg", "�˻������ڻ����Ѿ���������ԣ�");
			return "active";
		}
	}
}

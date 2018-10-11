package com.lxm.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lxm.entity.GeRenEntity;
import com.lxm.entity.TbAdmin;
import com.lxm.service.GeRenKaoQinService;
@Controller
@RequestMapping("/GeRen")
public class GeRenKaoQinController {
	@Autowired
	private GeRenKaoQinService gs;
	/*��������ҳ��*/
	@RequestMapping("/KaoQin.action")
	public String test() {
		return "page/view/lxm/ShenPi";
	}
	/*�����ת*/
	@RequestMapping("/QingJia.action")
	public String test1() {
		return "page/view/lxm/QingJia";
	}
	/*�Ӱ�ҳ����ת*/
	@RequestMapping("/JiaBan.action")
	public String test2() {
		return "page/view/lxm/JiaBan";
	}
	//����ҳ��
	@RequestMapping("/ChuChai.action")
	public String test3(){
		return "page/view/lxm/ChuChai";
	}
	
	@RequestMapping("/One")
	@ResponseBody
	public List<TbAdmin> ShenPiRen(int deptId){
		GeRenEntity list=gs.ShePiUser(deptId);
		String ShenPiRen=list.getSname1();
		int[] intArr=new int[0];//����һ��int����
		String[] valArr=ShenPiRen.split(",");//���ݶ��ţ���������Ա Sname1�ָ��String����
		intArr=new int[valArr.length];//��String����ĳ��ȸ���int����
		for (int i = 0; i < valArr.length; i++) {
			intArr[i]=Integer.parseInt(valArr[i]);//ѭ����String����ת��int����
		}
		List<TbAdmin> user=gs.findAdminName(intArr);
		return user; 
	}
}
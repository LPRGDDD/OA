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
	/*页面跳转*/
	@RequestMapping("/KaoQin.action")
	public String test() {
		return "page/view/lxm/ShenPi";
	}
	@RequestMapping("/One")
	@ResponseBody
	public List<TbAdmin> ShenPiRen(int deptId){
		GeRenEntity list=gs.ShePiUser(deptId);
		String ShenPiRen=list.getSname1();
		int[] intArr=new int[0];//生成一个int数组
		String[] valArr=ShenPiRen.split(",");//根据逗号（，）把人员 Sname1分割成String数组
		intArr=new int[valArr.length];//把String数组的长度赋给int数组
		for (int i = 0; i < valArr.length; i++) {
			intArr[i]=Integer.parseInt(valArr[i]);//循环把String数组转换int数组
		}
		List<TbAdmin> user=gs.findAdminName(intArr);
		System.out.println(user.get(0).getId()+user.get(0).getUsername());
		return user; 
	}
}

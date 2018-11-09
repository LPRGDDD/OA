package com.lxm.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.lxm.entity.GeRenEntity;
import com.lxm.entity.JobWork;
import com.lxm.entity.TbAdmin;
import com.lxm.service.ExcleService;
import com.lxm.service.GeRenKaoQinService;
@Controller
@RequestMapping("/GeRen")
public class GeRenKaoQinController {
	@Autowired
	private GeRenKaoQinService gs;
	@Autowired
	private ExcleService es;
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
	//����ҳ��
	@RequestMapping("/Excle.action")
	public String test4(){
		return "page/view/lxm/Excle";
	}
	//���ڼ�¼
	@RequestMapping("/KaoQinJiLu.action")
	public String test5(){
		return "page/view/lxm/KaoQinJiLu";
	}
	//����ͳ��
		@RequestMapping("/KaoQinTongji.action")
		public String test6(){
			return "page/view/lxm/TongJi";
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
	 @RequestMapping("/importexcel")
	 public String admin_importmembers(HttpServletResponse response,HttpServletRequest request) throws Exception {
	  MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;    
	     List<List<Object>> listob = null;  
	     MultipartFile file = multipartRequest.getFile("file"); 
	    // employeeMapper.impExcel(file);
	     System.out.println((es==null)+"--------");
	     es.impExcel(file);
	     System.out.println("............");
	     return "redirect:/emps";
	  }
	 @ResponseBody
	 @RequestMapping("/selectAll")
	 public List<JobWork> selectAll(int id){
		 
		 List<JobWork> list=es.selectAll(id);
		 return list;
	 }
}

package com.lpr.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.irs.pojo.TbAdmin;
import com.lpr.dao.SalDataMapper;
import com.lpr.entity.SalData;
import com.lpr.service.SalDataService;
@Service
public class SalDataServiceImpl implements SalDataService{
@Autowired
private SalDataMapper dao;
	@Override
	//根据状态（1,0）进行分页查询
	public List<Map> findByStatus() {
		// TODO Auto-generated method stub
		return dao.findByStatus();
	}
	@Override
	public List<Map> findByStatus1() {
		// TODO Auto-generated method stub
		return dao.findByStatus1();
	}
	@Override
	public int insert(SalData s, String userId) {
		int[] intArr=new int[0];//生成一个int数组
		String[] valArr=userId.split(",");//根据逗号（，）把userID分割成String数组
		intArr=new int[valArr.length];//把String数组的长度赋给int数组
		for (int i = 0; i < valArr.length; i++) {
			intArr[i]=Integer.parseInt(valArr[i]);//循环把String数组转换int数组
		}
		TbAdmin u=new TbAdmin();
		if (userId!=""&&intArr!=null&&s!=null) {
			for (int i = 0; i < intArr.length; i++) {//已经生成的那个int数组，根据它的长度循环往表里面添加数据
				long a=intArr[i];
				int count=dao.countxc(s.getSalaryflow().getSalaryflowId(), a);
				if (count==0) {//当没有数据时
					u.setId(a);
					s.setUser(u);
					dao.insert(s);
				}else{
					int b=dao.findById(a,s.getSalaryflow().getSalaryflowId());
					u.setId(a);
					s.setUser(u);
					s.setSalDataId(b);
					dao.updateByPrimaryKey(s);
				}
				
			}
			return 1;//返回正确的结果，返回1
		}
		return 0;//返回错误的结果，返回0
	}

}

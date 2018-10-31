package com.lpr.service.impl;

import java.util.List;
import java.util.Map;

import org.hamcrest.core.IsNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.irs.pojo.TbAdmin;
import com.lpr.dao.PersonXcMapper;
import com.lpr.entity.PersonXc;
import com.lpr.service.PersonXcService;
@Service
public class PersonXcServiceImpl implements PersonXcService{
@Autowired
private PersonXcMapper dao;
	@Override
	//根据用户ID查询当前用户薪酬基数
	public List<Map<String, Object>> findAll(Integer userId) {
		// TODO Auto-generated method stub
		return dao.findAll(userId);
	}
	//员工薪酬的批量添加
	@Transactional
	public int PLinsert(PersonXc p, String userId) {
		int[] intArr=new int[0];//生成一个int数组
		String[] valArr=userId.split(",");//根据逗号（，）把userID分割成String数组
		intArr=new int[valArr.length];//把String数组的长度赋给int数组
		for (int i = 0; i < valArr.length; i++) {
			intArr[i]=Integer.parseInt(valArr[i]);//循环把String数组转换int数组
		}
		TbAdmin u=new TbAdmin();
		if (userId!=""&&intArr!=null&&p!=null) {
			for (int i = 0; i < intArr.length; i++) {//已经生成的那个int数组，根据它的长度循环往表里面添加数据
				long a=intArr[i];
				int count=dao.countxc(a);
				if (count==0) {//当没有数据时
					u.setId(a);
					p.setUser(u);
					dao.insert(p);
				}else{
					int b=dao.findById(a);//查询ID
					u.setId(a);
					p.setUser(u);
					p.setPersonxcId(b);
					dao.updateByPrimaryKey(p);
				}
				
			}
			return 1;//返回正确的结果，返回1
		}
		return 0;//返回错误的结果，返回0
	}
	@Override
	//员工薪酬基数的分页查询的方法
	public List<Map> findPage() {
		// TODO Auto-generated method stub
		return dao.findPage();
	}
	@Override
	public List<Map> findByUid(Integer uid) {
		// TODO Auto-generated method stub
		return dao.findByUid(uid);
	}
}

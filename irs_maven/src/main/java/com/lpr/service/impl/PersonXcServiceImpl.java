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
	//�����û�ID��ѯ��ǰ�û�н�����
	public List<Map<String, Object>> findAll(Integer userId) {
		// TODO Auto-generated method stub
		return dao.findAll(userId);
	}
	//Ա��н����������
	@Transactional
	public int PLinsert(PersonXc p, String userId) {
		int[] intArr=new int[0];//����һ��int����
		String[] valArr=userId.split(",");//���ݶ��ţ�������userID�ָ��String����
		intArr=new int[valArr.length];//��String����ĳ��ȸ���int����
		for (int i = 0; i < valArr.length; i++) {
			intArr[i]=Integer.parseInt(valArr[i]);//ѭ����String����ת��int����
		}
		TbAdmin u=new TbAdmin();
		if (userId!=""&&intArr!=null&&p!=null) {
			for (int i = 0; i < intArr.length; i++) {//�Ѿ����ɵ��Ǹ�int���飬�������ĳ���ѭ�����������������
				long a=intArr[i];
				int count=dao.countxc(a);
				if (count==0) {//��û������ʱ
					u.setId(a);
					p.setUser(u);
					dao.insert(p);
				}else{
					int b=dao.findById(a);//��ѯID
					u.setId(a);
					p.setUser(u);
					p.setPersonxcId(b);
					dao.updateByPrimaryKey(p);
				}
				
			}
			return 1;//������ȷ�Ľ��������1
		}
		return 0;//���ش���Ľ��������0
	}
	@Override
	//Ա��н������ķ�ҳ��ѯ�ķ���
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

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
	//����״̬��1,0�����з�ҳ��ѯ
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
		int[] intArr=new int[0];//����һ��int����
		String[] valArr=userId.split(",");//���ݶ��ţ�������userID�ָ��String����
		intArr=new int[valArr.length];//��String����ĳ��ȸ���int����
		for (int i = 0; i < valArr.length; i++) {
			intArr[i]=Integer.parseInt(valArr[i]);//ѭ����String����ת��int����
		}
		TbAdmin u=new TbAdmin();
		if (userId!=""&&intArr!=null&&s!=null) {
			for (int i = 0; i < intArr.length; i++) {//�Ѿ����ɵ��Ǹ�int���飬�������ĳ���ѭ�����������������
				long a=intArr[i];
				int count=dao.countxc(s.getSalaryflow().getSalaryflowId(), a);
				if (count==0) {//��û������ʱ
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
			return 1;//������ȷ�Ľ��������1
		}
		return 0;//���ش���Ľ��������0
	}

}

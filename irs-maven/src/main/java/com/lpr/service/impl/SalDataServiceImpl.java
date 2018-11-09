package com.lpr.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.irs.pojo.TbAdmin;
import com.lpr.dao.SalDataMapper;
import com.lpr.entity.SalData;
import com.lpr.entity.SalaDataAndAdmin;
import com.lpr.entity.SalaryFlow;
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
	@Override
	public List<Map> findBySalaryFlowId(int sid) {
		// TODO Auto-generated method stub
		return dao.findBySalaryFlowId(sid);
	}
	@Transactional
	@Override
	public int PLInsert(String userStr,String salaryflowIdStr, List<SalaDataAndAdmin> list) {
		// TODO Auto-generated method stub
		int[] intArr=new int[0];//����һ��int����
		int salaryflowId=Integer.parseInt(salaryflowIdStr);
		String[] valArr=userStr.split(",");//���ݶ��ţ�������userID�ָ��String����
		intArr=new int[valArr.length];//��String����ĳ��ȸ���int����
		for (int i = 0; i < valArr.length; i++) {
			intArr[i]=Integer.parseInt(valArr[i]);//ѭ����String����ת��int����
		}
		//����Ա��ID������ID��ѯ���Ƿ����
		TbAdmin user=new TbAdmin();
		SalaryFlow salaryFlow=new SalaryFlow();
		List<SalData> slist=new ArrayList<SalData>();
		//�ӱ�SalaDataAndAdmin��SalDataѭ����ֵ
		if (salaryflowId!=0) {
			for (SalaDataAndAdmin salaDataAndAdmin : list) {
				SalData sal1=new SalData();
				if (salaDataAndAdmin.getPersonxc_s1()!=null) {
					sal1.setPersonxcS1(salaDataAndAdmin.getPersonxc_s1());
				}
				if (salaDataAndAdmin.getPersonxc_s2()!=null) {
					sal1.setPersonxcS2(salaDataAndAdmin.getPersonxc_s2());
				}
				if (salaDataAndAdmin.getPersonxc_s3()!=null) {
					sal1.setPersonxcS3(salaDataAndAdmin.getPersonxc_s3());
				}
				if (salaDataAndAdmin.getPersonxc_s4()!=null) {
					sal1.setPersonxcS4(salaDataAndAdmin.getPersonxc_s4());
				}
				if (salaDataAndAdmin.getPersonxc_s5()!=null) {
					sal1.setPersonxcS5(salaDataAndAdmin.getPersonxc_s5());
				}
				if (salaDataAndAdmin.getPersonxc_s6()!=null) {
					sal1.setPersonxcS6(salaDataAndAdmin.getPersonxc_s6());
				}
				if (salaDataAndAdmin.getPersonxc_s7()!=null) {
					sal1.setPersonxcS7(salaDataAndAdmin.getPersonxc_s7());
				}
				if (salaDataAndAdmin.getPersonxc_s8()!=null) {
					sal1.setPersonxcS8(salaDataAndAdmin.getPersonxc_s8());
				}
				if (salaDataAndAdmin.getPersonxc_s9()!=null) {
					sal1.setPersonxcS9(salaDataAndAdmin.getPersonxc_s9());
				}
				if (salaDataAndAdmin.getPersonxc_s10()!=null) {
					sal1.setPersonxcS10(salaDataAndAdmin.getPersonxc_s10());
				}
				if (salaDataAndAdmin.getPersonxc_insurejs()!=null) {
					sal1.setPersonxcInsurejs(salaDataAndAdmin.getPersonxc_insurejs());
				}
				if (salaDataAndAdmin.getPersonxc_ylinsure()!=null) {
					sal1.setPersonxcYlinsure(salaDataAndAdmin.getPersonxc_ylinsure());
				}
				if (salaDataAndAdmin.getPersonxc_dwyl()!=null) {
					sal1.setPersonxcDwyl(salaDataAndAdmin.getPersonxc_dwyl());
				}
				if (salaDataAndAdmin.getPersonxc_gryl()!=null) {
					sal1.setPersonxcGryl(salaDataAndAdmin.getPersonxc_gryl());
				}
				if (salaDataAndAdmin.getPersonxc_ylbx()!=null) {
					sal1.setPersonxcYlbx(salaDataAndAdmin.getPersonxc_ylbx());
				}
				if (salaDataAndAdmin.getPersonxc_dw_medical()!=null) {
					sal1.setPersonxcDwMedical(salaDataAndAdmin.getPersonxc_dw_medical());
				}
				if (salaDataAndAdmin.getPersonxc_grmedical()!=null) {
					sal1.setPersonxcGrmedical(salaDataAndAdmin.getPersonxc_grmedical());
				}
				if (salaDataAndAdmin.getPersonxc_group()!=null) {
					sal1.setPersonxcGroup(salaDataAndAdmin.getPersonxc_group());
				}
				if (salaDataAndAdmin.getPersonxc_dwsy()!=null) {
					sal1.setPersonxcDwsy(salaDataAndAdmin.getPersonxc_dwsy());
				}
				if (salaDataAndAdmin.getPersonxc_sybx()!=null) {
					sal1.setPersonxcSybx(salaDataAndAdmin.getPersonxc_sybx());
				}
				if (salaDataAndAdmin.getPersonxc_dwshiye()!=null) {
					sal1.setPersonxcDwshiye(salaDataAndAdmin.getPersonxc_dwshiye());
				}
				if (salaDataAndAdmin.getPersonxc_grsy()!=null) {
					sal1.setPersonxcGrsy(salaDataAndAdmin.getPersonxc_grsy());
				}
				if (salaDataAndAdmin.getPersonxc_gsbx()!=null) {
					sal1.setPersonxcGsbx(salaDataAndAdmin.getPersonxc_gsbx());
				}
				if (salaDataAndAdmin.getPersonxc_dwgs()!=null) {
					sal1.setPersonxcDwgs(salaDataAndAdmin.getPersonxc_dwgs());
				}
				if (salaDataAndAdmin.getPersonxc_housingfund()!=null) {
					sal1.setPersonxcHousingfund(salaDataAndAdmin.getPersonxc_housingfund());
				}
				if (salaDataAndAdmin.getPersonxc_dwzf()!=null) {
					sal1.setPersonxcDwzf(salaDataAndAdmin.getPersonxc_dwzf());
				}
				if (salaDataAndAdmin.getPersonxc_grzf()!=null) {
					sal1.setPersonxcGrzf(salaDataAndAdmin.getPersonxc_grzf());
				}
				if (salaDataAndAdmin.getPersonxc_expression()!=null) {
					sal1.setPersonxcExpression(salaDataAndAdmin.getPersonxc_expression());
				}
				if (salaDataAndAdmin.getSalSsalary()!=null) {
					sal1.setSalSsalary(salaDataAndAdmin.getSalSsalary());
				}
				//����ID
				if (salaryflowIdStr!=null) {
					salaryFlow.setSalaryflowId(salaryflowId);
					sal1.setSalaryflow(salaryFlow);
				}
				slist.add(sal1);
			}
			for (int i = 0; i < intArr.length; i++) {//ѭ��ȡ����ԱID
				long a=intArr[i];
				for (int j = i; j < slist.size(); j++) {
					if (i==j) {
						int count=dao.countxc(salaryflowId, a);
						if (count==0) {//��û������ʱ
							user.setId(a);
							slist.get(j).setUser(user);
							slist.get(j).setSalDataId(null);//��saldataId�ÿ�
							slist.set(j, slist.get(j));//�Ž�slist��
							dao.insert(slist.get(j));
						}else{
							int b=dao.findById(a,salaryflowId);
							user.setId(a);
							slist.get(j).setUser(user);
							slist.get(j).setSalDataId(b);
							slist.set(j, slist.get(j));
							dao.updateByPrimaryKey(slist.get(j));
						}
					}
				}
			}
			return 1;
		}
					/*if (salaDataAndAdmin.getId()!=null) {//Ա��ID
						user.setId(a);
						sal.setUser(user);
					}*/
			
		return 0;
	}
	
}

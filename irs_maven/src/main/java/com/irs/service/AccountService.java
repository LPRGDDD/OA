package com.irs.service;

import com.irs.pojo.TbUsers;

public interface AccountService {
	
	//����eCode��status��ѯ�û�
	public TbUsers selUserByCodeAndStatus(String eCode,String status);

	//�����û�״̬
	public void updUserStatus(TbUsers user);
}

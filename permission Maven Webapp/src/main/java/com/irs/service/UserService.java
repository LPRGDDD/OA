package com.irs.service;

import com.irs.pojo.TbUsers;
import com.irs.pojo.UserSearch;
import com.irs.util.ResultUtil;

public interface UserService {
	//�û�����Ψһ�Լ���
	public TbUsers selUserByEmail(String eMail,Long uid);

	//�û��ǳ�Ψһ�Լ���
	public TbUsers selUserByNickname(String nickname,Long uid);

	//�����û�
	public void insUserService(TbUsers user) throws Exception;

	//�õ��û���Ϣ
	public ResultUtil selUsers(Integer page, Integer limit,UserSearch search);

	//����ɾ���û�
	public void delUsersService(String userStr);

	//ɾ��ָ���û�
	public void delUserByUid(String uid);

	//��ѯ�û�
	public TbUsers selUserByUid(Long uid);

	//�����û���Ϣ
	public void updUserService(TbUsers user);
}

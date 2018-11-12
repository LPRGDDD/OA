package com.chl.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface AddressService {
//  ��ѯͨѶ¼
  public List<Map> getAddressBook(@Param("keyWord")String keyWord,@Param("userId") Integer userId);
//  ��ѯ����
public List<Map> getGroup(@Param("keyWord")String keyWord,@Param("userId") Integer userId);
//���ӷ���
  public int addGroup(@Param("group_name")String group_name,@Param("userId") Integer userId);
//  ������ϵ��
  public int addUser(Map map);
//  �޸���ϵ��
  public int updateUser(Map map);
//  ɾ����ϵ��
  public int delUser(@Param("addId")Integer addId);
  //����ID ��ѯ 
  public Map selectById(@Param("add_id")Integer add_id);
	/*//��ѯ�����û�
  public List<Map> getAllUsers(@Param("keyWord")String keyWord);
*/
	
//��ѯ���в���
public List<Map> getAllDept(@Param("keyWord")String keyWord);
//��ѯ���й�������
public List<Map> getAllNotifyType();
//���ӹ���
public int addNotify(Map map);
//����userId�鲿��
public int getDeptByUserId(Integer userId);
//���ݵ�ǰ��½�˵Ĳ��ű�Ų�ѯ����
public List<Map> getNotify(@Param("keyWord")String keyWord,@Param("deptId")Integer deptId);
//    ������� ��ѯ���й���
public List<Map> getAllNotify(@Param("keyWord")String keyWord); 
  
	
}
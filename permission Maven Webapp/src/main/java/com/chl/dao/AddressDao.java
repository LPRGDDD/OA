package com.chl.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface AddressDao {

//  ��ѯͨѶ¼
  public List<Map> getAddressBook(@Param("keyWord")String keyWord,@Param("userId") Integer userId);
//  ��ѯ����
public List<Map> getGroup(@Param("keyWord")String keyWord,@Param("userId") Integer userId);
//��ӷ���
  public int addGroup(@Param("group_name")String group_name,@Param("userId") Integer userId);
//  �����ϵ��
  public int addUser(Map map);
//  �޸���ϵ��
  public int updateUser(Map map);
//  ɾ����ϵ��
  public int delUser(@Param("addId")Integer addId);
  //����ID ��ѯ 
  public Map selectById(@Param("add_id")Integer add_id);
  /*//�����û�
  public List<Map> getAllUsers(@Param("keyWord")String keyWord);
*/
}

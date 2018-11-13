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
  
  
  //    ��ѯ���в���
 	/**
 	 * 
 	 * @param keyWord
 	 * @return
 	 */
     public List<Map> getAllDept(@Param("keyWord")String keyWord);
//     ��ѯ���й�������
     /**
      * 
      * @return
      */
     public List<Map> getAllNotifyType();
//     ��ӹ���
     /**
      * 
      * @param map
      * @return
      */
     public int addNotify(Map map);
//     ����userId�鲿��
     /**
      * 
      * @param userId
      * @return
      */
     public int getDeptByUserId(Integer userId);
//     ���ݵ�ǰ��½�˵Ĳ��ű�Ų�ѯ����
     /**
      * 
      * @param keyWord
      * @param deptId
      * @return
      */
     public List<Map> getNotify(@Param("keyWord")String keyWord,@Param("deptId")Integer deptId);
 //    ������� ��ѯ���й���
     /**
      * 
      * @param keyWord
      * @return
      */
     public List<Map> getAllNotify(@Param("keyWord")String keyWord);  
  
  
 //��ѯ����֪ͨ����
     public List notifyX(@Param("notify_id") Integer notify_id );
     //����ID ��ѯ ����
     public Map selectnotifyById(@Param("notify_id")Integer notify_id);
  //��������޸�
    public int updatenotify(Map map);
//��������޸�״̬
public int  updatestatus(@Param("notify_id")Integer notify_id,@Param("no_status")String no_status);
}

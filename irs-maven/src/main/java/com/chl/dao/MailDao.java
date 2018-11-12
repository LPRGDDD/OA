package com.chl.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;


public interface MailDao {
//  ����ʼ�
	/**
	 * 
	 * @param map
	 * @return
	 */
  public int addMail(Map map);
  //��Ӳݸ���
  /**
   * 
   * @return
   */
  public int saveMail(Map map);
//��ѯ��½�û���δ���ʼ��� �ռ���
 /**
  * 
  * @param keyWord
  * @param userId
  * @return
  */
public List<Map> getMail(@Param("keyWord")String keyWord,@Param("userId") Integer userId);
/* //��ѯ��½�û����Ѷ��ʼ��� �ռ���
*//**
 * 
 * 
 * @param keyWord
 * @param userId
 * @return
 *//*
public List<Map> selectsMail(@Param("keyWord")String keyWord,@Param("userId") Integer userId);*/
//��ѯδ���ʼ�������
/**
 * 
 * @param userId
 * @return
 */
public List<Map> selectMail(@Param("userId")Integer userId );


//��ѯδ���͵��ʼ����ݸ���
/**
 * 
 * @param keyWord
 * @param userId
 * @return
 */
public List<Map> selectWMail(@Param("keyWord")String keyWord,@Param("userId") Integer userId);

//�޸��ռ����ʼ�״̬
/**
 * 
 * @param map
 * @return
 */
 
public int updatesMail(int  id);
//�鿴�ռ�������
/**
 * 
 * @param emailId
 * @return
 */
public List selectXMail(@Param("emailId") Integer emailId );
 //ɾ�������ʼ�
public int delMail(@Param("emailId") Integer emailId);

//����ID��ѯ
public Map selectById(@Param ("emailId") Integer emailId);
//�޸Ĳݸ��� �鿴����
public int updateMail(Map map);
//�ݸ���ɾ����������
public int delLMail(@Param("emailId") Integer emailId);
//��ѯ�����û�
 /**
  * 
  * @param keyWord
  * @return
  */
public List<Map> getAllUsers(@Param("keyWord")String keyWord);
//�� ѯ�ѷ����ʼ�
public  List<Map> selectyMail(@Param("id")Integer id);


}
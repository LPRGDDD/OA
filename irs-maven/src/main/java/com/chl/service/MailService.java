package com.chl.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.chl.entity.Mail;
public interface MailService {
	/**
	 * 
	 * @param map
	 * @return
	 */
//  ����ʼ�
	 public int addMail(Map map);
	 //��Ӳݸ���
	 public int saveMail(Map map);
	//��ѯ��½�û���δ���ʼ�
	 /**
	  * 
	  * @param keyWord
	  * @param userId
	  * @return
	  */
	public List<Map> getMail(@Param("keyWord")String keyWord,@Param("userId") Integer userId);
 /*//��ѯ��½�û����Ѷ��ʼ��� �ռ���
	*//**
	 * 
	 * 
	 * @param keyWord
	 * @param userId
	 * @return
	 *//*
	public List<Map> selectsMail(@Param("keyWord")String keyWord,@Param("userId") Integer userId);*/
	
//��ѯδ���ʼ�����
	public List<Map> selectMail(@Param("userId")Integer userId );
	//��ѯδ�����ʼ����ݸ���
	public List<Map> selectWMail(@Param("keyWord")String keyWord,@Param("userId") Integer userId);
    //��ѯ�ռ�������
	public List selectXMail(@Param("emailId") Integer emailId );
	 //ɾ�������ʼ�
    public int delMail(@Param("emailId") Integer emailId);
  //ɾ����������
    public int deljMail(@Param("emailId")Integer emailId);
  //����ID��ѯ
    public Map selectById(@Param ("emailId") Integer emailId);
	//�޸Ĳݸ��� �鿴����
	public int updateMail(Map map);
	
//  ��ѯ�����û�
	 /**
	  * 
	  * @param keyWord
	  * @return
	  */
  public List<Map> getAllUsers(@Param("keyWord")String keyWord);
//�� ѯ�ѷ����ʼ�
public  List<Map> selectyMail(@Param("id")Integer id);
//��ѯ�������ʼ�
public List<Map> selectlMail(@Param("keyWord")String keyWord,@Param("userId") Integer userId);
//�ָ��ʼ�
public int updateLMail(@Param("emailId") Integer emailId);
}


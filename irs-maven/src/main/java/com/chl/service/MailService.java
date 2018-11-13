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
//  Ìí¼ÓÓÊ¼þ
	 public int addMail(Map map);
	 //Ìí¼Ó²Ý¸åÏä
	 public int saveMail(Map map);
	//²éÑ¯µÇÂ½ÓÃ»§µÄÎ´¶ÁÓÊ¼þ
	 /**
	  * 
	  * @param keyWord
	  * @param userId
	  * @return
	  */
	public List<Map> getMail(@Param("keyWord")String keyWord,@Param("userId") Integer userId);
 /*//²éÑ¯µÇÂ½ÓÃ»§µÄÒÑ¶ÁÓÊ¼þ¡¢ ÊÕ¼þÏä
	*//**
	 * 
	 * 
	 * @param keyWord
	 * @param userId
	 * @return
	 *//*
	public List<Map> selectsMail(@Param("keyWord")String keyWord,@Param("userId") Integer userId);*/
	
//²éÑ¯Î´¶ÁÓÊ¼þÌõÊý
	public List<Map> selectMail(@Param("userId")Integer userId );
	//²éÑ¯Î´·¢ËÍÓÊ¼þ¡¢²Ý¸åÏä
	public List<Map> selectWMail(@Param("keyWord")String keyWord,@Param("userId") Integer userId);
    //²éÑ¯ÊÕ¼þÏäÏêÇé
	public List selectXMail(@Param("emailId") Integer emailId );
	 //É¾³ýÒÑÊÕÓÊ¼þ
    public int delMail(@Param("emailId") Integer emailId);
  //É¾³ýµ½À¬»øÏä
    public int deljMail(@Param("emailId")Integer emailId);
  //¸ù¾ÝID²éÑ¯
    public Map selectById(@Param ("emailId") Integer emailId);
	//ÐÞ¸Ä²Ý¸åÏä ²é¿´ÏêÇé
	public int updateMail(Map map);
	
//  ²éÑ¯ËùÓÐÓÃ»§
	 /**
	  * 
	  * @param keyWord
	  * @return
	  */
  public List<Map> getAllUsers(@Param("keyWord")String keyWord);
//²é Ñ¯ÒÑ·¢ËÍÓÊ¼þ
public  List<Map> selectyMail(@Param("id")Integer id);
//²éÑ¯À¬»øÏäÓÊ¼þ
public List<Map> selectlMail(@Param("keyWord")String keyWord,@Param("userId") Integer userId);
//»Ö¸´ÓÊ¼þ
public int updateLMail(@Param("emailId") Integer emailId);
}


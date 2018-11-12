package com.chl.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;


public interface MailDao {
//  添加邮件
	/**
	 * 
	 * @param map
	 * @return
	 */
  public int addMail(Map map);
  //添加草稿箱
  /**
   * 
   * @return
   */
  public int saveMail(Map map);
//查询登陆用户的未读邮件、 收件箱
 /**
  * 
  * @param keyWord
  * @param userId
  * @return
  */
public List<Map> getMail(@Param("keyWord")String keyWord,@Param("userId") Integer userId);
/* //查询登陆用户的已读邮件、 收件箱
*//**
 * 
 * 
 * @param keyWord
 * @param userId
 * @return
 *//*
public List<Map> selectsMail(@Param("keyWord")String keyWord,@Param("userId") Integer userId);*/
//查询未读邮件的条数
/**
 * 
 * @param userId
 * @return
 */
public List<Map> selectMail(@Param("userId")Integer userId );


//查询未发送的邮件、草稿箱
/**
 * 
 * @param keyWord
 * @param userId
 * @return
 */
public List<Map> selectWMail(@Param("keyWord")String keyWord,@Param("userId") Integer userId);

//修改收件箱邮件状态
/**
 * 
 * @param map
 * @return
 */
 
public int updatesMail(int  id);
//查看收件箱详情
/**
 * 
 * @param emailId
 * @return
 */
public List selectXMail(@Param("emailId") Integer emailId );
 //删除已收邮件
public int delMail(@Param("emailId") Integer emailId);

//根据ID查询
public Map selectById(@Param ("emailId") Integer emailId);
//修改草稿箱 查看详情
public int updateMail(Map map);
//草稿箱删除到垃圾箱
public int delLMail(@Param("emailId") Integer emailId);
//查询所有用户
 /**
  * 
  * @param keyWord
  * @return
  */
public List<Map> getAllUsers(@Param("keyWord")String keyWord);
//查 询已发送邮件
public  List<Map> selectyMail(@Param("id")Integer id);


}
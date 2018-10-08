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
//  添加邮件
	 public int addMail(Map map);
	 //添加草稿箱
	 public int saveMail(Map map);
	//查询登陆用户的未读邮件
	 /**
	  * 
	  * @param keyWord
	  * @param userId
	  * @return
	  */
	public List<Map> getMail(@Param("keyWord")String keyWord,@Param("userId") Integer userId);
//查询未读邮件条数
	public List<Map> selectMail(@Param("userId")Integer userId );
	//查询未发送邮件、草稿箱
	public List<Map> selectWMail(@Param("keyWord")String keyWord,@Param("userId") Integer userId);
    //查询收件箱详情
	public List selectXMail(@Param("emailId") Integer emailId );
	 //删除已收邮件
    public int delMail(@Param("emailId") Integer emailId);
  //根据ID查询
    public Map selectById(@Param ("emailId") Integer emailId);
	//修改草稿箱 查看详情
	public int updateMail(Map map);
	
//  查询所有用户
	 /**
	  * 
	  * @param keyWord
	  * @return
	  */
  public List<Map> getAllUsers(@Param("keyWord")String keyWord);
}


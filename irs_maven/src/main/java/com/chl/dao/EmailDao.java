package com.chl.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.chl.entity.Email;

public interface EmailDao {
//  ��ѯ�����û�
	 /**
	  * 
	  * @param keyWord
	  * @return
	  */
  public List<Map> getAllUsers(@Param("keyWord")String keyWord);
 
}
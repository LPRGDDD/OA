package com.chl.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface EmailService {
//  ��ѯ�����û�
  public List<Map> getAllUsers(@Param("keyWord")String keyWord);
}

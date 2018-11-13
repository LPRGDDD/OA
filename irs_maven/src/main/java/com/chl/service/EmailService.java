package com.chl.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface EmailService {
//  查询所有用户
  public List<Map> getAllUsers(@Param("keyWord")String keyWord);
}

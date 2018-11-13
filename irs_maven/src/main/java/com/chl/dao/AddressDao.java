package com.chl.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface AddressDao {

//  查询通讯录
  public List<Map> getAddressBook(@Param("keyWord")String keyWord,@Param("userId") Integer userId);
//  查询分组
public List<Map> getGroup(@Param("keyWord")String keyWord,@Param("userId") Integer userId);
//添加分组
  public int addGroup(@Param("group_name")String group_name,@Param("userId") Integer userId);
//  添加联系人
  public int addUser(Map map);
//  修改联系人
  public int updateUser(Map map);
//  删除联系人
  public int delUser(@Param("addId")Integer addId);
  //根据ID 查询 
  public Map selectById(@Param("add_id")Integer add_id);
  /*//所有用户
  public List<Map> getAllUsers(@Param("keyWord")String keyWord);
*/
}

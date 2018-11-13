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
  
  
  //    查询所有部门
 	/**
 	 * 
 	 * @param keyWord
 	 * @return
 	 */
     public List<Map> getAllDept(@Param("keyWord")String keyWord);
//     查询所有公告类型
     /**
      * 
      * @return
      */
     public List<Map> getAllNotifyType();
//     添加公告
     /**
      * 
      * @param map
      * @return
      */
     public int addNotify(Map map);
//     根据userId查部门
     /**
      * 
      * @param userId
      * @return
      */
     public int getDeptByUserId(Integer userId);
//     根据当前登陆人的部门编号查询公告
     /**
      * 
      * @param keyWord
      * @param deptId
      * @return
      */
     public List<Map> getNotify(@Param("keyWord")String keyWord,@Param("deptId")Integer deptId);
 //    公告管理 查询所有公告
     /**
      * 
      * @param keyWord
      * @return
      */
     public List<Map> getAllNotify(@Param("keyWord")String keyWord);  
  
  
 //查询公告通知详情
     public List notifyX(@Param("notify_id") Integer notify_id );
     //根据ID 查询 公告
     public Map selectnotifyById(@Param("notify_id")Integer notify_id);
  //公告管理修改
    public int updatenotify(Map map);
//公告管理修改状态
public int  updatestatus(@Param("notify_id")Integer notify_id,@Param("no_status")String no_status);
}

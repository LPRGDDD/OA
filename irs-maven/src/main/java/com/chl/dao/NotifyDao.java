package com.chl.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;


public interface NotifyDao {
	
 //    查询所有部门
	/**
	 * 
	 * @param keyWord
	 * @return
	 */
    public List<Map> getAllDept(@Param("keyWord")String keyWord);
//    查询所有公告类型
    /**
     * 
     * @return
     */
    public List<Map> getAllNotifyType();
//    添加公告
    /**
     * 
     * @param map
     * @return
     */
    public int addNotify(Map map);
//    根据userId查部门
    /**
     * 
     * @param userId
     * @return
     */
    public int getDeptByUserId(Integer userId);
//    根据当前登陆人的部门编号查询公告
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
}

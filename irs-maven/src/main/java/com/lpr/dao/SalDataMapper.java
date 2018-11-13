package com.lpr.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.lpr.entity.SalData;
import com.lpr.entity.SalaDataSearch;
/**
 * 工资流程中的上报数据表
 * @author 刘培然
 *
 */
public interface SalDataMapper {
	/**
	 * 根据工资上报编号删除
	 * @param salDataId工资上报编号
	 * @return
	 */
    int deleteByPrimaryKey(Integer salDataId);
    /**
     * 工资流程中的上报数据表添加
     * @param record
     * @return
     */
    int insert(SalData record);
    /**
     * 工资流程中的上报数据表修改
     * @param record
     * @return
     */
    int updateByPrimaryKey(SalData record);
    /**
     * 根据状态（1,0）进行分页查询
     * @param keyWord
     * @param userName
     * @returnssss
     */
    public List<Map> findByStatus();
    public List<Map> findByStatus1();
    /**
     * 根据UID和sid查询数据
     * @param id
     * @param pid
     * @return
     */
    public int findById(@Param("id")long id,@Param("pid") Integer pid);
    public int countxc(@Param("id")int id,@Param("uid")long uid);
    /**
     * 根据流程表id查询
     * @param sid
     * @return
     */
    public List<Map> findBySalaryFlowId(@Param("sid") int sid,@Param("nickname") String nickname,@Param("deptId") Integer deptId,@Param("start") Integer start,@Param("end") Integer end);
}
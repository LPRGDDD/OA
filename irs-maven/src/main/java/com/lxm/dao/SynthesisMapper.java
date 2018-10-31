package com.lxm.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lxm.entity.Synthesis;

public interface SynthesisMapper {
   public int deleteByPrimaryKey(Integer sid);
   /**
    * 添加 外出
    * @param record
    * @return
    */
   public int insert(Synthesis record);
   /**
    * 查询出 systate=1 时的  外出表
    * @return id 根据登录人员id查询对应的外出登记情况
    */
   public List<Map<String,Object>> selectAll(int id);
   /**
    * 查询出 systate=1 时的  外出表
    * @return id 根据登录人员id查询对应的外出登记情况
    */
   public List<Map<String,Object>> selectAll1();
   /**
    * 根据Sid 查询单条记录  进行修改
    * @param sId 
    * @param id 登录人id
    * @return
    */
   public Map<String,Object> selectUpdate(@Param("id")int id,@Param("sId")int sId);
   /**
    * 修改外出数据
    * @param ss
    * @return
    */
   public int updateWai(Synthesis ss);
   /**
    * 删除
    * @param id
    * @return
    */
   public int delete(int id);
   /**
    * 查询需要自己审批的外出、请假、加班、出差
    * 
    * @param id 登录的人员ID
    * @return
    */
   public List<Map<String,Object>> selectDaiShen(int id);
   
   
   public Synthesis selectByPrimaryKey(Integer sid);

   public int updateByPrimaryKeySelective(Synthesis record);

   public int updateByPrimaryKey(Synthesis record);
}
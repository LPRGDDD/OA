package com.lxm.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lxm.entity.Synthesis;

public interface SynthesisService {
	 /**
	    * 添加 外出
	    * @param record
	    * @return
	    */
	   public int insert(Synthesis record);
	   /**
	    * 查询出 systate=1 时的  外出表
	    * @return
	    */
	   public List<Map<String,Object>> selectAll(int id);
	  
	   /**
	    * 根据Sid 查询单条记录  进行修改
	    * @param sId 
	    * @param id 登录人id
	    * @return
	    */
	   public Map<String,Object> selectUpdate(int id,int sId);
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
	   /**
	    * 查看详情 
	    * @param id 申请员工id
	    * @param sId 表的主键
	    * @return
	    */
	   public Map<String,Object> selectXiang(@Param("id")int id,@Param("sId")int sId);
	   /**
	    *通过审批 
	    * @param sid 外出表主键
	    * @return
	    */
	   public int updateState(int sid);
	   /**
	    * 审批后的外出 查询
	    * @param id
	    * @return
	    */
	 //  public List<Map<String,Object>> ShenWaiChu(int id);
	   /**
	    * 审批后的外出 查询
	    * @param id
	    * @return
	    */
	   public List<Map<String,Object>> ShenWaiChu(Map<String,Object> map);
	   /**
	    * 审批后的外出  时间过后 回归
	    * @param sid 
	    * @return
	    */
	   public int WaiChuHuiGui(Map<String,Object> map);
	   /**
	    * 驳回时 修改数据
	    * @param map
	    * @return
	    */
	   public  int BoHuiUpdate(Map<String,Object> map);
	   /**
	    * 添加请假登记
	    * @param sy
	    * @return
	    */
	   public int QingJiaSave(Synthesis sy);
	   /**
	    * 登陆人员 查询 syState=2 请假记录  
	    * @param id denglurenyuanId
	    * @return
	    */
	   public List<Map<String,Object>> QingJiaSel(int id);
	   /**
	    * 登陆人员 查询 syState=3 加班记录
	    * @param id
	    * @return
	    */
	   public List<Map<String,Object>> JiaBanSel(int id);
	   /**
	    *  登陆人员 查询 syState=4 出差记录
	    * @return
	    */
	   public List<Map<String,Object>>  ChuChaiSel(int id);
	   /**
	    * 根据Sid 查询单条记录  进行加班修改
	    * @param sId 
	    * @param id 登录人id
	    * @return
	    */
	   public Map<String,Object> JiaBanUpdate(@Param("id")int id,@Param("sId")int sId);
	   /**
	    * 根据Sid 查询单条记录  进行请假修改
	    * @param sId 
	    * @param id 登录人id
	    * @return
	    */
	   public Map<String,Object> QingJiaUpdate(@Param("id")int id,@Param("sId")int sId);
	   /**
	    * 根据Sid 查询单条记录  进行出差修改
	    * @param sId 
	    * @param id 登录人id
	    * @return
	    */
	   public Map<String,Object> ChuChaiUpdate(@Param("id")int id,@Param("sId")int sId);
	   /**
	    * 修改请假登记记录 
	    * @param sy
	    * @return
	    */
	   public int QingjiaXiu(Synthesis sy);
	   /**
	    * 请假详情
	    * @param sId 
	    * @param id 登录人id
	    * @return
	    */
	   public Map<String,Object> selectUpdateQing(@Param("id")int id,@Param("sId")int sId);
	   /**
	    * 请假 审批后查询  已回归查询
	    * @param id
	    * @return
	    */
	   public List<Map<String,Object>> ShenQing(int id);
	   /**
	    * 加班 审批后查询  已回归查询
	    * @param id
	    * @return
	    */
	   public List<Map<String,Object>> ShenJia(int id);
	   /**
	    * 添加出差登记记录
	    * @param sy
	    * @return
	    */
	   public int JiaBanSave(Synthesis sy);
	   /**
	    * 修改出差登记记录
	    * @param sy
	    * @return
	    */
	   public int ChuChaiXiu(Synthesis sy);
	   /**
	    * 出差 审批后查询  已回归查询
	    * @param id
	    * @return
	    */
	   public List<Map<String,Object>> ShenChuChai(int id);
}

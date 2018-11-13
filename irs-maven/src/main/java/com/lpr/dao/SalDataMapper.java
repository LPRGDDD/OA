package com.lpr.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.lpr.entity.SalData;
import com.lpr.entity.SalaDataSearch;
/**
 * ���������е��ϱ����ݱ�
 * @author ����Ȼ
 *
 */
public interface SalDataMapper {
	/**
	 * ���ݹ����ϱ����ɾ��
	 * @param salDataId�����ϱ����
	 * @return
	 */
    int deleteByPrimaryKey(Integer salDataId);
    /**
     * ���������е��ϱ����ݱ����
     * @param record
     * @return
     */
    int insert(SalData record);
    /**
     * ���������е��ϱ����ݱ��޸�
     * @param record
     * @return
     */
    int updateByPrimaryKey(SalData record);
    /**
     * ����״̬��1,0�����з�ҳ��ѯ
     * @param keyWord
     * @param userName
     * @returnssss
     */
    public List<Map> findByStatus();
    public List<Map> findByStatus1();
    /**
     * ����UID��sid��ѯ����
     * @param id
     * @param pid
     * @return
     */
    public int findById(@Param("id")long id,@Param("pid") Integer pid);
    public int countxc(@Param("id")int id,@Param("uid")long uid);
    /**
     * �������̱�id��ѯ
     * @param sid
     * @return
     */
    public List<Map> findBySalaryFlowId(@Param("sid") int sid,@Param("nickname") String nickname,@Param("deptId") Integer deptId,@Param("start") Integer start,@Param("end") Integer end);
}
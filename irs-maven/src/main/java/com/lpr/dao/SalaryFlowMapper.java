package com.lpr.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lpr.entity.SalaryFlow;
/**
 * н������еĹ������̱�
 * @author ����Ȼ
 *
 */
public interface SalaryFlowMapper {
	/**
	 * ���ݹ������̱��ɾ��
	 * @param salaryflowId�������̱��
	 * @return
	 */
    int deleteByPrimaryKey(Integer salaryflowId);
    /**
     * ���ݹ������̱����ӣ��½��������̣�
     * @param record�������̱��
     * @return
     */
    int insert(SalaryFlow sa);
    /**
     * н������еĹ������̱����
     * @param record
     * @return
     */
    int insertSelective(SalaryFlow record);
    /**
     * ���ݹ������̱��ѯ���޸�֮ǰ�Ĳ�ѯ
     * @param salaryflowId�������̱��
     * @return
     */
    SalaryFlow selectByPrimaryKey(Integer salaryflowId);
    /**
     * н������еĹ������̱��޸�
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(SalaryFlow record);
    /**
     * н������еĹ������̱��޸�
     * @param record
     * @return
     */
    int updateByPrimaryKey(SalaryFlow record);
    /**
     * н������еĹ������̱�Ĳ�ѯ
     * 
     * 
     * @param map
     * @return
     */
    public List<Map> findAll(@Param("keyWord") String keyWord,@Param("userName")String userName);
    /**
     * н������й������̵ı༭
     * @param salaryflow
     * @return
     */
    public int update(SalaryFlow salaryflow);
    /**
     * ���ݹ������̱��ɾ��
     * @param salaryflowId�������̱��
     * @return
     */
    public int delete(int salaryflowId);
    /**
     * ���ݱ��id��ѯ
     * @param id
     * @return
     */
    public SalaryFlow findById(@Param("id") int id);
    /**
     * �޸�״̬
     * @param s
     * @return
     */
    public int setXcStatus0(SalaryFlow s);
    public int setXcStatus1(SalaryFlow s);
}
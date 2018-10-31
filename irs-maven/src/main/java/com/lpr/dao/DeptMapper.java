package com.lpr.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lpr.entity.Dept;

public interface DeptMapper {
	/**
	 * ���ݲ��ű��ɾ��
	 * @param deptId���ű��
	 * @return
	 */
    int deleteByPrimaryKey(Integer deptId);
    /**
     * ���ű�����
     * @param record
     * @return
     */
    int insert(Dept record);
    /**
     * ���ű�����
     * @param record
     * @return
     */
    int insertSelective(Dept record);
    /**
     * ���ݲ��ű�Ų�ѯ
     * @param deptId���ű��
     * @return
     */
    Dept selectByPrimaryKey(Integer deptId);
    /**
     * ���ű���޸�
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Dept record);
    /**
     * ���ű���޸�
     * @param record
     * @return
     */
    int updateByPrimaryKey(Dept record);
    /**
     * ���ű��ȫ����ѯ
     * @return
     */
    public List<Map<String, Object>> findAll();
    /**
     * ���ݲ��ű�Ž��з�ҳ��ѯ
     * @param deptId
     * @return
     */
    public List<Map> findUser(@Param("deptId") Integer deptId);
}
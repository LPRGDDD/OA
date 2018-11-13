package com.lxm.dao;

import java.util.List;
import java.util.Map;

import com.lxm.entity.Examination;

public interface ExaminationMapper {
	/**
	 * ������������
	 * @param record ���������
	 * @return
	 */
    public int insert(Examination record);
/**
 * ��ѯ���������
 * @return
 */
    public List<Map<String,Object>> selectByPrimaryKey();
    /**
     * 
     * @param id ����Id��ѯһ����������
     * @return
     */
    public Examination selectById(int id);
    /**
     * �޸�
     * @param e
     * @return
     */
    public int update(Examination e);
    /**
     * ɾ��
     * @param id
     * @return
     */
    public int delete(int id);
    
    
}
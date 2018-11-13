package com.lxm.service;

import java.util.List;
import java.util.Map;

import com.lxm.entity.Examination;

public interface ExaminationService {
	 public int insert(Examination record);
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
